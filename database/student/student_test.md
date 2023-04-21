### duplicate `id`
#### query
```sql
CREATE student CONTENT {
    id : 2019331073,
    ...,
};
```
#### result
```json
[
  {
    "time": "147.8µs",
    "status": "ERR",
    "detail": "Database record `student:2019331073` already exists"
  }
]
```

### duplicate `email.personal`

#### query
```sql
CREATE student CONTENT {
    id : 2019331074,
    email: {
       personal: string::trim('mac22214u@gmail.com'),
       ...,
    },
    ...,
};
```

#### result
```json
[
  {
    "time": "1.2667ms",
    "status": "ERR",
    "detail": "Database index `personal_email` already contains 'mac22214u@gmail.com', with record `student:2019331074`"
  }
]
```

### duplicate `email.academic`

#### query
```sql
CREATE student CONTENT {
    id : 2019331074,
    email: {
       ...,
       academic:string::trim( 'mufassir73@student.sust.edu'),
    },
    ...,
};
```

#### result
```json
[
  {
    "time": "1.5647ms",
    "status": "ERR",
    "detail": "Database index `academic_email` already contains 'mufassir73@student.sust.edu', with record `student:2019331074`"
  }
]
```

### duplicate `personal.phone`

#### query
```sql
CREATE student CONTENT {
    id : 2019331074,
    personal: {
        ...,
        phone: 01771144308,
    },
    ...,
};
```

#### result
```json
[
  {
    "time": "1.3203ms",
    "status": "ERR",
    "detail": "Database index `phone` already contains 1771144308, with record `student:2019331074`"
  }
]
```


### wrong input in `name`
#### query
```sql
CREATE student CONTENT {
    id : 2019331074,
    name: string::trim('Mufassir Ahmad Chowdhury4'|''|'1234'|'mr. x, y'),
    ...,
};
```
#### result
```json
[
  {
    "time": "899.3µs",
    "status": "ERR",
    "detail": "Found 'Mufassir Ahmad Chowdhury4'|''|'1234'|'mr. x, y' for field `name`, with record `student:2019331074`, but field must conform to: $value != NONE AND $value = /^[A-Za-z. ]+$/ AND string::len($value) >= 3"
  }
]
```

### `department` will be detect automatically

### wrong input in `email.personal`
#### query
```sql
CREATE student CONTENT {
    id : 2019331074,
    email: {
       personal: string::trim('mac22214gmail.com'|''|'1234'|'@gmail.com'),
       ...,
    },
    ...,
};
```
#### result
```json
[
  {
    "time": "395µs",
    "status": "ERR",
    "detail": "Found 'mac22214gmail.com'|''|'1234'|'@gmail.com' for field `email.personal`, with record `student:2019331074`, but field must conform to: $value != NONE AND is::email($value)"
  }
]
```

### wrong input in `email.academic`
#### query
```sql
--delete student;
CREATE student CONTENT {
    id : 2019331074,
    email: {
       academic:string::trim( 'mufassir74@studet.sust.edu'|''|'1234'|'asanul@student.sust.edu'|'13@student.sust.edu'),
       ...,
    },
    ..., 
};
```
#### result
```json
[
  {
    "time": "486.2µs",
    "status": "ERR",
    "detail": "Found 'mufassir74@studet.sust.edu'|''|'1234'|'asanul@student.sust.edu'|'13@student.sust.edu' for field `email.academic`, with record `student:2019331074`, but field must conform to: $value != NONE AND is::email($value) AND parse::email::host($value) = 'student.sust.edu' AND parse::email::user($value) >= 5 AND is::numeric(string::slice(parse::email::user($value), string::len(parse::email::user($value)) - 2, 2)) AND is::alpha(string::slice(parse::email::user($value), 0, string::len(parse::email::user($value)) - 2))"
  }
]
```

### wrong input in `gender`
#### query
```sql
--delete student;
CREATE student CONTENT {
    id : 2019331074,
    gender: string::lowercase('mle'||''|'1234'),
    ...,
};
```
#### result
```json
[
  {
    "time": "779.4µs",
    "status": "ERR",
    "detail": "Found 'mle'||''|'1234' for field `gender`, with record `student:2019331074`, but field must conform to: $value INSIDE ['male', 'female']"
  }
]
```

### wrong input in `session`
#### query (type same but out of conditions)
```sql
CREATE student CONTENT {
    id : 2019331074,
    session: 3019|-123|2024|1979|2000.6,
    ...,
};
```
#### result
```json
[
  {
    "time": "1.0755ms",
    "status": "ERR",
    "detail": "Found 3019|-123|2024|1979|2000.6 for field `session`, with record `student:2019331074`, but field must conform to: $value != NONE AND $value >= 1980 AND $value <= time::year() AND math::round($value) = $value"
  }
]
```
#### query (type different)
```sql
--delete student;
CREATE student CONTENT {
    id : 2019331074,
    ...,
    session: 'hello'|hiiii|[],
};
```
#### result
```json
[
  {
    "time": "368µs",
    "status": "OK",
    "result": []
  },
  {
    "time": "1.0841ms",
    "status": "ERR",
    "detail": "Found 0|NONE|0 for field `session`, with record `student:2019331074`, but field must conform to: $value != NONE AND $value >= 1980 AND $value <= time::year() AND math::round($value) = $value"
  }
]
```

### wrong input in `aa`
#### query
```sql

```
#### result
```json

```

### wrong input in `aa`
#### query
```sql

```
#### result
```json

```

### wrong input in `aa`
#### query
```sql

```
#### result
```json

```

### wrong input in `aa`
#### query
```sql

```
#### result
```json

```

### wrong input in `aa`
#### query
```sql

```
#### result
```json

```

### wrong input in `aa`
#### query
```sql

```
#### result
```json

```
