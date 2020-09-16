# How to add new translation key

Orejime's banner is already translated in several languages. Those translations are available [on the official Github repository](https://github.com/empreinte-digitale/orejime/tree/master/src/translations).

It is possible to override a translation in the current banner. 

### 1. Check the wanted key in the official repository

For example, if I want to implement a custom translation for the consent modal privacy policy text I have to find the wanted key in the [original configuration](https://github.com/empreinte-digitale/orejime/blob/master/src/translations/en.yml).

```yaml
consentModal:
  title: Information that we collect
  description: >
    Here you can see and customize the information that we collect about you.
  privacyPolicy:
    name: privacy policy
    text: >
      To learn more, please read our {privacyPolicy}.
```

### 2. Add new key in the module config translations

For each locales files : 

Add the wanted key as following : 

```
en:
  decidim:
    components:
      cookies:
        consent_modal:
            privacy_policy:
                text: Translation you want {privacyPolicy}
```

### 3. Add the key to the banner

In the `app/views/layouts/decidim/_cookies.html.erb` file, add the new key in `window.orejimeConfig.translations` javascript object.

Example: 

```
window.orejimeConfig.translations = {
  "<%= I18n.locale %>": {
      consentModal: {
        privacyPolicy: {
            text: "<%= I18n.t('consent_modal.privacy_policy.text', scope: "decidim.components.cookies") %>"
        }
      }
  }
}
```

### Conclusion

That's all ! Now you should see your own translation in the Orejime's banner.
