### duplicate `code`
#### query
```sql
create department content {
    code : 331,
    id : string::trim('PHY'),
    letter_code : string::trim('PHY'),
    name : string::trim('Physics'),
    building : string::trim('A'),
    floor : 1,
};
```
#### result
```json
[
  {
    "time": "697.6µs",
    "status": "ERR",
    "detail": "Database index `code` already contains 331, with record `department:PHY`"
  }
]
```
### duplicate `id`

#### query
```sql
create department content {
    code : 331,
    id : string::trim('CSE'),
    letter_code : string::trim('CSE'),
    name : string::trim('Computer Science and Engineering'),
    building : string::trim('Dr. M. A. Wazed Miah IICT Building'),
    floor : 3,
};
```
#### result
```json
[
  {
    "time": "94.8µs",
    "status": "ERR",
    "detail": "Database record `department:CSE` already exists"
  }
]
```
### duplicate `letter_code`

#### query
```sql
create department content {
    code : 123,
    id : string::trim('PHY'),
    letter_code : string::trim('CSE'),
    name : string::trim('Physics'),
    building : string::trim('A'),
    floor : 1,
};
```
#### result
```json
[
  {
    "time": "409.9µs",
    "status": "ERR",
    "detail": "Database index `letter_code` already contains 'CSE', with record `department:PHY`"
  }
]
```

### duplicate `name`
#### query
```sql
create department content {
    code : 123,
    id : string::trim('PHY'),
    letter_code : string::trim('PHY'),
    name : string::trim('Computer Science and Engineering'),
    building : string::trim('A'),
    floor : 1,
};
```
#### result
```json
[
  {
    "time": "640.5µs",
    "status": "ERR",
    "detail": "Database index `name` already contains 'Computer Science and Engineering', with record `department:PHY`"
  }
]
```
### duplicate
### duplicate