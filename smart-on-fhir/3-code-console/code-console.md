# Sign up for Code Console

## Introduction

This lab walks you through the steps to sign up for Code Console, register a new application and configure the ASCVD Risk Calculator Apex App.

Estimated Time: 20 minutes

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

   ![Login buttons located in the header on in the card from the main page](images/login-buttons.png)

3. Confirm you are on the following page:

   ![Login form with login button](images/login-page.png)

4. Click on "**Create an account >>**" button, if you don't have an account, you will have to create one.

   ![Create account button](images/create-account-button.png)

5. Confirm you are on the "**Create account**" page.  

   *Note: Make sure to save or remember your password, you will need it later.*

   Fill out the form. Make sure to fill out the mandatory fields:

   **Email**: your email with which you will login

   **Password**: a strong password of 6 characters and at least one number or symbol

   **Security questions and answers**: pick an appropriate question that you will know the answer to

   Check that you are not a robot

   Read the **Cerner Terms of Use** and **Cerner Privacy Policy** and check the consent checkbox

   Click "**Create Account**" button.

   ![Create account page, fill in  the form, click Create Account button](images/create-account-page.png)

6. To finish registration, check your email and follow the instructions that are necessary to confirm your email and account.  

   *Note: You will need to wait a few minutes*

7. **Congratulations**! You now have a **Code Console** account ready to use.

## Task 2: Register a new application

**Note**: If you just registered and followed the steps provided in the confirmation email, after you confirm your email you should be automatically logged in to Code Console. If that's the case you can skip to **Step 3**.

1. Go to [https://code-console.cerner.com/](https://code-console.cerner.com/) and click on "**Log In**", either from the header or the main page:

   ![Login buttons located in the header on in the card from the main page](images/login-buttons.png)

2. Fill out the login form:

   Enter your email address on which you have an account created

   Enter your account's password

   Press the "**Log In**" button.

   ![Login form with login button](images/login-form.png)

3. Confirm you are on the following page:

   ![Code Console logged in landing page](images/logged-in-landing-page.png)

4. Click on "**My Applications**" tab

   ![My Applications tab](images/my-apps-tab.png)

5. A pop up "**Authorized Representative of the Company**" will appear where you have to do the following:

   Fill out the "**Company Name**"

   Read the terms of use and check the checkbox if you agree

   Click the "**Save**" button.

   ![Authorized Representative of the Company Popup](images/authorized-popup.png)

6. Click on "**+ New Application**" button

   ![+New Application button](images/new-app.png)

7. Fill out the form as follows:

   **Application Name**: LiveLabs - ASCVD Risk Calculator,

   **Application Type**: You can leave it as **Provider**

   **Type of Access**: You can leave it as **Online**

   **Application Privacy**: You can leave it as **Public**

   *Note: Here you will use the application id and workspace name that we previously noted down. If you named your application ASCVD Risk Calculator then your application alias will be **ASCVD-RISK-CALCULATOR***

   **Application Alias:** ASCVD-RISK-CALCULATOR

   **Index Page Alias:** index

   **Launch Page Alias:** launch

   **Redirect URI**: If you use [apex.oracle.com](apex.oracle.com), make sure  to update the following link with the required data `https://apex.oracle.com/pls/apex/r/YOUR-WORKSPACE/YOUR-APP-ALIAS/INDEX-PAGE-ALIAS`

   **SMART® Launch URI**: If you use [apex.oracle.com](apex.oracle.com), make sure  to update the following link with the required data `https://apex.oracle.com/pls/apex/r/YOUR-WORKSPACE/YOUR-APP-ALIAS/LAUNCH-PAGE-ALIAS`

   **Default FHIR® Version**: R4

   Click **Next**.

   ![Fill in the first step of the form, click Next](images/new-app-first-step.png)

8. Fill out the form as follows:

   **Select a Product Family**: Millennium

   **Select Products**: Ignite APIs for Millennium: FHIR R4, All

   Click **Next**.

   ![Fill in the second step of the form, click Next](images/new-app-second-step.png)

9. Check the following **Patient Product APIs**, make sure to check only patient product api's.

   **APIs**: Patient, **Access level**: Read

   **APIs**: Observation; **Access Level**: Read

   Click **Next**.

   ![Fill in the third step of the form, click Next](images/new-app-third-step.png)

10. Confirm everything is looking as expected. Read the **Terms of Use** and check the checkbox if you agree. Click the **Submit** button.

   ![In the fourth step of the form, confirm everything looks good, click Submit](images/new-app-fourth-step.png)

11. **Congratulations**! You now have your first Code Console application created. After its creation you should be able to see it on the **My Applications** tab.

   ![New Application successfully created](images/new-app-created.png)

12. Click on the newly created application and look for Client Id, note the UUID, you will use it later.

   ![Click on the newly created application and look for Client Id, note the UUID, you will use it later](images/copy-client-id.png)

## Task 3: Configure ASCVD Risk Calculator

1. If you have not already logged into your Oracle APEX workspace, sign in using the workspace name, email, and password you signed up with.

   ![Sign in into Oracle APEX created](images/apex-sign-in.png)

2. At the top left of your workspace, click **App Builder**.

   ![Click on App Builder](images/open-app-builder.png)

3. Open **ASCVD Risk Calculator**

   ![Open ASCVD Risk Calculator](images/open-app.png)

4. Open **Shared Components**

   ![Open Shared Components](images/go-to-shared-components.png)

5. Under Files and Reports select **Static Application Files**

   ![Under files and reports select static application files](images/static-application-files.png)

6. Click on **Create File**

   *Note: From here you will be able to import needed dependencies.*

   ![Click create file](images/create-file.png)

7. Download the following dependencies.

   <a href="../0-introduction/files/fhir-client.min.js" download>SMART on FHIR</a> official JavaScript library.

   <a href="../0-introduction/files/ascvd-risk.min.js" download>ASCVD Risk Calculator</a> JavaScript library.

8. Click on Drag and Drop and select step 7 downloaded dependencies.

   ![Click on drag and drop](images/drag-and-drop.png)

9. Select the dependencies fhir-client.min.js, ascvd-risk.min.js and press **Open**, after selection you need to press **Create** to add them to your application.

   ![Upload fhir-client.min.js and ascvd-risk.min.js dependencies and press create to add them](images/dependencies.png)

10. Press on **Static Application Files** in order to see the files.

11. Files should be loaded and you can see the following screen.

   ![File path](images/file-path.png)

12. To go back to application overview press on the application id in the top left corner, in the breadcrumb.

   ![To go back to application overview press on the application id in the top left corner, in the breadcrumb](images/back-to-app-definition.png)

13. Click on **Global Page** to edit it.

   ![Go to global page](images/go-to-global-page.png)

14. Right click on **Body** and press **Create Page Item**

   ![Create page item](images/create-hidden-items.png)

15. Create four similar items, ISS, CODE, LAUNCH and STATE.

      *Note: They need to have this exact names (ISS, CODE, LAUNCH, STATE), these four items will be used by SMART on FHIR JavaScript Library. Below is an example of how to create item ISS, leave the rest of the settings as they defaulted*

      **Identification > Name:** `ISS`

      **Identification > Type:** Hidden

      ![Create hidden items](images/hidden-items-settings.png)

      *Remember to **Save** the page regularly, to not lose any progress!*

16. Click on the application id in the top left corner and then look for  **Launch** page and open it, in page attributes edit then JavaScript section to add dependencies.

   *Note: Make sure to edit the code-console-client-id in the below Javascript snippet and replace it with Client Id given by Code Console.*

   **JavaScript > File URL's:** #APP_FILES#fhir-client.min.js

   **Javascript > Function and Global Variable Declaration:**

      ```js
      <copy>
      apex.widget.waitPopup();

      FHIR.oauth2.authorize({
         'clientId': 'code-console-client-id',
         'scope': 'patient/Patient.read patient/Observation.read launch online_access openid profile',
         'redirectUri': 'index'
      });
      </copy>
      ```

   ![Edit launch page javascript section and add the above sniped, replace code console client id with your actual client id](images/launch-page.png)

   *Remember to **Save** the page regularly, to not lose any progress!*

17. Click on the application id in the top left corner and then look for **Index** page and edit JavaScript section to add dependencies.

   **JavaScript > File URL's:**

      #APP_FILES#fhir-client.min.js

      #APP_FILES#ascvd-risk.min.js

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

   *Remember to **Save** the page regularly, to not lose any progress!*

## Acknowledgements

* **Author**
    * Mircea Iordache, Software Engineer, OHAI - Platform Initiatives
    * Alexandru Basarab, Software Development Manager, OHAI - Platform Initiatives

* **Contributors**
    * Tudor Dragomir, Software Engineer, OHAI - Platform Initiatives
    * Ionut Balan, Software Engineer, OHAI - Platform Initiatives

* **Last Updated By/Date** - Alexandru Basarab, July 2023
