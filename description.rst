===============================================================
Postmodern Twisted: Stream protocol parsing without subclassing
===============================================================


Objectives
==========

The most basic objective of the talk is to show the attendees that it doesn't
have to be so hard to parse stream protocols. It's unlikely that 30 or 45
minutes would be enough to explain the topic in sufficient detail to everyone,
though an attentive and excited attendee could likely come away with this
knowledge.

Ideally, attendees will come away understanding the basics of how to parse a
stream protocol using Parsley and how to build either an application- or
library-level interface on top. In the case of library-level interfaces,
attendees will ideally also come away knowing how to make an extensible
interface that doesn't require subclassing from the library's user.


Description
===========

Parsing stream protocols, especially in an asynchronous context, can get quite
tedious: handling things like framing and buffering results in a lot of
boilerplate for each new protocol. Parsley, a parser generator, now has Twisted
integration which makes writing stream protocol parsers simple and exposing
extensible interfaces (for e.g. libraries) even simpler.


Detailed Abstract
=================

Twisted is a perpetually evolving library; new idioms for common tasks
frequently emerge. However, almost every interface for extending existing
protocols requires subclassing--even newer protocol implementations like AMP.
Parsley's new Twisted integration makes writing implementations of stream
protocols trivial. Additional tools in Parsley simplify extension of these
implementations using composition (instead of requiring inheritance!).

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
Twisted or networking talks!


Additional Requirements
=======================
