ios-checkboxes
========================================

This project allow you to easily use iPhone style checkboxes in a Rails 3.1 application.

Install
========================================


Usage
========================================

Add `//=require ios-checkboxes` to your `app/assets/javascripts/application.js`.
This will require jquery automaticaly, so make sure you gem `jquery-rails` in the Gemfile.

Also make sure you add the stylesheets to your `application.css`.
Just `require ios-checkboxes` to get the default styling.

You may choose not to use it and write the styling from scratch. In that case just don't add the iox-checkboxes to the stylesheet manifest.


After you have all the ingridients in place you can convert your checkboxes into "On/Off" buttons
with this JavaScript snipper:

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
bundle exec rails s
# Now go to http://localhost:3000/jasmine to run the specs
```

Help
========================================

- Report issues on [Github](https://github.com/dnagir/ios-checkboxes/issues).
- Shout at me in Twitter - [@dnagir](http://twitter.com/dangir)


Credits
========================================

[Thomas Reynolds](https://github.com/tdreyno) for the original [implementation](https://github.com/tdreyno/iphone-style-checkboxes).


License
========================================

This project rocks and uses MIT-LICENSE.
