# Create ASCVD Risk Calculator

## Introduction

This lab walks you through the steps to build a fully functional ASCVD (Atherosclerotic Cardiovascular Disease) Risk Calculator.

Estimated Lab Time: -- minutes

### Objectives

In this lab, you will:

* Create page structure
* Create page items
* Create item validations
* Assign values to items
* Create charts to represent data
* Display database data in your application
* Esthetics and finishing touches

### Prerequisites

This lab assumes you have:

* An Oracle Cloud account
* All previous labs successfully completed

## Task 1: Import supporting objects

  [Click here](files/supporting_objects.sql) to download the supporting objects sql.

1. In the main menu, select SQL Workshop, click SQL Scripts

   ![Open SQL Scripts](images/open-sql-scripts.png)

2. Click **Upload** and select previously downloaded supporting objects, then press **Upload**

    ![Upload supporting objects](images/upload-supporting-objects.png)

3. Run uploaded script

   ![Run supporting objects](images/run-script.png)

4. Confirm by clicking on **Run Now**

   ![Confirm supporting objects](images/run-now.png)

5. Results should show 9 statements processed successfully.

   ![Successful run supporting objects](images/successful-run.png)

## Task 2: Create application structure

1. Open **View** page

  ![Open view page](images/open-view.png)

2. Create patient information container

  Right click on **Body** and press **Create Region**

  ![Create patient info region](images/patient-info-region.png)

  Name and add html

    ```html
    <copy>
    <div id="patient-info"></div>
    </copy>
    ```

  ![Name and add html](images/patient-info-attr.png)

  Change appearance to **Hero** and add **fa-user** as icon

  ![Change appearance](images/patient-info-appearance.png)

3. Create **Tabs** container

  Right click on **Body** and press **Create Region**

  ![Create tabs region](images/patient-info-region.png)

  Select **Tabs Container** template
  ![Create tabs container](images/tabs-container.png)

  Change template options of tab container

  ![Change template options of tab container](images/tabs-template-options.png =50%x*)

1. Create **Results**

  Right click on tabs container and press **Create Sub Region**
  Name the region: **Results**

  ![Create results container](images/create-sub-region.png)

  Change template options of results container

  ![Change template options of results container](images/results-template-options.png =50%x*)

5. Create **Risk Factors**

  Right click on tabs container and press **Create Sub Region**
  Name the region: **Risk Factors**

  ![Create risk factors container](images/create-sub-region.png)

  Change template options of risk factors container

  ![Change template options of risk factors container](images/risk-factors-options.png =50%x*)

  Assign to **Risk Factors** region a static id, naming it **risk-factor**

  ![Assign static id to risk factors](images/risk-factors-static-id.png)

  Condition the region to show only when Request equals value **show**

  ![Show risk factors only on request](images/risk-factors-condition.png)

6. Create **Recommendations**

  Right click on tabs container and press **Create Sub Region**

  ![Create recommendations container](images/create-sub-region.png)

  Select Classic Report and name the region: **Recommendations**

  ![Create recommendations container](images/recommendations-source.png =50%x*)

    ```sql
    <copy>
    select item_classes,
          selection,
          icon_class,
          icon_html,
          title,
          description,
          misc,
          actions
    from ASCVD_RECOMMENDATIONS
    </copy>
    ```

  Change template options of header to **Hidden but accessible**
  ![Change template options](images/recommendations-template-options.png =50%x*)

  Add a static id and server-side conditioning
  ![Change advanced settings](images/recommendations-advanced.png =50%x*)

  Change region attributes to show all table rows.
  ![Change report pagination](images/recommendations-attributes.png =50%x*)

## Task 3: Define page objects

1. Right click on **Results** container and press **Create Page Item**

   ![Create page item](images/create-page-item.png =50%x*)

2. Create radio group **Gender**

  **Identification > Name:** `P3_GENDER`

  **Identification > Type:** Radio Group

  **Label:** Gender

  **Settings > Number of Columns:** 2

  **Appearance > Template:** Required - Above

  **Appearance > Template Option > Required Indicator:** Asterisk

  **Appearance > Template Option > Item Group Display:** Display as Pill Button

  ![Create gender item](images/radio-group.png =50%x*)

  Select static values under type of **List of Values** and add the following values

  ![Add list of values](images/gender-lov.png =50%x*)

  **List of Values > Display Extra Values:** Unchecked

  **List of Values > Display Null Value:** Unchecked

3. Create number field **Total Cholesterol (mg/dL)**

  **Identification > Name:** `P3_TOTAL_CHOLESTEROL`

  **Identification > Type:** Number Field

  **Label:** Total Cholesterol (mg/dL)

  **Layout > Start New Row:** Unchecked

  **Appearance > Template:** Required - Above

  **Appearance > Template Option > Required Indicator:** Asterisk

  **Appearance > Value Placeholder:** 130 - 320

4. Create radio group **Diabetes**

  **Identification > Name:** `P3_DIABETES`

  **Identification > Type:** Radio Group

  **Label:** Diabetes

  **Settings > Number of Columns:** 2

  **Layout > Start New Row:** Unchecked

  **Appearance > Template:** Required - Above

  **Appearance > Template Option > Required Indicator:** Asterisk

  **Appearance > Template Option > Item Group Display:** Display as Pill Button

  Select static values under type of **List of Values** and add the following values

  ![Add list of values](images/yes-no-lov.png =50%x*)

  **List of Values > Display Extra Values:** Unchecked

  **List of Values > Display Null Value:** Unchecked

5. Create number field **Age**

  **Identification > Name:** `P3_AGE`

  **Identification > Type:** Number Field

  **Label:** Age

  **Appearance > Template:** Required - Above

  **Appearance > Template Option > Required Indicator:** Asterisk

6. Create number field **HDL - Cholesterol (mg/dL)**

  **Identification > Name:** `P3_HDL`

  **Identification > Type:** Number Field

  **Label:** HDL - Cholesterol (mg/dL)

  **Layout > Start New Row:** Unchecked

  **Appearance > Template:** Required - Above

  **Appearance > Template Option > Required Indicator:** Asterisk

  **Appearance > Value Placeholder:** 20 - 100

7. Create radio group **Current Smoking**

  **Identification > Name:** `P3_SMOKING`

  **Identification > Type:** Radio Group

  **Label:** Current Smoking

  **Settings > Number of Columns:** 2

  **Layout > Start New Row:** Unchecked

  **Appearance > Template:** Required - Above

  **Appearance > Template Option > Required Indicator:** Asterisk

  **Appearance > Template Option > Item Group Display:** Display as Pill Button

  Select static values under type of **List of Values** and add the following values

  ![Add list of values](images/yes-no-lov.png =50%x*)

  **List of Values > Display Extra Values:** Unchecked

  **List of Values > Display Null Value:** Unchecked

8. Create radio group **Race**

  **Identification > Name:** `P3_RACE`

  **Identification > Type:** Radio Group

  **Label:** Race

  **Settings > Number of Columns:** 2

  **Layout > Start New Row:** Checked

  **Appearance > Template:** Required - Above

  **Appearance > Template Option > Required Indicator:** Asterisk

  **Appearance > Template Option > Item Group Display:** Display as Pill Button

  Select static values under type of **List of Values** and add the following values

  ![Add list of values](images/race-lov.png =50%x*)

  **List of Values > Display Extra Values:** Unchecked

  **List of Values > Display Null Value:** Unchecked

9. Create number field **Systolic Blood Pressure**

  **Identification > Name:** `P3_SYSTOLIC_BP`

  **Identification > Type:** Number Field

  **Label:** Systolic Blood Pressure

  **Layout > Start New Row:** Unchecked

  **Appearance > Template:** Required - Above

  **Appearance > Template Option > Required Indicator:** Asterisk

  **Appearance > Value Placeholder:** 90 - 200

10. Create radio group **Treatment for Hypertension**

  **Identification > Name:** `P3_HYPERTENSION`

  **Identification > Type:** Radio Group

  **Label:** Treatment for Hypertension

  **Settings > Number of Columns:** 2

  **Layout > Start New Row:** Unchecked

  **Appearance > Template:** Required - Above

  **Appearance > Template Option > Required Indicator:** Asterisk

  **Appearance > Template Option > Item Group Display:** Display as Pill Button

  Select static values under type of **List of Values** and add the following values

  ![Add list of values](images/yes-no-lov.png =50%x*)

  **List of Values > Display Extra Values:** Unchecked

  **List of Values > Display Null Value:** Unchecked

11. Right click on **Region Body** under Results container and press **Create Button**

  ![Create region button](images/create-button.png =50%x*)

12. Change button attributes as follows

  **Identification > Button Name:** CALCULATE_RISK

  **Label:** See Risk Score

  **Appearance > Template Options > Size:** Large

  **Appearance > Template Options > Type:** Primary

13. Create a new branch by selecting processing tab and right click on **Processing** and click **Create Branch**

  ![Create branch](images/create-branch.png =50%x*)

14. Change branch attributes

  **Identification > Name:** Go To Page view

  **Behavior > Type:** Page or URL (Redirect)

  **Behavior > Target:** view

  ![Branch target](images/branch-target.png =50%x*)

  **Server-side Condition > When Button Pressed:** CALCULATE_RISK

## Task 4: Create validations

1. Go to processing and right click on **Validating** and select **Create Validation**

  ![Go to validations](images/go-to-processing.png)

2. Create **Age** validation

  **Identification > Name:** `P3_AGE` range plsql

  **Validation > Type:** Function Body (returning Boolean)

  **PL/SQL Function Body:**

    ```PlSql
    <copy>
    begin
      if :P3_AGE between 20 and 79 then
        return true;
      end if;
      return false;
    end;
    </copy>
    ```

  **Error > Error Message:** #LABEL# must be within 20-79

  **Error > Associated Item:** `P3_AGE`

  **Server-side Condition > When Button Pressed:** CALCULATE_RISK

  ![Create age validation](images/create-validation.png =50%x*)

3. Create the rest of the validations by right click on `P3_AGE` range plsql and select duplicate

  Change Name, PL/SQL Code, Error Message and Associated Item

  ![Duplicate age validation](images/duplicate-validation.png =50%x*)

4. Total Cholesterol (mg/dL) validation

  **Identification > Name:** `P3_TOTAL_CHOLESTEROL` range plsql

  **PL/SQL Function Body:**

    ```PlSql
    <copy>
    begin
      if :P3_TOTAL_CHOLESTEROL between 130 and 320 then
        return true;
      end if;
      return false;
    end;
    </copy>
    ```

  **Error > Error Message:** Total Cholesterol must be within 130-320 mg/dL

  **Error > Associated Item:** `P3_TOTAL_CHOLESTEROL`

5. HDL - Cholesterol (mg/dL) validation

    **Identification > Name:** `P3_HDL` range plsql

    **PL/SQL Function Body:**

    ```PlSql
    <copy>
    begin
      if :P3_HDL between 20 and 100 then
        return true;
      end if;
      return false;
    end;
    </copy>
    ```

    **Error > Error Message:** HDL must be within 20-100 mg/dL

    **Error > Associated Item:** `P3_HDL`

6. Systolic Blood Pressure validation

    **Identification > Name:** `P3_SYSTOLIC_BP` range plsql

    **PL/SQL Function Body:**

    ```PlSql
    <copy>
    begin
      if :P3_SYSTOLIC_BP between 90 and 200 then
        return true;
      end if;
      return false;
    end;
    </copy>
    ```

    **Error > Error Message:** SBP must be within 90-200 mmHg

    **Error > Associated Item:** `P3_SYSTOLIC_BP`

7. Create Item is not null validation for the following items

  `P3_DIABETES, P3_SMOKING, P3_HYPERTENSION, P3_RACE, P3_GENDER`

  ![Create item is not null](images/null-validation.png =50%x*)

  Note: change each time **Validation > Item** and **Error > Associated Item:** to the corresponding item.

## Task 5: Assign values

1. Under Dynamic Actions right click on Page Load and click **Create Dynamic Action**

  Name the Dynamic Action: **Show Patient Info**

  ![Create dynamic action](images/create-da.png)

2. Change the Show action under True into **Execute JavaScript Code**

    ![Open view page](images/create-da.png)

  **Identification > Name:** Set Patient Info

  **Identification > Action:** Execute JavaScript Code

  **Settings > Code**
    ```js
    <copy>
    let patientInfo = JSON.parse(sessionStorage.getItem("ASCVDRisk.patientInfo"));

    if (patientInfo !== null) {
      $("#patient-info").append(patientInfo.firstName + ' ' + patientInfo.lastName + ' </br> ' +
        patientInfo.age + ' yrs ' + patientInfo.gender + ' DOB: ' + patientInfo.birthDateDisplay);
    }
    </copy>
    ```

    **Execution > Fire on Initialization:** Checked

3. Click on True and add a new Action

   ![Create true action](images/create-true-action.png =50%x*)

  **Identification > Name:** Retrieve Patient Data

  **Identification > Action:** Execute JavaScript Code

  **Settings > Code**
    ```js
    <copy>
    (function() {
        let patientInfo = JSON.parse(sessionStorage.getItem("ASCVDRisk.patientInfo"));

        apex.item("P3_AGE").setValue(patientInfo.age);
        apex.item("P3_GENDER").setValue(patientInfo.gender);
        apex.item("P3_TOTAL_CHOLESTEROL").setValue(patientInfo.totalCholesterol);
        apex.item("P3_HDL").setValue(patientInfo.hdl);
        apex.item("P3_SYSTOLIC_BP").setValue(patientInfo.systolicBloodPressure);
        apex.item("P3_DIABETES").setValue(patientInfo.relatedFactors.diabetic);
        apex.item("P3_SMOKING").setValue(patientInfo.relatedFactors.smoker);
        apex.item("P3_HYPERTENSION").setValue(patientInfo.relatedFactors.hypertensive);
    })()
    </copy>
    ```

  **Affected Elements > Selection Type:** Item(s)

  **Affected Elements > Item(s):**
  `P3_AGE,P3_GENDER,P3_TOTAL_CHOLESTEROL,P3_HDL,P3_SYSTOLIC_BP,P3_DIABETES,P3_SMOKING,P3_HYPERTENSION`

  Note: If you followed the workshop exactly and named all the objects as above then you can copy/paste them, if not change with the according object names.

## Task 6: Represent data

1. Right click on **Region Body** under Risk Factors container and press **Create Region**
   ![Create chart region](images/create-chart.png =50%x*)

  **Identification > Name:** Chance of heart attack or stroke

  **Identification > Type:** Chart

2. Create **Current Risk** series

   Click under **Series** on New and change the following attributes

   **Identification > Name:** Current Risk

   **Source > Type:** SQL Query

   **Source > SQL Query:**

    ```sql
    <copy>
      select ASCVD_RISK_CALCULATOR.computeTenYearScore(:P3_AGE,
                                                      :P3_TOTAL_CHOLESTEROL,
                                                      :P3_HDL,
                                                      :P3_SYSTOLIC_BP,
                                                      :P3_HYPERTENSION,
                                                      :P3_SMOKING,
                                                      :P3_DIABETES,
                                                      :P3_RACE,
                                                      :P3_GENDER) / 100 as chart_value,
            '10 Year Risk' as chart_label
      from dual where :P3_AGE > 39
      union
      select ASCVD_RISK_CALCULATOR.computeLifetimeRisk(:P3_AGE,
                                                      :P3_TOTAL_CHOLESTEROL,
                                                      :P3_HDL,
                                                      :P3_SYSTOLIC_BP,
                                                      :P3_HYPERTENSION,
                                                      :P3_SMOKING,
                                                      :P3_DIABETES,
                                                      :P3_RACE,
                                                      :P3_GENDER) / 100 as chart_value,
            'Lifetime Risk' as chart_label
      from dual where :P3_AGE < 60
    </copy>
    ```

  **Column Mapping > Label:** `CHART_LABEL`

  **Column Mapping > Value:** `CHART_VALUE`

  **Label > Show:** Checked

  **Label > Position:** Outside Slice

1. Create **Lowest Possible Risk** series

   Right Click on **Series** and create a new series

   ![Create new chart series](images/create-new-series.png =50%x*)

   **Identification > Name:** Lowest Possible Risk

   **Source > Type:** SQL Query

   **Source > SQL Query:**

    ```sql
    <copy>
    select ASCVD_RISK_CALCULATOR.computeLowestTenYear(:P3_AGE, :P3_RACE, :P3_GENDER) / 100 as chart_value,
          '10 Year Risk' as chart_label
    from dual where :P3_AGE > 39
    union
    select ASCVD_RISK_CALCULATOR.computeLowestLifetime(:P3_AGE, :P3_RACE, :P3_GENDER) / 100 as chart_value,
          'Lifetime Risk' as chart_label
    from dual where :P3_AGE < 60
    </copy>
    ```

  **Column Mapping > Label:** `CHART_LABEL`

  **Column Mapping > Value:** `CHART_VALUE`

  **Label > Show:** Checked

  **Label > Position:** Outside Slice

## Task 7 (Optional): Esthetics and finishing touches

1. Select rendering tab and open page attributes

  ![Go to page rendering](images/page-rendering.png)

2. Change the following attributes

  **Appearance > Page Template:** Minimal (No Navigation)

  **CSS > Inline:**

    ```css
    <copy>
    .apex-button-group label, .t-Form-fieldContainer--radioButtonGroup .apex-item-group--rc label {
    padding-block-end: calc(var(--a-field-input-padding-y, .25rem) - var(--a-field-input-border-width, 1px));
    padding-block-start: var(--ut-field-fl-label-offset,calc(var(--a-field-input-padding-y, .25rem) - var(--a-field-input-border-width, 1px)));
    padding-inline-end: calc(var(--a-field-input-padding-x, .25rem) - var(--a-field-input-border-width, 1px));
    padding-inline-start: var(--ut-field-input-padding-x-offset,calc(var(--a-field-input-padding-x, .25rem) - var(--a-field-input-border-width, 1px)));
    }
    </copy>
    ```

3. Click on dynamic action tab and right click on **Events** and create a **Dynamic Action**

    ![Dynamic action attributes](images/show-risck-factors.png =50%x*)

  **Identification > Name:** Show Risck Factors

  **When > Event:** After Refresh

  **When > Selection Type:** Region

  **When > Region:** Chance of heart attack or stroke

  **Server-side Condition > Type:** Request = Value

  **Server-side Condition > Value:** show

## Acknowledgements

* **Author** - Alexandru Basarab, Senior Software Engineer, Open Platform

* **Contributors** - Mircea Iordache, Software Engineer, Open Platform

* **Last Updated By/Date** - Basarab Alexandru, July 2023
