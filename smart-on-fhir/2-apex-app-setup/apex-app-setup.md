# APEX Application Setup

## Introduction

This lab walks you through creation and initial setup of Oracle APEX application.

Estimated Time: 5 minutes

### Objectives

In this lab, you will:

* Create a new Oracle APEX Application
* Create Oracle APEX Pages

### Prerequisites

This lab assumes you have:

* An Oracle Cloud account or Free Workspace in apex.oracle.com
* All previous labs successfully completed

## Task 1: Create the Application

1. In the App Builder toolbar, click **App Builder**, and click **Create**.

    ![Click on App Builder](images/app-builder.png)

2. On the Create Application page, click **New Application**.

    ![Click on Create](images/new-app.png)

3. On the Create an Application page, for Name, enter **ASCVD Risk Calculator**.

    Click **Create Application**.

    ![Click on Create Application](images/app-details.png)

## Task 2: Launch Page

1. Return to the Application **Home Page**.

   Click **Home Page**..

   ![Click on Home Page](images/edit-home-page.png)

2. Rename Home Page to **Launch** Page.

    ![Click on Create Application](images/rename-home-page.png)

3. Change page security to be a **Public Page** and page protection as **Unrestricted**, and then **Save** the Page.

    ![Edit page security](images/page-security.png)

## Task 3: Use the Create Page Wizard

1. Return to the Application **Home Page**.

   Click **Create Page**..

   On the Create a Page dialog, click **Blank Page**.

   ![Click on Create](images/create-new-page.png)

2. Create **Index Page** by clicking on **Create** button.

   ![Click on Create](images/create-index-page.png)

3. Change page security to be a **Public Page** and page protection as **Unrestricted**, and then **Save** the Page.

    ![Edit page security](images/page-security.png)

4. Repeat the process for the **View** Page

   ![Click on Create](images/create-view-page.png)

5. Change page security to be a **Public Page** and page protection as **Unrestricted**, and then **Save** the Page.

    ![Edit page security](images/page-security.png)

## Task 4: Change application home page

1. Click on application id to return to application overview.

    *Note: Your application id will be different.*

    ![Click on application id to return to application overview](images/return-to-app-home.png)

2. Click on **Edit Application Definition** button in the top right corner of the the overview page.

    ![Click on edit application definition button](images/edit-app-definition.png)

3. Click on **User Interface** and under **Attributes** change **Home URL** and **Login URL** to point to **View Page**

    **URL:** `f?p=&APP_ID.:VIEW:&APP_SESSION.::&DEBUG.:::`

    ![Click on user interface and under attributes change home url and login url to view page](images/change-home-page.png)

## Acknowledgements

* **Author** - Alexandru Basarab, Software Development Manager, Open Platform

* **Contributors**
    * Mircea Iordache, Software Engineer, Open Platform
    * Tudor Dragomir, Software Engineer, Open Platform

* **Last Updated By/Date** - Basarab Alexandru, July 2023
