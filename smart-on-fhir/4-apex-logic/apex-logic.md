# Creating an ASCVD Risk Calculator

## Introduction

This lab walks you through the steps to build a fully functional ASCVD (Atherosclerotic Cardiovascular Disease) Risk Calculator.

Estimated Lab Time: -- minutes

### Objectives

In this lab, you will:

* Creating page structure
* Creating page items
* Create item validations
* Assigning values to items
* Creation of charts to represent data
* Display database data in your application
* Esthetics and finishing touches

### Prerequisites

This lab assumes you have:

* An Oracle Cloud account
* All previous labs successfully completed

## Task 1: Creation of Page structures

1. Open View page

    ![Open view page](images/open-view.png)

2. Create patient information container

    Right click on Body and press Create Region

    ![Create patient info region](images/patient-info-region.png)

3. Edit region attributes

    Name and add html

    ![Name and add html](images/patient-info-attr.png)

    Change appearance

    ![Change appearance](images/patient-info-appearance.png)

4. Create Tabs container

    ![Create tabs container](images/tabs-container.png)

    Change template options of tab container

    ![Change template options of tab container](images/tabs-template-options.png)

5. Create Results

    Right click on tabs container and press Create Sub Region
    Name the region: **Results**

    ![Create results container](images/create-sub-region.png)

    Change template options of results container

    ![Change template options of results container](images/results-template-options.png)

6. Create Risk Factors

    Right click on tabs container and press Create Sub Region
    Name the region: **Risk Factors**

    ![Create risk factors container](images/create-sub-region.png)

    Change template options of risk factors container

    ![Change template options of risk factors container](images/risk-factors-options.png)

    Assign to Risk Factors region a static id, naming it **risk-factor**

    ![Assign static id to risk factors](images/risk-factors-static-id.png)

    Condition the region to show only when Request equals value show

    ![Show risk factors only on request](images/risk-factors-condition.png)

7. Create Recommendations

   Right click on tabs container and press Create Sub Region
    Name the region: **Recommendations**

    ![Create recommendations container](images/create-sub-region.png)

   Select Classic Report
    Name the region: **Recommendations**

    ![Create recommendations container](images/recommendations-source.png)
    ```sql
    select item_classes,
           selection,
           icon_class,
           icon_html,
           title,
           description,
           misc,
           actions
    from ASCVD_RECOMMENDATIONS
    ```
    Change Template Options of Header to Hidden but accessible
    ![Change template options](images/recommendations-template-options.png)

    Add a static id and server-side conditioning
    ![Change advanced settings](images/recommendations-advanced.png)

    Change region attributes to show all table rows.
    ![Change report pagination](images/recommendations-attributes.png)

## Task 2: Defining Page items

1. Step 1 - tables sample

## Task 3: Create item validations

## Task 4: Assigning values to items

## Task 5: Create charts to represent data

## Task 6: Use the Autonomous Database to store data

## Task 7: Esthetics and finishing touches

## Learn More

* [URL text 1](http://docs.oracle.com)
* [URL text 2](http://docs.oracle.com)

## Acknowledgements

* **Author** - Alexandru Basarab, Senior Software Engineer, Open Platform

* **Contributors** - Mircea Iordache, Software Engineer, Open Platform

* **Last Updated By/Date** - <Name, Month Year>
