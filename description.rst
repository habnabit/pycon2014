==================================================================
Postmodern Networking: Stream protocol parsing without subclassing
==================================================================


Objectives
==========

Most importantly, show attendees how they can benefit from using Parsley to
easily parse stream protocols. Give attendees an idea of how to use Parsley to
create stream protocol implementations with Twisted or tulip by walking through
working examples of netstrings, SOCKS5, and IRC.


Description
===========

Parsing stream protocols, especially in an asynchronous context, can get quite
tedious: handling things like framing and buffering results in a lot of
boilerplate for each new protocol. Parsley, a parser generator, now has Twisted
(and soon, tulip) integration which makes writing stream protocol parsers
simple and exposing extensible interfaces (for e.g. libraries) even simpler.


Detailed Abstract
=================

Networking is a perpetually evolving subject within Python; new idioms,
techniques, and libraries frequently emerge. However, almost every interface
for extending existing protocols requires subclassing--even newer protocol
implementations like AMP and newer libraries like tulip. Parsley's new Twisted
(and soon, tulip) integration makes writing implementations of stream protocols
trivial and additional tools in Parsley simplify extension of these
implementations via composition instead of requiring inheritance.

This talk will give an overview of the basics of parsing a stream protocol
using Parsley and how to expose an extensible interface on top. As examples of
more involved interfaces, this talk will also explain the techniques used in
implementations of SOCKS5 and IRC.


Outline
=======

.. include:: outline.rst


Additional Notes
================

If accepted, it would probably be good to not put this talk alongside other
networking or parsing talks!


Additional Requirements
=======================
