JqueryNotifyBar
=========

This is a simple ruby gem to include jquery.nofityBar from [Dmitri Smirnov] to your rails app.

jquery.notifyBar is a twitter like notification bar.

With this gem, all your flash messages will be showed in the nofity bar. Visit the [demo page] on Dmitri's website

Installation
============

In your gem file add:


  gem 'jquery_notify_bar'


Usage
=====

You just need add to helper in your layout page.

The first one you need put in your head section. It will include the required css and javascripts files.


  <%= include_jquery_notify_bar %>


the seconde helper is to show the messages, you just need put it in your body


  <%= jquery_notify_bar %>


This gem was inspired in the [notify_bar] by [İ. Emre Kutlu]

Copyright (c) 2011 [Jose Carlos Ustra Junior], released under the MIT license

[Dmitri Smirnov]: http://github.com/dknight/jQuery-Notify-bar
[demo page]: http://www.dmitri.me/misc/notify/
[notify_bar]: https://github.com/emrekutlu/notify_bar
[İ. Emre Kutlu]: https://github.com/emrekutlu
[Jose Carlos Ustra Junior]: http://ustrajunior.com