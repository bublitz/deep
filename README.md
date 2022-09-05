# POC Deep Link

## Android

#### Adicionar ao `AndroidManifest.xml` dentro da tag `<activity>` a propriedade `autoVerify` e o `intent-filter`, conforme abaixo:

```
    <intent-filter android:autoVerify="true">
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.LAUNCHER" />
      </intent-filter>
    <intent-filter>
      <action android:name="android.intent.action.VIEW" />
      <category android:name="android.intent.category.DEFAULT" />
      <category android:name="android.intent.category.BROWSABLE" />
      <data android:scheme="magnumbank" />
      <data android:scheme="https" android:host="www.magnumbank.com.br" />
      <data android:scheme="http" android:host="www.magnumbank.com.br" />
    </intent-filter>
```

https://firebase.google.com/docs/dynamic-links/flutter/receive


## Links (somente Android):

https://magnumbank.page.link/app

https://magnumbank.page.link/deep

https://magnumbank.page.link/team1


