# Line Up Generator
Problem Statement:  
Workers that are getting paid $19.50 - $27 (MA) an hour to make line up manually. Each line up takes 10-30 mins to complete. Without mentioning the cost of training these workers that would cost the company $4914 per year given that the highest paid supervisor took 30 minutes to create each lineup for the week.

State wide, it would cost $157,248 - given each location was had the same type of worker with the same wage - it would save wholefoods as a company 2.6 million a year of labor cost.

## User Types

Team Members
- CA
- Cashier
- SCO Attendents

Leadership
- Booth
- Leadership
- Supervisors

Misc
- Housekeeping
- Sign Making


## Data Exploration

Input

|  |  |  |  | Paid | Meal | Paid | Meal | Paid | Shift | TM |  |  |  |
|---|---|---|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|---|---|---|
| Job | Reg # | TM Name | Shift | Break | Break | Break | Break | Break | Label | Initial | Notes |  |  |

Output

| Customer Service |  |  |  | Paid | Meal | Paid | Shift |
|---|---|---|---|:---:|:---:|:---:|:---:|
| Job | Reg # | TM Name | Shift  | Break | Break | Break | End |

## Features

Input:   
- Break Rules for TMs  
    - Based on break state accordance  
    - Not having people leaving the floor for more than 2 or max three if possible (unless leaving)
- Ordered Preferences
- Full Time Priority
- Input excel sheet  
 
Features
- Create Worker Preference
- Create break
- Create break cards
- Create SCO and Cart Hours
- Format excel doc visually

Misc
- auth0

Output 
- Excel sheet


## Quick Start To Set Up Dev
```bash
cd wfm_scheduler

# install dependencies
pip install -r requirements.txt

# start python virtual env
.venv\Scripts\activate

# initiate the db
.\init_db.sh

# start dev server
.\dev.sh

# run tests
.\test.sh

```