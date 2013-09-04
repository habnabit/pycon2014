- postmodern twisted: stream protocol parsing without subclassing

  - yes, there is such a thing as modern twisted

    - endpoints

      - HostnameEndpoint!

    - deferred cancellation
    - Agent
    - react

  - but you still have to subclass things to define your own protocol

    - even AMP requires subclassing

  - enter parsley.makeProtocol

    - you give it a sender and a receiver and it's like magic
    - netstrings demonstration

      - defining a thing to parse netstrings is super easy.
      - a basic sender/receiver to parse netstrings and echo them back

    - okay, but this isn't extensible

      - for netstrings, it's okay--almost everything is in the grammar and
        sender. you can define a receiver to do whatever.
      - but what about netstrings2?

    - so stack things!

      - netstring
