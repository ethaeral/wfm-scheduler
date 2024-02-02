DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE post (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES user (id)
);


/*
TABLE USERS {
  id integer [primary key]
  name varchar [not null]
  store_id integer
}

TABLE CONFIGS {
  id integer [primary key]
  max_floor integer [not null]
  min_floor integer [not null]
  busy_hrs "int[]"
  hrs_unpaid integer [not null]
  hrs_paid integer [default: 6]
}

TABLE USERS_CONFIGS {
  id integer [primary key]
  user_id integer [not null]
  config_id interger [not null]
}

TABLE STORES {
  id integer [primary key]
  abbrv varchar [not null]
  region varchar [not null]
}

TABLE EMPLOYEES {
  id integer [primary key]
  preferred_name varchar 
  system_name varchar [not null]
  full_time bool [not null]
  store_id integer [not null]
}

TABLE PREFERENCES {
  employee_id integer [primary key]
  bagger interger [default: 0]
  sco interger [default: 0]
  cashier interger [default: 0]
  carts interger [default: 0]
  two_paid_breaks bool [default: false]
}

TABLE ROLES {
  employee_id integer [primary key]
  team_member bool [default: false]
  supervisor bool [default: false]
  leadership bool [default: false]
  housekeeping bool [default: false]
  sign_making bool [default: false]
}

Ref: USERS_CONFIGS.user_id > USERS.id
Ref: USERS_CONFIGS.config_id - CONFIGS.id
Ref: USERS.store_id - STORES.id
Ref: EMPLOYEES.store_id - STORES.id
Ref: PREFERENCES.employee_id - EMPLOYEES.id
Ref: ROLES.employee_id - EMPLOYEES.id



*/