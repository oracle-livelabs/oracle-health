# APEX Application Setup

## Introduction

This lab walks you through creation and initial setup of Oracle APEX application. You will create an new Oracle APEX application and three pages. Two of the pages (Launch, Index) will handle authentications and authorization in SMART on FHIR and the third one (View) will contain the application objects and logic.

Estimated Time: 10 minutes

### Objectives

In this lab, you will:

* Create a new Oracle APEX Application
* Create Oracle APEX Pages

### Prerequisites

This lab assumes you have:

* An Oracle Cloud account or Free Workspace in apex.oracle.com
* All previous labs successfully completed

## Task 1: Create the Application

1. If you have not already logged into your Oracle APEX workspace, sign in using the workspace name, email, and password you signed up with.

   ![Sign in into Oracle APEX created](images/apex-sign-in.png)

2. In the App Builder toolbar, click **App Builder**, and click **Create**.

    ![Click on App Builder](images/app-builder.png)

3. On the Create Application page, click **New Application**.

    ![Click on Create](images/new-app.png)

4. On the Create an Application page, for Name, enter **ASCVD Risk Calculator**, in the Appearance, you can change it to **Redwood Light** or leave it as it is and change it later in lab five.  
    *Note: the icon is random each time you create a new application.*

    Click **Create Application**, and wait a few seconds for the application to be created.

    ![Click on Create Application](images/app-details.png)

## Task 2: Launch Page

1. Return to the Application **Home Page**.

   Click **Home Page**.

   ![Click on Home Page](images/edit-home-page.png)

2. Move **Layout** tab by dragging the tab to the right panel and move the **Page** tab to the middle panel, this way you will always see the attributes of what you are editing in the middle panel.

    *Note: All tabs can be moved, but keep in mind that the workshop uses this layout.*

    ![Move layout tab by dragging the tab to the right panel and move the page tab to the middle panel](images/apex-tabs.png)

3. Select the page and open page attributes, rename Home Page to **Launch** Page under Identification and change the page **Alias**.

    **Identification > Name:** Launch

    **Identification > Alias:** launch

    ![Select the page and open page attributes, rename Home Page to Launch Page under Identification and change the page Alias](images/rename-home-page.png)

4. Look for Security tab and change Authentication to be a **Public Page** and Page Access Protection as **Unrestricted**, and then **Save** the Page.

    ![Look for Security tab and change Authentication to be a Public Page and Page Access Protection as Unrestricted, and then Save the Page](images/page-security.png)

## Task 3: Use the Create Page Wizard

1. Return to the Application **Home Page** by pressing the application id in the top left corner.

   Click **Create Page**..

   On the Create a Page dialog, click **Blank Page** and press **Next**.

   ![Select blank page and click Next](images/create-new-page.png)

2. In the Create Blank Page dialog make sure you uncheck **Use Breadcrumb** and **Use Navigation**, name the page **Index** and then click on **Create** button.

   ![Name the page Index uncheck use breadcrumb and navigation then press create](images/create-index-page.png)

3. Change Authentication to **Page is Public**, Page Access Protection to **Unrestricted**. Those settings are available in the page security tab, you will need to scroll down.

    ![Scroll down to page security tab and change authentication to page is public and page access protection to unrestricted](images/page-security.png)

4. Repeat the process of step one and two and create a new blank page with the name **View**.  
   *Note: Don't forget to uncheck Use Breadcrumb and Use Navigation.*

   ![Repeat the process of step one and two and create a new blank page with the name View](images/create-view-page.png)

5. Change page security authentication to **Public Page** and page access protection to **Unrestricted**, and then **Save** the Page.

    ![Scroll down to page security tab and change authentication to page is public and page access protection to unrestricted](images/page-security.png)

## Task 4: Change application home page

1. Click on application id to return to application overview.

    *Note: Your application id will be different.*

    ![Click on application id to return to application overview](images/return-to-app-home.png)

2. Click on **Edit Application Definition** button in the top right corner of the the overview page.

    ![Click on edit application definition button](images/edit-app-definition.png)

3. Note down your **Application Alias**, can be found in **Definition** section **Name** tab.

    ![Under definition section and name tab you can find application alias](images/app-alias.png)

    **Note: You will need the application alias later on in the workshop to register the app in Code Console.**

4. Click on **User Interface** and under **Attributes** change **Home URL** and **Login URL** to point to **View Page**, use the below URL and then press **Apply Changes** to save.

    **URL:** `f?p=&APP_ID.:VIEW:&APP_SESSION.::&DEBUG.:::`

    ![Click on user interface and under attributes change home url and login url to view page](images/change-home-page.png)

5. Before going forward, note down your workspace, this can be found by clicking on your **Account** in right corner and search for **WORKSPACE**.

    ![Note down the workspace, we will use it later](images/user-workspace.png)

    **Note: You will need the workspace alias later on in the workshop to register the app in Code Console.**

6. You can keep opened Oracle APEX Workspace in your browser or close it but remember to note or bookmark it.

## Acknowledgements

* **Author** - Alexandru Basarab, Software Development Manager, OHAI - Platform Initiatives

* **Contributors**
    * Mircea Iordache, Software Engineer, OHAI - Platform Initiatives
    * Tudor Dragomir, Software Engineer, OHAI - Platform Initiatives
    * Ionut Balan, Software Engineer, OHAI - Platform Initiatives

* **Last Updated By/Date** - Basarab Alexandru, August 2023
