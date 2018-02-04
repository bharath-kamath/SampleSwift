# Tim Burtons
Sample shell swift app with MVC

 
===========================================================================
DESCRIPTION:

This is a basic shell app to get quickly started with development.

===========================================================================
BUILD REQUIREMENTS:
 
iOS SDK 10.0 or later
 
===========================================================================
RUNTIME REQUIREMENTS:
 
iOS 10.0, Swift 4
 
===========================================================================

=============================================================================

PRE-REQUISITES:

1. Once the app is cloned from https://github.com/bharath-kamath/SampleSwift.git location. Need to run a command 'pod install' from terminal. Make sure you are on project directory path /TimBurtons/

2. After pod install . close xocde and re-open TimBurtons.xcworkspace by double clicking on it.
3. To run on Device - 
   3.0. open Finder and naviagate to /TimBurtons/TimBurtons/Resources/Certificates location and double click on CertificatesDev.p12 to install. Contact Project Lead for p12 password.
   3.1. Install provisioning profile - by double clicking on TimBurtons.mobileprovision file
   3.2. Go to Build settings and choose right profile to run on device
   3.3. Choose the device connected in xcode and Run.

=============================================================================

CONFIGURATION:

1. Multiple Build Schemes have been created for the different environments and language requirements.
2. Configuration.swift file has the environment specific values that toggle based on build scheme, Constants.swift has constants defined to be used within the app.

=============================================================================

RELEASE:

Install Appstore certificate and profile from /TimBurtons/TimBurtons/Resources/Certificates location and Archive and upload to TestFlight. For more info on release 
https://developer.apple.com/library/ios/documentation/LanguagesUtilities/Conceptual/iTunesConnect_Guide/Chapters/BetaTestingTheApp.html#//apple_ref/doc/uid/TP40011225-CH35

To know more on how to Archive
https://developer.apple.com/library/ios/recipes/xcode_help-scheme_editor/Articles/SchemeArchive.html



