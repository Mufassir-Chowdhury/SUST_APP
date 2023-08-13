```sql

Define scope account session 24h
signin(select * from user where email = $email and pass = crypto::argon2::compare(pass, $pass))

```