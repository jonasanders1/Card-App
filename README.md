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

## Rule 1: Check if the password contains name or email-address
```
      if (password.toLowerCase().includes(name.toLowerCase()) || 
          password.toLowerCase().includes(email.toLowerCase())) {
        validPassword = false;
        passwordErrorMessage = "Password cannot contain name or email address.";
        return;
      }
```

## Rule 2: Check if the password length is between 8 and 64 characters
```
      if (password.length < 8 || password.length > 64) {
        validPassword = false;
        passwordErrorMessage = "Password must be between 8 and 64 characters.";
        return;
      }
```

## Regel 3
```
if (password.toLowerCase().includes(name.toLowerCase()) || password.toLowerCase().includes(email.toLowerCase())) {
        validPassword = false;
        passwordErrorMessage = "Password cannot contain name or email address.";
        return;
    }
```

##Rule 3: Check if the password contains lowercase, uppercase, numbers, and special characters
```
      let containsLowercase = /[a-z]/.test(this.password);
      let containsUppercase = /[A-Z]/.test(this.password);
      let containsNumber = /[0-9]/.test(this.password);
      let containsSpecial = /[@#!?]/.test(this.password);

      if (!containsLowercase || !containsUppercase || !containsNumber || !containsSpecial) {
        tvalidPassword = false;
        passwordErrorMessage = "Password must contain lowercase, uppercase, numbers, and special characters.";
        return;
      }
```

