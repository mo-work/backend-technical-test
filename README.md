# ThanksBox Backend Technical Test

## Setup

```
bundle
rspec
shotgun
```

## Test Process

1. Clone this repo `git clone git@github.com:MerlinBB/ThanksBox-backend-technical-test.git`
2. Move into folder `cd ThanksBox-backend-technical-test.git`
3. Remove git history `rm -rf !$/.git`
4. Initial a fresh repo `git init`
5. Solve the below tasks, committing as you go
6. Bundle the end result `git bundle create merlin.bundle master`

## Tasks

There are some failing tests :(

Try to fix all or as many as you can within two hours. Aim to demonstrate your knowledge of Ruby, Sinatra and MongoDB.

1. Scopes: Modify the `User.by_email` scope to allow wildcard search.
2. Data: Complete the method `Thank.stats_messages_sent` which should return all sent messages grouped by an entity.
3. API: Post a message to another user. (User authentication is simplified.)
