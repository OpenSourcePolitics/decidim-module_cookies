# Errors encountered while implementing cookies modules

There is some errors known and already fixed, please check the referenced issues

## Uncaught TypeError

Full error : 

```
Uncaught TypeError: Cannot create property '<COOKIE_NAME>' on boolean 'true'
```

Occured on version 0.18.0 && 0.22.0

This error occured when accessing homepage when the cookies banner should appear. 

### Solution
Ensure you do not already have `decidim-cc` cookie defined. If it is defined, remove it and it should work as wanted. 




## Warning cookies banner still visible but not the cookies banner module
Occured on version 0.18.0 && 0.22.0

This behaviour can be observated when `app/views/layouts/decidim/_application.html.erb` module's file is overrided by the working application. 

### Solution
Ensure the `"layouts/decidim/cookies"` partial is well rendered.  


## Broken css when running the development_app in module
Occured on version 0.18.0

This behaviour is due to an already existant decidim cookie. 

### Solution

Click on `revoke acceptance cookies` link in footer if it's present or remove the decidim cookies manually
