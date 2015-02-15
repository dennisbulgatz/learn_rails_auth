[Authentication from Scratch](http://railscasts.com/episodes/250-authentication-from-scratch)

```bash
$ rails g controller users new
$ rails g model user email:string password_hash:string password_salt:string
$ rake db:migrate
$ rails dbconsole
$ rails g controller sessions new
```

Gemfile

```ruby
gem "bcrypt-ruby", :require => "bcrypt"
gem 'foundation-rails'
```

For CSS

```bash
rails g foundation:install
```

[Foundation for Rails](http://foundation.zurb.com/docs/applications.html)

If you're planning on using Sass, then you'll want to rename `application.css` to `application.scss`. That file should then look like:

```css
@import "foundation_and_overrides"; /* Add imports of custom sass/scss files here */
```