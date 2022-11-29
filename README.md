# Apple and Google pay demo
A new flutter app for demonstrating Apple and google pay demo.

# Apple pay Setup
1. To begin with setup you need to have paid Apple developer account.
2. Install pay package , for that type flutter pub add pay
3. Add apple pay button to UI.
4. Add configuration apple_pay.json file in assets folder.
5. Import configuration file in pubspec.yaml as below
6. Open Xcode and add capability of apple pay by >> opening Runner >> go to signing & capabilities then press + and search for Apple pay 
7. Make sure you are sign in with apple developer account and select team accordingly.
8. Now create a merchant identifier, you can create it through apple developer account or through xcode.Steps below are applicable for apple developer account.
8.1. In Certificates, Identifiers & Profiles, click Identifiers in the sidebar, then click the add button (+) on the top left.
<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/select_identifier.png" height="200px"></td>
8.2. Select Merchant IDs, then click continue
<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/select_merchant_id.png" height="200px"></td>

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/register_identifier.png" height="200px"></td>

8.3. Enter the merchant description and identifier name then click continue.
<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/register_merchant.png" height="200px"></td>

8.4. Review the settings,then click Register.

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/review_merchant_settings.png" height="200px"></td>

9. Now create a payment processing certificate
9.1. In Certificates, Identifiers & Profiles, click certificates in the sidebar then click the add button (+) on the top left.

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/select_certificate.png" height="200px"></td>

9.2. Scroll down to Services and select Apple Pay Payment Processing Certificate then click continue.
<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/apple_pay_cert.png" height="200px"></td>

9.3. Now select a merchant id for your apple pay payment processing certificate i.e. which you created in 8 step then click continue

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/select_merchant_cert.png" height="200px"></td>

9.4. To configure Apple Pay Payment Processing for this Merchant ID, create a Payment Processing Certificate.Apple Pay Payment Processing requires this certificate to encrypt transaction data. 

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/create_cert_encrypt.png" height="200px"></td>

9.5. Leave the default option(No) checked for the question about whether your Merchant ID is processed exclusively in China.

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/create_cert_encrypt.png" height="200px"></td>

9.6. Now click Choose File and upload the Certificate Signing Request 

10. Steps for generating Certificate Signing Request for Apple pay

10.1.&nbsp;Open Keychain Access app on your macOS system. 

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/search_keychain.png" height="70px">

10.2.&nbsp;Select <b>Keychain Access > Certificate Assistant > Request a Certificate From a Certificate Authority</b>. It will open a Certificate Information dialog

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/select_cert_assistant.png" height="200px">

10.3. Type User Email Address and selected request should be Saved to disk and Let me specify key pair information then click on Continue.

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/certificate_info.png" height="200px">

10.4. Now it will navigate to key Pair Information dialog , here specify key size as 256 bits and alogorithm as ECC.

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/specify_size_algo.png" height="200px">

Note : If you specify other key size or algorithm it will throw error as below 

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/cert_key_pair_error.png" height="200px">

10.5. Now it will navigate to key Pair Information dialog, here specify key size as 256 bits and alogorithm as ECC then click on Continue and save your certificate.

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/specify_size_algo.png" height="200px">

10.6. Upload the Certificate Signing Request you downloaded in the previous step, then click Continue.

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/upload_cert.png" height="200px">

10.7. Click Download to download the Payment Processing Certificate (*.cer) to your computer. 

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/download_cert.png" height="200px">

# Demo
<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/gif/demo.gif" height="480px"></td>

# Android Screenshot

<table>
  <tr>
    <td><img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/android/android1.png" height="480px"></td>
  </tr>
</table>
</br>

# IOS Screenshot

<table>
  <tr>
    <td><img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/ios1.png" height="480px"></td>
    <td><img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/ios2.png" height="480px"></td>
    <td><img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/ios3.png" height="480px"></td>
  </tr>
 </table>
