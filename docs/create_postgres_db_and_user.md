```bash
$ psql -U postgres -h localhost
Password for user postgres:
```

Password is "password"

```SQL
> create database "learn_rails_auth_development";
> create role "learn_rails_auth";
> alter database "learn_rails_auth_development" owner to "learn_rails_auth";
> alter role "learn_rails_auth" with  password 'password';
> alter role "learn_rails_auth" with login;
> \q 
```

```bash
rails dbconsole
```

