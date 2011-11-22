ios-checkboxes
========================================

This project allows you to easily use iPhone style checkboxes in a Rails 3.1 application.

Install
========================================

Add `gem 'ios-checkboxes'` to your Gemfile and run `bundle install`


Using with Rails 3.1
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

Using as a standalone
========================================

Go to the `build/output` directory and download its content.
Put it content under your server root.
Make sure you reference the JavaScript and CSS files properly.

Don't reference it as 'assets/ios-checkboxes.js', instead use the full file name from the download
(it will change with time): `assets/ios-checkboxes-d0bbaf0b834d61ddccf7510739596dd2.js`

The same applies to CSS, but you don't need to do anything for images.

The use of the "digest" appended to the end of file ensures that your users will have the most recent version of the files (cashe buster).


Customisation
========================================

Basic
----------------------------------------

If the defaut stylesheet doesn't fit your design, you can customize it.

Add a `.css.sass` file to your application and requer it.
The basic example may look like this:

```sass
// app/assets/stylesheets/iphone.css.sass
@import "ios-checkboxes/mixins"

// This will change the defaults for everything
$iphone-style-height: 33px // Default = 27px
$iphone-style-font-size: 30px // Default = 17px
$iphone-style-images-path: 'custom-path-to-images' // Default = ios-checkboxes

+iphone-style // This includes the actual styles with customised values

// You can also override the styles for sub-selectors
.huge
  $iphone-style-height: 60px
  $iphone-style-font-size: 40px
  $iphone-style-images-path: 'hude-images'
  +iphone-style
```


If you modify the `$iphone-style-images-path` then you have to provide a (Sprockets) directory with the following files:

```
off.png
on.png
slider.png
slider_center.png
slider_left.png
slider_right.png
```

Advanced
----------------------------------------

If overriding existing variables doesn't work for you and you don't want to write everything from scratch,
then you can customise using the hooks provided.
For example, this creates the iOS 5 On/Off buttons (round ones) and uses no images whatsoever.

```sass
@import "compass/css3/images"
@import "compass/css3/border-radius"
@import "compass/css3/box-shadow"
@import "ios-checkboxes/mixins"


// Override the ios-checboxes defaults
// Empty string disables the property (can't be applied to height)
$iphone-style-font: ''
$iphone-style-height: 1.8em
$iphone-style-font-size: ''
$iphone-style-images-path: ''

// Define additional variables
$onoff-active: #136785
$onoff-active-alt: #1c94bf
$onoff-back: #bfbfbf

$onoff-radius: $iphone-style-height / 2

=iphone-style-visual-container
  width: 6 * $onoff-radius
  // We add borders inside, so need to increse the padding
  padding: 1px


=iphone-style-label
  +border-radius($onoff-radius)
  text-align: center
  text-transform: uppercase

=iphone-style-label-on
  left: 0
  padding-right: $onoff-radius
  border: 1px solid $onoff-active
  color: white
  background: $onoff-active
  +background-image(linear-gradient(top, $onoff-active, $onoff-active-alt))
  +box-shadow($onoff-back 0 0 2px inset)
  // Don't squeeze the On button too much to make sure the handle overlaps fully with it
  // this way it can interset with handler
  min-width: $onoff-radius*0.9
    

=iphone-style-label-off
  left: $onoff-radius
  margin-left: -$onoff-radius
  text-align: right
  border: 1px solid $onoff-back
  color: #666666
  background: $onoff-back
  +background-image(linear-gradient(top, $onoff-back, white))
  span
    padding-right: $onoff-radius


=iphone-style-visual-handle
  width: $onoff-radius * 2
  height: $onoff-radius * 2
  +border-radius($onoff-radius)
  background: $onoff-back
  border: 1px solid $onoff-back
  +background-image(linear-gradient(top, $onoff-back, white))

// Additional hooks that you can override are:
// =iphone-style-visual-handle-right
// =iphone-style-visual-handle-center


// And finally emit the stylesheet
+iphone-style
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

To build the standalone assets: `sh build/build.sh`.

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
