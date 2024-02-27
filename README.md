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

## Rule 1: Sjekk om passord inneholder navn eller adresse
```
      if (password.toLowerCase().includes(name.toLowerCase()) || 
          password.toLowerCase().includes(email.toLowerCase())) {
        validPassword = false;
        passwordErrorMessage = "Password cannot contain name or email address.";
        return;
      }
```

## Rule 2: Sjekk om passord er mellom 8 - 64 tegn
```
      if (password.length < 8 || password.length > 64) {
        validPassword = false;
        passwordErrorMessage = "Password must be between 8 and 64 characters.";
        return;
      }
```


## Rule 3: Sjekk om passord inneholder små- og store bokstaver, tall og spesialtegn
```
      let containsLowercase = /[a-z]/.test(this.password);
      let containsUppercase = /[A-Z]/.test(this.password);
      let containsNumber = /[0-9]/.test(this.password);
      let containsSpecial = /[@#!?]/.test(this.password);

      if (!containsLowercase || !containsUppercase || !containsNumber || !containsSpecial) {
        validPassword = false;
        passwordErrorMessage = "Password must contain lowercase, uppercase, numbers, and special characters.";
        return;
      }
```

