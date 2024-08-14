# Title of the Lab

## Introduction

Generative AI is a fully managed Oracle Cloud Infrastructure service that provides a set of state-of-the-art, customizable large language models (LLMs) that cover a wide range of use cases, including chat, text generation, summarization, and creating text embeddings. Use the Generative AI  playground to try out the ready-to-use pretrained models. It also supports creatin your own fine-tuned custom models based on your own data in a secure dedicated cluster environment

Estimated Lab Time: -- minutes

### OCI Generative AI Playground 

OCI Generative AI Playground allows you chat, generate and summarize content and also show numerical vector embeddings for textual data. It is REST API enabled for programmatic access and allows you to tune the outputs of your query based on certain parameters. It currently allows Cohere command R+ and meta Llama model. In this workshop, all the relevant clinical trials data is generated with Cohere command R+ playground. 

### Objectives

In this lab, you will:
* Learn how to use OCI Generative AI Playground interactively
* Prompt and generate a few clinical trial documents yourself
* Verify the generated document has no personal information
* Prompt to try out some summarization examples on your text
* View generated API code (Python) and get familiarized

### Prerequisites (Optional)

*List the prerequisites for this lab using the format below. Fill in whatever knowledge, accounts, etc. is necessary to complete the lab. Do NOT list each previous lab as a prerequisite.*

This lab assumes you have:
* An Oracle Cloud account in the Chicago or Frankfurt region 
* You have the required policies for OCI Generative AI setup


*This is the "fold" - below items are collapsed by default*

## Task 1: Accessing OCI Generative AI Playground

In this section you will get familiarity with using OCI Generative AI playground console

1. Login to your Oracle cloud tenancy and change your tenancy to US Midwest (chicago)

 ![Connect to US-Midwest Chicago Tenancy](images/lab-11.png)

2. From Hamburger menu (top left corner), pull up Analytics & AI --> AI Services --> Generative AI
![Connect to OCI Gen AI](images/lab-12.png)

## Task 2: Generate a clinical trial in OCI Generative AI Playground

3. Click on the Generative AI -> Overview -> Playground -> Chat and Run the example "Generate a job description" with the cohere-command-r-16k model
![Test OCI Gen AI Example](images/lab-13.png)

4. Copy the following text in the chat window "Generate a clinical trial report on drug evaluation on Advanced Non-Small Cell Lung Cancer" , change the **Maximum output settings** and the **Temperature** settings. Press Submit button to generate a sample clinical trial for a disease. 
![Generate a sample clinical trial document](images/lab-14.png)

5. Note that the PII Information is redacted and substituted
![PII Redaction](images/lab-15.png)

  ![Image alt text](images/sampl.png)

## Task 3: Generate a summary
Copy the generated clinical trial to Playground -> Summarization and generate summary.
 ![Summary](images/lab-16.png)

## Task 4: View generated code
Click on the view code button to see the generated code
1. ![Generated python code](images/lab-17.png)

4. Example with inline navigation icon ![Image alt text](images/sample2.png) click **Navigation**.

5. Example with bold **text**.

   If you add another paragraph, add 3 spaces before the line.

## Task 2: Concise Task Description

1. Step 1 - tables sample

  Use tables sparingly:

  | Column 1 | Column 2 | Column 3 |
  | --- | --- | --- |
  | 1 | Some text or a link | More text  |
  | 2 |Some text or a link | More text |
  | 3 | Some text or a link | More text |

2. You can also include bulleted lists - make sure to indent 4 spaces:

    - List item 1
    - List item 2

3. Code examples

    ```
    Adding code examples
  	Indentation is important for the code example to appear inside the step
    Multiple lines of code
  	<copy>Enclose the text you want to copy in <copy></copy>.</copy>
    ```

4. Code examples that include variables

	```
  <copy>ssh -i <ssh-key-file></copy>
  ```

## Learn More

*(optional - include links to docs, white papers, blogs, etc)*

* [URL text 1](http://docs.oracle.com)
* [URL text 2](http://docs.oracle.com)

## Acknowledgements
* **Author** - <Rajib Ghosh, Master Principal Cloud Architect, OCI Generative AI Center of Excellence>
* **Contributors** -  <Name, Group> -- optional
* **Last Updated By/Date** - <Name, Month Year>
