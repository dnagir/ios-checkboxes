ios-checkboxes
========================================

This project allows you to easily use iPhone style checkboxes in a Rails 3.1 application.

Install
========================================

Add `gem 'ios-checkboxes'` to your Gemfile and run `bundle install`


Usage
========================================

Add `//=require ios-checkboxes` to your `app/assets/javascripts/application.js`.
This will require `jquery` automaticaly.

Also make sure you add the stylesheets to your `application.css`.
Just `require ios-checkboxes` to get the default styling.

You may choose not to use it and write the styling from scratch. In that case just don't add the iox-checkboxes to the stylesheet manifest.


After you have all the ingridients in place you can convert your checkboxes into "On/Off" buttons
with this JavaScript snippet:

```javascript
$(function(){
  $("input:checkbox").iphoneStyle();
});
```

Development
========================================

```bash
git clone git@github.com:dnagir/ios-checkboxes.git
cd ios-checkboxes
bundle install
bundle rspec spec
(cd spec/dummy/ && bundle exec rails s)
# Now go to http://localhost:3000/jasmine to run the specs
```

Help
========================================

- Report issues on [Github](https://github.com/dnagir/ios-checkboxes/issues).
- Shout at me in Twitter - [@dnagir](http://twitter.com/dnagir)


Credits
========================================

[Thomas Reynolds](https://github.com/tdreyno) for the original [implementation](https://github.com/tdreyno/iphone-style-checkboxes).


License (MIT)
========================================

Copyright 2011 Thomas Reynolds, Dmytrii Nagirniak

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
