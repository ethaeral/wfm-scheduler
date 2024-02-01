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
USERS
id 
name

CONFIG 
id 
max_floor
min_floor
hrs_unpaid
hrs_paid

USERS_CONFIG
id
user_id fk
config_id fk

STORE
id
abbrv
region

USERS_STORE
id
user_id fk
store_id fk

EMPLOYEES
id
preferred_name
system_name
full_time

TEAMS
id
store_id fk
team_member_id fk

PREFERENCE (preference will range from negative to 0 through positive, negative entries will be seen as restrictions)
id 
bagger
sco
cashier
carts
two_paid_breaks

EMPLOYEE_PREFERENCE
id
employee_id fk
preference_id

ROLES
id 
team_member
supervisor
leadership
housekeeping
sign_making

EMPLOYEE_ROLES
id
role_id fk
employee fk


*/