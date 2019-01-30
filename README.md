bundle

### To set up the database

Connect to `psql` and create the `bookmark_manager` and `bookmark_manager_test` databases:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

To set up each appropriate tables, connect to the database in `psql` and run the SQL scripts in the 'db/migrations' folder in the given order.

### To run the Bookmark Manager app:

```
rackup -p 3000
```

To view bookmarks, navigate to 'localhost:3000/bookmarks'.

### To run tests:

```
rspec
```

### To run linting:

```
rubocop
```

### Bookmark manager list of specifications.

  - Show a list of bookmarks
  - Add new bookmarks
  - Delete bookmarks
  - Update bookmarks
  - Comment on bookmarks
  - Tag bookmarks into categories
  - Filter bookmarks by tag
  - Users manage their bookmarks

   User story 1 and diagram.
```
  As a time-pressed user
  So that I can quickly go to web sites I regularly visit
  I would like to see a list of bookmarks
```

```
  ┌──────┐          ┌──────────┐          ┌─────┐          ┌────┐
  │Client│          │Controller│          │Model│          │View│
  └──┬───┘          └────┬─────┘          └──┬──┘          └─┬──┘
     │    get-request    │                   │               │
     │ ──────────────────>                   │               │
     │                   │                   │               │
     │                   │       .all        │               │
     │                   │ ─────────────────>│               │
     │                   │                   │               │
     │                   │    [bookmarks]    │               │
     │                   │ <─────────────────│               │
     │                   │                   │               │
     │                   │            [bookmarks]            │
     │                   │ ──────────────────────────────────>
     │                   │                   │               │
     │                   │                html               │
     │                   │ <──────────────────────────────────
     │                   │                   │               │
     │      response     │                   │               │
     │ <──────────────────                   │               │
  ┌──┴───┐          ┌────┴─────┐          ┌──┴──┐          ┌─┴──┐
  │Client│          │Controller│          │Model│          │View│
  └──────┘          └──────────┘          └─────┘          └────┘
  ```
