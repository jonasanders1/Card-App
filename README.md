```
{
  'sub': 'f:3b9fc540-4522-473d-a6fe-a2f3ec05a693:234319093',
  'name': 'Jan Johansen',
  'email': 'jan@johansen.tld',
  'given_name': 'Jan',
  'family_name': 'Johansen',
  'email_verified': False,
}
```

```
{
  'sub': 'f:3b9fc540-4522-473d-a6fe-a2f3ec05a693:234319093',
  'name': 'Jan Johansen',
  'email': 'jan@johansen.tld',
  'gender': 'male',
  'birthdate': '1970-12-01',
  'bp_id_sub': '102349293',
  'given_name': 'Jan',
  'family_name': 'Johansen',
  'email_verified': False,
  'preferred_username': 'jan@johansen.tld'
}
```
*** Regel 1
```
if (password.toLowerCase().includes(name.toLowerCase()) || password.toLowerCase().includes(email.toLowerCase())) {
        validPassword = false;
        passwordErrorMessage = "Password cannot contain name or email address.";
        return;
    }
```
