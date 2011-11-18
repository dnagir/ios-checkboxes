ios-checkboxes
========================================

This project allow you to easily use iPhone style checkboxes in a Rails 3.1 application.

Install
========================================


Usage
========================================

Add `//=require ios-checkboxes` to your `app/assets/javascripts/application.js`.

Then create a file `app/assets/stylesheets/ios-checkboxes.css.sass` (or just open an existing `.sass` file)
and add the following:

```
@import "ios-checkboxes"
+iphone-style-defaults
```

This will import all the default styling for the iOS checkboxes.
You may choose not to use it and write the styling from scratch. In that case just skip this step.


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
