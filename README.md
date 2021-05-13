# Sample RoR Application

In the application Admin user can generate secret codes. And normal user can signup with the scret codes.

Role Types -> Admin, User
Functionality 
  -> Generaate Secret Code By Admin
  -> Signup User with Secret Code

## Technology Used

The setups steps expect following tools installed on the system.

- Ruby [2.5.5]
- Rails [4.2.0]

## Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rake db:create
bundle exec rake db:setup
```

## 2. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

And now you can visit the site with the URL <http://localhost:3000>
