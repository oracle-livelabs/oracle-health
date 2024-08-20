# OCI Data Science setup

## Introduction

In this lab, we will setup the OCI Data science environment necessary for developing code, API calls, customization and automation for generation of compliance documents

Estimated Lab Time: -- 10 minutes

### Oracle cloud Data science

OCI Data science is a managed Python based Jupyter lab based notebook development environment for developing and deploying Machine learning and AI models including Generative AI services. The service supports both CPU and GPU infrastructure, has access to OCI lakehouse storage and processes like Object store, Autonomous database as well as Data flow, catalog and other services.  

### Objectives

In this lab, you will:

* Deploy a pre-built langchain based conda environment
* Test connectivity to OCI Generative AI services
* Test connectivity with OCI Opensearch services
* Deploy OCI CLI connectivity with OCI Object store
* Download and install required pip libraries
* Install Compliance Document Generation Notebooks

### Prerequisites

This lab assumes you have:

* An Oracle Cloud account with admin privileges in the Chicago region
* A running Data science notebook session environment
* A running OCI Opensearch service

## Task 1: Deploy a pre-built langchain conda environment

1. From the Launcher (File-->New Launcher if needed), click on the Environment explorer to view the list of conda environments
  ![Install pre-built conda](images/lab3-ds-cnd-1.png)

2. Filter the conda environment to view the ones containing the langchain libraries and select the one marked below
  ![Install pre-built conda](images/lab3-ds-cnd-2.png)

3. Copy the command command below to run in a terminal session
  ![Install pre-built conda](images/lab3-ds-cnd-2-1.png)

4. Open up a Terminal session as shown from the Launcher
  ![Install pre-built conda](images/lab3-ds-cnd-3.png)

5. Paste and run the ***odsc conda install -s pytorch21_p39_gpu_v1*** command as shown. It may take a few minutes to install the conda environment. Make sure it is successfully completed and installed as shown
  ![Install pre-built conda](images/lab3-ds-cnd-4.png)

## Task 2: Download and install required pip libraries

1. Locate the notebooks in the /home/datascience/conda directory. This directory will be used for creating and running all notebooks for the workshop
  ![Install pip libraries](images/lab3-ds-note-1.png)

2. Create a new notebook
  ![Install pip libraries](images/lab3-ds-note-2.png)

3. Change the kernel to the installed conda environment
  ![Install pip libraries](images/lab3-ds-note-3.png)

4. Copy and execute to install the pip libraries as shown below in the notebook cell. Press *Shift+Enter* to execute the notebook cell

```bash
!pip install langchain
!pip install langchain_community
!pip install opensearch-py
!pip install sentence-transformers
!pip install tabulate
!pip install pypdf
!pip install fillpdf
```

  ![Install pip libraries](images/lab3-ds-note-4.png)

NOTE: It is possible that some of the libraries are pre-installed in the environment. Ignore if that is so. You may also have incompatibilities with other libraries in the pre-built conda. You may ignore them if that occurs. Comment them as shown below

  ![Install pip libraries](images/lab3-ds-note-5.png)

## Task 3: Install Workshop Compliance Document Generation code

1. Download [LAB-3 Conda zip](https://orasenatdpltintegration03.objectstorage.us-chicago-1.oci.customer-oci.com/p/SfhRh7OEvLj9yR0hAIM3BwT7bCpi3jALfP6NqoCODU7mFe51nl1PeBPWcJj2El9K/n/orasenatdpltintegration03/b/clinical-trials/o/conda.zip) and upload to the home directory */home/datascience* in the notebook session as shown below. You can also directly download in your environment using *wget <download link>* as well from a data science  terminal session.
  ![Install lab notebooks](images/lab3-ds-note-6.png)

2. Open up a terminal session and run *unzip conda.zip* as shown below.
  ![Install lab notebooks](images/lab3-ds-note-7.png)

## Task 4: Test connectivity with OCI Opensearch services

1. Copy the Opensearch API URL from the console
  ![Test Opensearch Access](images/LAB3-ds-os-1.png)

2. Change to *cd /home/datascience/conda/scripts* directory in a data science terminal window and run. Sucecssful connection should display the json as shown below

```bash
curl -k -u <os_userid>:<os_password> <os_api_endpoint>:9200
```

  ![Test Opensearch Access](images/lab3-ds-os-2.png)

## Task 5: Configure OCI CLI Connectivity to Object store and Generative AI

1. Get your user OCID and your Tenancy ID from console as shown below
  ![Test Opensearch Access](images/lab3-ds-cli-1.png)
  ![Test Opensearch Access](images/lab3-ds-cli-2.png)
  ![Test Opensearch Access](images/lab3-ds-cli-3.png)

2. Open up a terminal window and enter *oci os ns get*. Enter values as follows

```text
Do you want to create a new config file ? Y
Create logging through a browser? n
Location of your config: Enter
Enter user OCID : <copied from console in previous step>
Enter Tenancy OCID : <copied from console in previous step>
Region by index or name : us-chicago-1
Do you want to generate a new RSA key pair? Y
Enter directory for keys created : Enter
Enter name of your key : Enter
Enter passphrase: N/A
Re-enter passphrase : N/A
```

  ![Test Opensearch Access](images/lab3-ds-cli-4.png)
  ![Test Opensearch Access](images/lab3-ds-cli-5.png)

1. Move and download your generated public key pem file
  ![Test Opensearch Access](images/lab3-ds-cli-7.png)

2. Upload the downloaded public API key to OCI Console
  ![Test Opensearch Access](images/lab3-ds-cli-8.png)
  ![Test Opensearch Access](images/lab3-ds-cli-9.png)
  ![Test Opensearch Access](images/lab3-ds-cli-10.png)

3. Test out the OCI CLI access after from Data science notebook session.

  ![Test Opensearch Access](images/lab3-ds-cli-11.png)

## Task 6: Test connectivity to OCI Generative AI services

1. Open up the Generative AI Generation Interface for API code testing. Please note that the *command r* chat interface is not OCI API enabled as of yet and is not required for this workshop.
  ![Test Opensearch Access](images/lab3-ds-gai-1.png)

2. Generate a query and click on the *View Code* button and select *python* as the Language
  ![Test Opensearch Access](images/lab3-ds-gai-2.png)

3. Copy the generated code to a notebook cell. You should be able to generate output as shown below
  ![Test Opensearch Access](images/lab3-ds-gai-3.png)

## Learn More

* [Generative AI made easy with OCI Datascience](https://www.oracle.com/artificial-intelligence/generative-ai/generative-ai-service/)
* [Data science github repository](https://github.com/oracle-samples/oci-data-science-ai-samples/tree/main/ai-quick-actions)

## Acknowledgements

* **Author** - Rajib Ghosh, Master Principal Cloud Architect, OCI AI and Gen AI Center of Excellence
* **Last Updated By/Date** - Aug 2024
