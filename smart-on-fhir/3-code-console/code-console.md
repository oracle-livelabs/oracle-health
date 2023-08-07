# Sign up for Code Console

## Introduction

This lab walks you through the steps to sign up for Code Console, register a new application and configure the ASCVD Risk Calculator Apex App.

Estimated Time: 20 minutes

### Objectives

In this lab, you will:

- Sign up for Code Console
- Register a new application

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

## Acknowledgements

* **Author** - Mircea Iordache, Software Engineer, OHAI - Platform Initiatives

* **Contributors**
    * Alexandru Basarab, Software Development Manager, OHAI - Platform Initiatives
    * Tudor Dragomir, Software Engineer, OHAI - Platform Initiatives
    * Ionut Balan, Software Engineer, OHAI - Platform Initiatives

* **Last Updated By/Date** - Alexandru Basarab, July 2023
