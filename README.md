mcp-junkies-lua
===============

Code examples from talk at [MoCo Programming Language Junkies Meetup](http://www.meetup.com/mcpjunkies/)

### Converting Asynchronous Code to Synchronous Code with Embedded Lua


Lua is a portable, lightweight programming language that is easy to use as an embedded scripting language in C programs.  It has all the features you would expect in a modern scripting language (garbage collection, dynamic typing, first class functions,  built-in associative arrays). In addition, Lua supports cooperative multitasking through coroutines and a simple exception mechanism that can be used to greatly simplify scripts in asynchronous systems.
We will give a brief introduction to the Lua language, explain the interface between C/C++ and Lua and show an example of using Lua scripts to convert asynchronous event based C++ code and turn it into simple straight line Lua using coroutines.
