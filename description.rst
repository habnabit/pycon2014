===============================================================
Postmodern Twisted: Stream protocol parsing without subclassing
===============================================================


Description
===========

Parsing stream protocols, especially in an asynchronous context, can get quite
tedious: handling things like framing and buffering results in a lot of
boilerplate for each new protocol. Parsley's new stream protocol support makes
writing stream protocol parsers simple and exposing extensible interfaces (for
e.g. libraries) even simpler.


Objectives
==========

Attendees should come away understanding the basics of how to parse a stream
protocol using Parsley and how to build either an application- or library-level
interface on top. In the case of library-level interfaces, attendees should
also come away knowing how to make an extensible interface that doesn't require
subclassing from the library's user.


Detailed Abstract
=================


Outline
=======

.. include:: outline.rst


Additional Notes
================

If accepted, it would probably be good to not put this talk alongside other
Twisted or networking talks!


Additional Requirements
=======================
