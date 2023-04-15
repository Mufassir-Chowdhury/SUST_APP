### wrong on `code` field
```sql
insert into department {
    code : 13,
    id : string::trim('PHY'),
    letter_code : string::trim('PHY'),
    name : string::trim('Physics'),
    building : string::trim('A'),
    floor : 1
}

insert into department {
    code : 1333,
    id : string::trim('PHY'),
    letter_code : string::trim('PHY'),
    name : string::trim('Physics'),
    building : string::trim('A'),
    floor : 1
}

insert into department {
    code : 'khl',
    id : string::trim('PHY'),
    letter_code : string::trim('PHY'),
    name : string::trim('Physics'),
    building : string::trim('A'),
    floor : 1
}

insert into department {
    code : 5.9,
    id : string::trim('PHY'),
    letter_code : string::trim('PHY'),
    name : string::trim('Physics'),
    building : string::trim('A'),
    floor : 1
}
```


### wrong on `letter_code` field
```sql
insert into department {
    code : 234,
    id : string::trim('PH'),
    letter_code : string::trim('PH'),
    name : string::trim('Physics'),
    building : string::trim('A'),
    floor : 1
}

insert into department {
    code : 234,
    id : string::trim('PHy'),
    letter_code : string::trim('PHy'),
    name : string::trim('Physics'),
    building : string::trim('A'),
    floor : 1
}

insert into department {
    code : 234,
    id : string::trim('phy'),
    letter_code : string::trim('phy'),
    name : string::trim('Physics'),
    building : string::trim('A'),
    floor : 1
}

insert into department {
    code : 234,
    id : string::trim('PHYS'),
    letter_code : string::trim('PHYS'),
    name : string::trim('Physics'),
    building : string::trim('A'),
    floor : 1
}

insert into department {
    code : 234,
    id : string::trim(''),
    letter_code : string::trim(''),
    name : string::trim('Physics'),
    building : string::trim('A'),
    floor : 1
}

insert into department {
    code : 132,
    id : string::trim(67),
    letter_code : string::trim(67),
    name : string::trim('Physics'),
    building : string::trim('A'),
    floor : 1
}

insert into department {
    code : 132,
    id : string::trim('789'),
    letter_code : string::trim('789'),
    name : string::trim('Physics'),
    building : string::trim('A'),
    floor : 1
}

```

### wrong on `name` field
```sql
insert into department {
    code : 123,
    id : string::trim('SWE'),
    letter_code : string::trim('SWE'),
    name : string::trim('  '),
    building : string::trim('Dr. M. A. Wazed Miah IICT Building'),
    floor : 1
};

insert into department {
    code : 123,
    id : string::trim('SWE'),
    letter_code : string::trim('SWE'),
    name :string::trim( ' Software Engineering.'),
    building : string::trim('Dr. M. A. Wazed Miah IICT Building'),
    floor : 1
};

insert into department {
    code : 123,
    id : string::trim('SWE'),
    letter_code : string::trim('SWE'),
    name : string::trim('Software Engineering 4'),
    building : string::trim('Dr. M. A. Wazed Miah IICT Building'),
    floor : 1
};

insert into department {
    code : 123,
    id : string::trim('SWE'),
    letter_code : string::trim('SWE'),
    name : string::trim(' 45 67 8 89 9'),
    building : string::trim('Dr. M. A. Wazed Miah IICT Building'),
    floor : 1
};

```

### wrong on `building` field

```sql

```