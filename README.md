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