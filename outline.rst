- postmodern networking: stream protocol parsing without subclassing

    - yes, there is such a thing as modern networking

        - tulip

            - all new; similar to twisted

        - twisted

            - endpoints

                - HostnameEndpoint!

            - deferred cancellation
            - Agent
            - react
            - these have all been added in the last few years and are all better in
              basically every case (or are at least more flexible) than the
              previous solutions

    - but you still have to subclass things to define your own protocol

        - even AMP requires subclassing
        - even *tulip* requires subclassing

    - enter parsley.makeProtocol

        - you give it a sender and a receiver and it's like magic
        - shoutout to introom

            - introom helped tremendously by working on porting a number of
              protocols in twisted to using parsley, and is responsible for
              making this a really great interface instead of just a kind of
              okay one

    - netstrings demonstration

        - defining a thing to parse netstrings is super easy.
        - a basic sender/receiver to parse netstrings and echo them back

    - okay, but this isn't extensible

        - for netstrings, it's okay--almost everything is in the grammar and
          sender. you can define a receiver to do whatever.
        - but what about netstrings2?

    - netstrings2 example

        - this has to keep track of state
        - so make a basic receiver that does the state tracking and calls a
          method
        - but how do you get something *else* receiving the method call

    - stack things!

        - stacking is a simple convenience layer on top of composition
        - it's totally not necessary, but then you don't have to write ``lambda
          x: f(g(x))``

    - okay, but what about parsing something more complicated?
    - case study: SOCKS5

        - SOCKS5 isn't that complicated; there's a couple of branch points but
          nothing too bad.
        - a lot of it can be done in the grammar

    - so, what about something *even more* complicated?
    - case study: irc

        - irc is fundamentally simple: incoming messages are all the same shape
        - however, there's lots of layers you can put on top of it

    - so, what are the layers that can be stacked here

        - simplest possible: dispatching based on the name of the incoming
          command
        - except you probably want something that'll do the signin dance for you
        - and something that responds to PING
        - and something that makes a nicer interface than having to deal with
          overriding ``irc_PART``.
        - and something that does CTCP dispatch
        - etc.

    - stacking saves the day again

        - you can define your own behavior (without subclassing!) and then mix
          in the additional wanted behavior

    - just how bad is subclassing, anyway? since that's in the talk title and
        all.

        - say you want to add a layer that modifies some method calls between
          stacked layers
        - with subclassing, it's impossible without making a *different* method
          name and using that instead.
        - additionally, the subclassing model conflates incoming event methods
          and outgoing message methods
        - ``msg`` and ``privmsg``--which one is which?

    - okay, but what about sharing state betwen levels?

        - easiest method: don't. sometimes you can get away with this. not
          really a general-case solution though
        - make the bottom-most thing keep track of state

            - the bottom-most thing needs to exist anyway, to catch all of the
              nice-interface events that nothing else does
            - give it a ``state`` attribute
            - since everything is proxied downward anyway, everything can do
              ``self.state.nickname`` easily
            - the state can even be handed off to the sender
