# OCI Opensearch Configuration and usage (Optional)

## Introduction

This is an optional lab, primarily geared for users who are familiar with OCI Opensearch. This lab shows you how to interact with OCI Opensearch console interface and run basic commands such as creating indexes, running queries to view results. It also shows how Machine learning based Neural search can be configured with OCI Opensearch and model creation and deployment for running hybrid search for the clinical-trials workshop

Estimated Lab Time: -- 10 minutes

### Oracle cloud Infrastructure Opensearch

OCI Search with OpenSearch is a fully managed open source service that makes it easy to deploy, operate, and scale OpenSearch on customizable infrastructure. The cloud implementation of indexed search product is suitable for both lexical and neural searches based on AI/ML models. The product features creation of vector embeddings within the product as well as support for external embeddings only as a vector store. This flexibility along with its managed service capability makes it a good platform for Retrieval Augmented Generation (RAG) implementation for large language models (LLMs) such as Oracle Generative AI.

### Objectives

In this lab, you will:

* Access the Opensearch cluster dashboard from your laptop
* Use Opensearch UI tools such as dashboards and Index Management tools
* View clinical-trial indexes and indexed data
* Test Opensearch access from OCI Data science environment
* Use Opensearch *dev tools* to create neural search models
* Use ingestion pipelines to create vector embeddings
* Use search pipelines and indexes to perform custom hybrid search (i,e lexical and neural together)

### Prerequisites

This lab assumes you have:

* An Oracle Cloud account with US-Chicago region access
* You have successfully provisioned an OCI Opensearch cluster
* You have familiarity with Opensearch commands (GET/PUT/POST..)
* Some familiarity with using ML models is helpful but not required

*This is the "fold" - below items are collapsed by default*

## Task 1: Provision a compute VM

Provision a compute VM in the clinical-trials compartment. The steps are

1. Go to OCI Console menu (left top corner) --> Compute --> Instances

2. Click on create instance and enter the following parameters -
   * Name the instance as *clinical-trials*
   * Under *Add SSH Keys section* choose "Generate a key pair for me" option
   * Download both the private and the public keys to your laptop
   * Click *Create* to create the instance

3. It takes a few minutes for the instance to be created and available

4. Click on the instance name -
   * Note down the *Public IPv4" address
   * Keep the downloaded private key in a directory in the laptop

## Task 2: Accessing Opensearch over web from local laptop

1. Go to OCI Console, search for Opensearch and click on Clusters to open the cluster page and click on the *clinical-trials* cluster

2. Note down the the following into a notepad
   * API Endpoint private IP
   * API Endpoint port (i,e 9200)
   * Opensearch dashboard private IP
   * Dashboard API Endpoint port (i,e 5601)

3. Create a batch file (windows) or a shell script (Mac) with the following command to create an SSH tunnel to the service through the compute VM created.  Substitute the above noted parameters as shown above in your script and run. For Mac/Linux make sure you change the file execution mode as *chmod +x scriptname*
```
ssh -C -v -t -L 127.0.0.1:5601:<os_dashboard_pvt_ip>:5601 -L 127.0.0.1:9200:<os_API_private_ip>:9200 opc@<public ip for compute instance> -i <ssh_key>
```

4. Run the above batch file or shell script

5. Type in *<https://localhost:5601>* on your browser. Type in your Opensearch userid (i,e *osmaster*) and your password to connect.

  ![Opensearch dashboard][images/LAB3OS-8.png]

2. Run the following command in a shell script (Mac) or windows powershell/batch script

```
# Test opensearch connection from external local laptop
ssh -C -v -t -L localhost:5601:<Opensearch dashboard IP >:5601 -L localhost:9200:<Opensearch API IP>:9200 opc@<compute VM public IP> -i <SSH Private key>
```

3. Connect to Opensearch dashboard as shown below
 ![Image alt text][def]


## Task 3: Basic Opensearch familiarity

For this workshop, basic familiarity with OCI Opensearch is needed. The following steps can help you quickly get you running queries, view indexes and indexed documents

4. Some OpenSearch commands of relevance (below)
  
  **View Indexes** - use Index Management--> Indices.
  
  **Opensearch UI Interaction** - use dev tools or POSTMAN
  
  **View Indexed data** - Create an index pattern from the dashboard management --> Index pattern with the same name as the Index name and view indexed data through Discover men

* [URL text 1](http://docs.oracle.com)
* [URL text 2](http://docs.oracle.com)

## Acknowledgements

* **Author** - Rajib Ghosh, Master Principal Cloud Architect, OCI AI and Gen AI Center of Excellence
* **Last Updated By/Date** - Aug 2024


[def]: images/LAB3OS-8.png