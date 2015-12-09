# NoCMS Constrained Views

## What's this?

This is a simple Rails engine that allows to attach to a model a series of containers of customizable blocks (from [nocms-blocks](https://github.com/simplelogica/nocms-blocks)) constrainable using a non-closed set of constraining conditions.

The use case is the following:

> We have a product that must show very different information to the user depending on the user's country and age.

With this engine we can define that the `Product` model have different views depending on conutries and ages and that every view have different blocks attached.

