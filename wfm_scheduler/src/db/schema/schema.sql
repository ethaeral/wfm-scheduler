DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

TABLE STORES (
  id integer [primary key],
  abbrv varchar [not null],
);

CREATE TABLE USERS (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  store_id INTEGER,
  FOREIGN KEY(store_id) REFERENCES STORES(id)
);

CREATE TABLE CONFIGS (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  max_floor INTEGER NOT NULL,
  min_floor INTEGER NOT NULL,
  open_hrs INTEGER NOT NULL,
  close_hr INTEGER NOT NULL,
  hrs_unpaid INTEGER DEFAULT 4 NOT NULL,
  hrs_paid INTEGER DEFAULT 6 NOT NULL,
  traffic_hrs_id INTEGER,
  FOREIGN KEY(traffic_hrs_id) REFERENCES HIGH_TRAFFIC_HOURS(id)
)

CREATE TABLE HIGH_TRAFFIC_HOURS (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  00_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  01_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  02_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  03_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  04_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  05_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  06_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  07_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  08_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  09_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  10_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  11_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  12_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  13_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  14_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  15_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  16_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  17_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  18_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  19_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  20_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  21_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  22_HOUR BOOLEAN DEFAULT 0 NOT NULL,
  23_HOUR BOOLEAN DEFAULT 0 NOT NULL,
)



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