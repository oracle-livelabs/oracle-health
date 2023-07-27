# Sign up for Code Console

## Introduction

This lab walks you through the steps to sign up for Code Console, register a new application and configure the ASCVD Risk Calculator Apex App.

Estimated Time: 5 minutes

### Objectives

In this lab, you will:

- Sign up for Code Console
- Register a new application
- Configure ASCVD Risk Calculator Oracle APEX App

### Prerequisites

This lab assumes you have:

- An Oracle Cloud account
- All previous labs successfully completed

## Task 1: Sign up for Code Console

1. Go to [https://code-console.cerner.com/](https://code-console.cerner.com/). You should see the following page:

   ![Code console landing page](images/code-console-landing-page.png)

2. Click on "**Log In**", either from the header or the main page:

   ![Login buttons](images/login-buttons.png)

3. Confirm you are on the following page:

   ![Login buttons](images/login-page.png)

4. Click on "**Create an account >>**" button

   ![Create account button](images/create-account-button.png)

5. Confirm you are on the "**Create account**" page.

   Fill out the form. Make sure to fill out the mandatory fields:

   **Email**: your email with which you will login,

   **Password**: a strong password of 6 characters and at least one number or symbol,

   **Security questions and answes**: pick an appropriate question that you will know the answer to,

   Check that you are not a robot,

   Read the **Cerner Terms of Use** and **Cerner Privacy Policy** and check the consent checkbox,

   Click "**Create Account**" button.

   ![Create account page](images/create-account-page.png)

6. To finish registration, check your email and follow the instructions that are necessary to confirm your email and account.

7. **Congratulations**! You now have a **Code Console** account ready to use.

## Task 2: Register a new application

**Note**: If you just registered and followed the steps provided in the confirmation email, after you confirm your email you should be automatically logged in to Code Console. If that's the case you can skip to **Step 3**.

1. Go to [https://code-console.cerner.com/](https://code-console.cerner.com/) and click on "**Log In**", either from the header or the main page:

   ![Login buttons](images/login-buttons.png)

2. Fill out the login form:

   Enter your email address on which you have an account created,

   Enter your account's password,

   Press the "**Log In**" button.

   ![Login form](images/login-form.png)

3. Confirm you are on the following page:

   ![Code Console logged in landing page](images/logged-in-landing-page.png)

4. Click on "**My Applications**" tab

   ![My Apps tab](images/my-apps-tab.png)

5. A pop up "**Authorized Representative of the Company**" will appear where you have to do the following:

   Fill out the "**Company Name**",

   Read the terms of use and check the checkbox if you agree,

   Click the "**Save**" button.

   ![Authorized Popup](images/authorized-popup.png)

6. Click on "**+ New Application**" button

   ![New App](images/new-app.png)

7. Fill out the form as follows:

   **Application Name**: LiveLabs - ASCVD Risk Calculator,

   **Application Type**: You can leave it as **Provider**,

   **Type of Access**: You can leave it as **Online**,

   **Application Privacy**: You can leave it as **Public**,

   **Redirect URI**: If you use [apex.oracle.com](apex.oracle.com), make sure  to update the following link with the required data **[https://apex.oracle.com/pls/apex/r/YOUR_WORKSPACE/YOUR_APP_ALIAS/INDEX_PAGE_ALIAS](https://apex.oracle.com/pls/apex/r/YOUR_WORKSPACE/YOUR_APP_ALIAS/INDEX_PAGE_ALIAS)**, it should result in a link like this: **[https://apex.oracle.com/pls/apex/r/livelabstutorials/ascvd-risk/index](https://apex.oracle.com/pls/apex/r/livelabstutorials/ascvd-risk/index)**,

   **SMART® Launch URI**: If you use [apex.oracle.com](apex.oracle.com), make sure  to update the following link with the required data **[https://apex.oracle.com/pls/apex/r/YOUR_WORKSPACE/YOUR_APP_ALIAS/LAUNCH_PAGE_ALIAS](https://apex.oracle.com/pls/apex/r/YOUR_WORKSPACE/YOUR_APP_ALIAS/LAUNCH_PAGE_ALIAS)**, it should result in a link like this: **[https://apex.oracle.com/pls/apex/r/livelabstutorials/ascvd-risk/launch](https://apex.oracle.com/pls/apex/r/livelabstutorials/ascvd-risk/launch)**,

   **Default FHIR® Version**: R4,

   Click **Next**.

   ![New App first step](images/new-app-first-step.png)

8. Fill out the form as follows:

   **Select a Product Family**: Millennium,

   **Select Products**: Ignite APIs for Millennium: FHIR R4, All,

   Click **Next**.

   ![New App second step](images/new-app-second-step.png)

9. Check the following **User Product APIs**: 

   **APIs**: Patient, **Access level**: Read

   **APIs**: Observation; **Access Level**: Read

   Click **Next**.

   ![New App third step](images/new-app-third-step.png)

10. Confirm everything is looking as expected. Read the **Terms of Use** and check the checkbox if you agree. Click the **Submit** button.

   ![New App fourth step](images/new-app-fourth-step.png)

11. **Congratulations**! You now have your first Code Console application created. After its creation you should be able to see it on t he **My Applications** tab.

   ![New App created](images/new-app-created.png)

## Task 3: Configure ASCVD Risk Calculator

1. If you have not already logged into your Oracle APEX workspace, sign in using the workspace name, email, and password you signed up with.

   ![Sign in into Oracle APEX created](images/apex-sign-in.png)

2. At the top left of your workspace, click App Builder.

   ![Click on App Builder](images/open-app-builder.png)

3. Open ASCVD Risk Calculator

   ![Open ASCVD Risk Calculator](images/open-app.png)

4. Open Shared Components

   ![Open Shared Components](images/go-to-shared-components.png)

5. Select Static Application Files

   ![Select Static Application Files](images/static-application-files.png)

6. Click on Create File

   ![Create File](images/create-file.png)

7. Click on Drag and Drop

   ![Drag and Drop](images/drag-and-drop.png)

8. Import the following dependencies:

   [SMART on FHIR](files/fhir-client.min.js) official JavaScript library.

   [ASCVD Risk Calculator](files/fhir-client.min.js) JavaScript library.

   ![Import dependencies](images/dependencies.png)

9. Files should be loaded and you can see the following screen

   ![File path](images/file-path.png)

10. Go back to application definition

   ![Go back to application definition](images/back-to-app-definition.png)

11. Click on **Global Page** to edit it

   ![Go to global page](images/go-to-global-page.png)

12. Right click on **Body** and press **Create Page Item**

   ![Create page item](images/create-hidden-items.png)

13. Create 4 similar items, ISS, CODE, LAUNCH, STATE

   Note: They need to have this exact name, these 4 items will be used by SMART on FHIR JavaScript Library.

   **Identification > Name:** `ISS`

   **Identification > Type:** Hidden

   ![Create hidden items](images/hidden-items-settings.png)

14. Edit JavaScript section of **Launch** page and add dependencies

   **JavaScript > File URL's:** #APP_FILES#fhir-client.min.js

   **Javascript > Function and Global Variable Declaration:**

   ```js
   <copy>
   apex.widget.waitPopup();

   FHIR.oauth2.authorize({
      'clientId': 'Code Console Client ID',
      'scope': 'patient/Patient.read patient/Observation.read launch online_access openid profile',
      'redirectUri': 'index'
   });
   </copy>
   ```

   ![Edit launch page](images/launch-page.png)

15. Edit JavaScript section of **Index** page and add dependencies

   **JavaScript > File URL's:**

      #APP_FILES#fhir/fhir-client.min.js

      #APP_FILES#ASCVDRisk#MIN#.js

   **Javascript > Function and Global Variable Declaration:**

   ```js
   <copy>
   apex.widget.waitPopup();

   ASCVDRisk.fetchPatientData().then(() => {
      ASCVDRisk.display('view');
   });
   </copy>
   ```

   ![Edit index page](images/index-page.png)

## Acknowledgements

- **Author** - Mircea Iordache, Software Engineer, Open Platform

- **Contributors** - Alexandru Basarab, Senior Software Engineer, Open Platform

- **Last Updated By/Date** - Mircea Iordache, July 2023
