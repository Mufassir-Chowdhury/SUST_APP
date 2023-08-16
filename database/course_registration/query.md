```sql
select id, name 
from (select value ->(offers 
                    where semester = 12 and year = 2019)->course 
from department:CSE);


let $one = select value id from (select value ->(offers where semester = 12 and year = 2019)->course from department:CSE);

let $two = select value id from (select value ->(takes where semester=12 and year = 2019)->course from student:2019331073);

select id,name from array::difference($one, $two);
```
