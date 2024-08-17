# Title of the Lab

## Introduction

This lab focuses on the basics of creating vector embeddings with the help of an open source pre-trained embedding model and also with OCI Generative AI embedding model. The purpose is to show a comparison of the text retrieval and scores between two embedding models. This enables us to plugin the best possible embedding model that is best suited for retrieval searches on a Retrieval Augmented Generation (RAG) scenario

Estimated Lab Time: -- 10 minutes

### About Embedding models
In this lab, we use a Hugging face pre-trained sentence transformer embedding model all-MiniLM-L6-v2 and Oracle cloud Generative AI Cohere command Embedding model to create vectors from text and store in a vector store such as OCI Opensearch. This provides a framework to compare search scores on retrievals, fine tune and test models that is appropriate for the textual data.

### Objectives

*List objectives for this lab using the format below*

In this lab, you will:
* Create vector embeddings on textual clinical data
* Create vector embeddings on short and long textual data
* Create vector embeddings with an open source pre-trained model and OCI Generative AI embedding model
* Test query retrieval scores across various models and various short and long text segments. 

### Prerequisites

This lab assumes you have:
* Knowledge of Oracle cloud services 
* Some knowledge of OCI Data science and OCI Opensearch
* Programmatic understanding of python
* Some understanding of vector embeddings, Generative AI and Large language models (LLMs)
* Some understanding of the langchain framework


*This is the "fold" - below items are collapsed by default*

## Task 1: Vectorize and load data using open source pre-trained model

1. Open up the notebook demo_vector_search_ext.ipynb

2. Execute the notebook cells to run embeddings with all-MiniLM-L6-v2 model.

3. Load Clinical trial title and Description along with their embeddings to an Opensearch Index

4. Execute vector queries against Title and Descriptions and retrieve the scores

5. Execute the rest of the notebook cells to run the above with OCI Generative AI Embedding models

6. Test both the models by putting your own queries to see how retrieval score and results vary with your queries

7. Increase the volume of disease Title, Description text content and volume and check retrieval scores

8. Bring in other sentence transformer models and change the embedding parameters to experiment their effects on the overall score.

9. Execute the notebook across large volumes of textual clinical metadata

	![Image alt text](images/sample1.png)

2. Step 2

  ![Image alt text](images/sample1.png)

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
* **Author** - <Name, Title, Group>
* **Contributors** -  <Name, Group> -- optional
* **Last Updated By/Date** - <Name, Month Year>
