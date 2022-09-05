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

#### Comandos para testar no Android:

```
https://play.google.com/apps/internaltest/4700950427178403616

keytool -genkey -v -keystore \dev\sciensa\keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload
- Senhas: magnum

Fingerprints do certificado:
         SHA1: 8E:CC:48:6D:41:50:71:0E:8E:B8:61:34:30:47:8A:6F:6E:49:24:F5
         SHA256: 53:49:9F:65:46:66:BB:DB:54:95:54:DC:9F:D7:84:D7:80:9A:A7:49:D2:15:7C:60:C8:6D:43:F2:5A:24:BA:1A

npx uri-scheme open "magnumbank://team/teste" --android

adb shell am start -W -a android.intent.action.VIEW -d "magnumbank://list" br.net.drache.deeplink

adb shell am start -W -a android.intent.action.VIEW -d "magnumbank://detail" br.net.drache.deeplink

adb shell am start -W -a android.intent.action.VIEW -d "magnumbank://team/teste" br.net.drache.deeplink
```
## Links:
```
https://magnumbank.page.link/app
https://magnumbank.page.link/deep
https://magnumbank.page.link/team1
```
