Slabs for Rails Asset Pipeline
=======

[Slabs](http://github.com/Boltech/slabs/) is an amazing extension for [Bootstrap](http://github.com/twbs/bootstrap), ready to help developers to create websites.

The slabs gem integrates the Slabs Framework for Rails 4+ Asset Pipeline.

## Installation

`slabs` is easy to drop into Rails with the asset pipeline.

In your Gemfile you need to add the `bootstrap-sass gem`, `slabs-rails` gem, and ensure that the `sass-rails` gem is present - it is added to new Rails applications by default.

```ruby
gem 'bootstrap-sass', '~> 3.3.6'
gem 'slabs-rails'
gem 'sass-rails', '>= 3.2'
```

`bundle install` and restart your server to make the files available through the pipeline.

## Usage

Import Bootstrap and Bolt Framework into a Sass file (for example, `application.scss`) to get all the styles, mixins and variables!

```scss
// "bootstrap-sprockets" must be imported before "bootstrap" and "bootstrap/variables"
@import "bootstrap-sprockets";
@import "bootstrap";
@import "slabs";
```

Make sure the file has .scss extension (or .sass for Sass syntax). If you have just generated a new Rails app, it may come with a .css file instead. If this file exists, it will be served instead of Sass, so rename it:

```
$ mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss
```

  Then, remove all the `*= require_self` and `*= require_tree` . statements from the sass file. Instead, use `@import` to import Sass files.

Do not use `*= require` in Sass or your other stylesheets will not be able to access the Bootstrap mixins or variables.

Require Bootstrap Javascripts in `app/assets/javascripts/application.js:`


```
//= require jquery
//= require bootstrap
//= require slabs
```

`bootstrap-sprockets` and `bootstrap` should not both be included in `application.js`.

`bootstrap-sprockets` provides individual Bootstrap Javascript files (alert.js or dropdown.js, for example), while `bootstrap` provides a concatenated file containing all Bootstrap Javascripts.

`slabs-sprockets` provides individual Slabs Javascript files (headers.js or components.js, for example), while `slabs` provides a concatenated file containing all Slabs Javascripts.

## Credits

<!-- feel free to make these link wherever you wish -->
* [Jorge Najera](https://twitter.com/JNajera)
