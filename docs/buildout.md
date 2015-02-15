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
```