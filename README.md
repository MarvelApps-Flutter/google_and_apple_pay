# Apple and Google pay demo
A new flutter app for demonstrating Apple and google pay demo.

# Google pay Setup
<b>1).</b>&nbsp;Update your AndroidManifest.xml file to include the following <meta-data/> element to application tag.
<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/android/meta_gpay.png" height="80px"></td>

<b>2).</b>&nbsp;Internally Google API requires the following Gradle dependency (from android native) which is handled by the
<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/android/build_gradle.png" height="30px"></td>

<b>2).</b>&nbsp;Hence, we need to change the following in the build.gradle of your app
<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/android/min.png" height="30px"></td>
# Apple pay Setup
<b>1).</b>&nbsp;To begin with setup you need to have <b> paid Apple developer account</b>.<br>
<b>2).</b>&nbsp;Install <b>pay</b> package , for that type <b>flutter pub add pay</b> using terminal.<br>
<b>3).</b>&nbsp;Add <b>apple pay button</b> to UI.<br>
<b>4).</b>&nbsp;Add configuration <b>apple_pay.json</b> file in <b>assets folder</b>.<br>
<b>5).</b>&nbsp;Import configuration file in <b>pubspec.yaml</b> as below.<br>
<b>6).</b>&nbsp;Open <b>Xcode</b> and add <b>capability of apple pay</b> by >> opening Runner >> go to <b>signing & capabilities</b> then <b>press + </b>and search for <b>Apple pay</b>.<br>
<b>7).</b>&nbsp;Make sure you are sign in with apple developer account and select team accordingly.<br>
<b>8).</b>&nbsp;Now create a <b> merchant identifier</b>, you can create it through apple developer account or through xcode.<b>Steps below are applicable for apple developer account</b>.<br>
<b>8.1).</b>&nbsp;In <b>Certificates, Identifiers & Profiles</b>, click <b>Identifiers</b> in the sidebar, then click the <b>add button (+)</b> on the top left.<br>
<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/select_identifier.png" height="100px"></td>

<b>8.2).</b>&nbsp;<b>Select Merchant IDs</b>, then click <b>continue</b>.
<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/select_merchant_id.png" height="150px"></td><br>

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/register_identifier.png" height="130px"></td>

<b>8.3).</b>&nbsp;Enter the <b>merchant description</b> and <b>identifier name</b> then click <b>continue</b>.
<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/register_merchant.png" height="200px"></td>

<b>8.4).</b>&nbsp;<b>Review the settings</b>,then click <b>Register</b>.

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/review_merchant_settings.png" height="200px"></td>

<b>9).</b>&nbsp;<b>Now create a payment processing certificate</b><br>
<b>9.1).</b>&nbsp;In <b>Certificates, Identifiers & Profiles</b>, click <b>Certificates</b> in the sidebar then click the <b>add button (+)</b> on the top left.

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/select_certificate.png" height="100px"></td>

<b>9.2).</b>&nbsp;Scroll down to <b>Services</b> and select <b>Apple Pay Payment Processing Certificate</b> then click <b>continue</b>.
<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/apple_pay_cert.png" height="70px"></td>

<b>9.3).</b>&nbsp;Now select a <b>merchant id</b> for your apple pay payment processing certificate i.e. which you created in <b>step 8</b> then click <b>continue</b>.

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/select_merchant_cert.png" height="200px"></td>

<b>9.4).</b>&nbsp;To configure <b>Apple Pay Payment Processing</b> for this Merchant ID, create a <b>Payment Processing Certificate</b>. <b>Apple Pay Payment Processing requires this certificate to encrypt transaction data</b>. 

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/create_cert_encrypt.png" height="300px"></td>

<b>9.5).</b>&nbsp;Leave the default option(No) checked for the question about whether your Merchant ID is processed exclusively in China.

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/edit_config.png" height="150px"></td>

<b>9.6).</b>&nbsp;Now click Choose File and upload the <b>Certificate Signing Request</b>. 

<b>10).</b>&nbsp;Steps for generating <b>Certificate Signing Request for Apple pay</b>

<b>10.1).</b>&nbsp;Open <b>Keychain Access</b> app on your macOS system. 

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/search_keychain.png" height="70px">

<b>10.2).</b>&nbsp;Select <b>Keychain Access > Certificate Assistant > Request a Certificate From a Certificate Authority</b>. It will open a <b>Certificate Information</b> dialog

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/select_cert_assistant.png" height="200px">

<b>10.3).</b>&nbsp;Type User Email Address and selected <b>request should be Saved to disk </b>and <b>Let me specify key pair information</b> then click on <b>Continue</b>.

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/certificate_info.png" height="300px">

<b>10.4).</b>&nbsp;Now it will navigate to <b>key Pair Information dialog<b>, here specify <b> key size as 256 bits </b>and <b>alogorithm as ECC</b>.

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/specify_size_algo.png" height="300px">

<b>Note : </b>If you specify other <b>key size or algorithm</b> it will throw error as below. 

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/cert_key_pair_error.png" height="200px">

<b>10.5).</b>&nbsp;Now it will navigate to <b> key Pair Information dialog</b>, here specify <b>key size as 256 bits </b>and <b>alogorithm as ECC</b> then click on <b>Continue</b> and save your certificate.

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/specify_size_algo.png" height="300px">

<b>10.6).</b>&nbsp;Upload the <b>Certificate Signing Request</b> you downloaded in the previous step, then click <b>Continue</b>.

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/upload_cert.png" height="300px">

<b>10.7).</b>&nbsp;Click <b>Download</b> to download the <b>Payment Processing Certificate (*.cer)</b> to your computer. 

<img src="https://github.com/MarvelApps-Flutter/google_and_apple_pay/blob/master/media/ios/download_cert.png" height="230px">

# Video Preview
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
