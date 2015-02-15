# Create the PostgreSQL database and user

First connect to the PostgreSQL console with the PostgreSQL password. The password for the "postgres" role on the Vagrant box is `password`.

```bash
$ psql -U postgres -h localhost
Password for user postgres: <enter the password>
postgres=#
```

Next, create a database, create a role with login rights and a password, and assign the newly created role as the owner of the database.

```SQL
> create database "learn_rails_auth_development";
> create role "learn_rails_auth" with login password 'password';
> alter database "learn_rails_auth_development" owner to "learn_rails_auth";
> \q
```

Alternatively, you can break up the role creation:

```SQL
> create role "learn_rails_auth";
> alter role "learn_rails_auth" with  password 'password';
> alter role "learn_rails_auth" with login;
```

To connect to the database from the rails app folder run:

```bash
rails dbconsole
```

