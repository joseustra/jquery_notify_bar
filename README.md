#JqueryNotifyBar

This is a simple ruby gem to include jquery.nofityBar from [Dmitri Smirnov](http://github.com/dknight/jQuery-Notify-bar) to your rails app.

jquery.notifyBar is a twitter like notification bar.

With this gem, all your flash messages will be showed in the nofity bar.

## Installation

In your gem file add:

```ruby
gem 'jquery_notify_bar'
```

## Usage

### Rails 3.0
	
Add this files to your javascripts and stylesheets folders
```
https://raw.github.com/ustrajunior/jquery_notify_bar/master/app/assets/javascripts/jquery.notify_bar.js
https://raw.github.com/ustrajunior/jquery_notify_bar/master/app/assets/stylesheets/jquery.notify_bar.css
```

in the head section of your application.html.erb add this helper
	
```rhtml
<%= jquery_notify_bar_assets %>
```

### Rails 3.1
On your application.js add

```
//= require jquery.notify_bar
```
	
On your application.css add

```
*= require jquery.notify_bar
```

### In your application.html.erb
Add the helper to show the flash message. Remember to add after `<%= javascript_include_tag "application" %>`, because it depends on the jQuery plugin.

```rhtml
<%= jquery_notify_bar(flash) %>
```

### Parameters

You can pass options too:

```
:cls => :success 
:animation_speed => 'normal'
:delay => 2000
```

or all at the same time

```rhtml
<%= jquery_notify_bar(flash, :cls => :success, :animation_speed => 'normal', :delay => 2000) %>
```

## TODO ##

* write rspec and jasmine tests
* improve the css

## Maintainer ##

* José Carlos Ustra Júnior (http://ustrajunior.com)

## License ##

(The MIT License)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
