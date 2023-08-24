- time - datetime
- duration - datetime
- room - string
- building - string

```sql
DEFINE TABLE routine SCHEMAFULL;

Define field time on routine type number
assert $value != none and $value >= 8 and $value<=17;

Define field duration on routine type string 
assert $value inside ['1hr','2hr', 3hr];

Define field room on routine type string
assert $value != none; 

Define field building on routine type string
assert $value != none; 



create routine content {
    time: 9,
    duration: '1hr',
    room: 'G-2',
    building: 'IICT'
};

create routine content {
    time: 10,
    duration: '2hr',
    room: '304',
    building: 'IICT'
};
```

### Relate a course with a routine
```sql 
relate course:CSE222->follows->(select id from routine where time = 9 and ) set day = 'Sunday', year='2023'
```

### find a routine of a specfic day of a year of a course
```sql
select course_code as code,
<-(offers where year=2019 and semester=12)<-teaches<-teacher.name as name,
->(follows where day='Sunday' and year=2023)->routine.* as routines
from course:CSE222

```

