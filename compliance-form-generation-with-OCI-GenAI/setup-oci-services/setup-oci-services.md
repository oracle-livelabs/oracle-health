# LAB-1: Setting up OCI Services

## Introduction

In this lab, we perform setting the Oracle cloud environment for running the workshop successfully.

Estimated Lab Time: -- 15 minutes

### Objectives

In this lab, you will:

* Set up the workshop compartment
* Set up OCI Networking components
* Set up OCI object storage buckets
* Set up OCI Compute instance
* Set up OCI Opensearch Service
* Set up OCI Data science service

### Prerequisites

This lab assumes you have:

* An Oracle Cloud account with administrative access
* Working familiarity in the OCI cloud environment
* Familiarity with cloud services, access, networking

### Recommendations

This workshop uses the name **clinical-trials** for most of the objects in the workshop for ease of reference. Some recommendations -

1. Use **clinical-trials** for naming all cloud resources
2. Use same password for accessing all cloud resources
3. Please note that this is a recommendation for easy working with the workshop

### Prerequisites

* You must have your email address registered with Oracle to provision a cloud tenancy
* You must have administrator privileges in your tenancy

## Task 1: Setup compartment

1. Pull down the Oracle cloud hamburger menu and search for compartments
 ![Setup Compartment](images/lab1-comp-1.png)
2. Create the compartment called clinical-trials under the root compartment. Verify it is successfully created as shown below
 ![Setup Compartment](images/lab1-comp-2.png)
 ![Setup Compartment](images/lab1-comp-3.png)

## Task 2: Setup OCI Networking components

1.Setup a virtual cloud network (VCN) called "clinical-trials" in the clinical-trials compartment. Use VCN wizard option (shown below)

 ![setup VCN](images/lab1-vcn-0.png)
 ![setup VCN](images/lab1-vcn-1.png)
 ![setup VCN](images/lab1-vcn-2.png)
 ![setup VCN](images/lab1-vcn-3.png)
 ![setup VCN](images/lab1-vcn-4.png)
 ![setup VCN](images/lab1-vcn-5.png)
 ![setup VCN](images/lab1-vcn-6.png)

 2.Add two Ingress rules entry to the private subnet security list for ports 9200 and 5601 for Opensearch access

 ![setup VCN](images/lab1-sec-1.png)
 ![setup VCN](images/lab1-sec-2.png)
 ![setup VCN](images/lab1-sec-3.png)
 ![setup VCN](images/lab1-sec-4.png)
 ![setup VCN](images/lab1-sec-5.png)
 ![setup VCN](images/lab1-sec-6.png)
 ![setup VCN](images/lab1-sec-7.png)
 ![setup VCN](images/lab1-sec-8.png)

## Task 3: Set up OCI Object storage buckets

1. Setup an object storage bucket in the clinical-trials compartment as shown below
 ![setup Object storage bucket](images/lab1-bucket-1.png)
 ![setup Object storage bucket](images/lab1-bucket-2.png)
 ![setup Object storage bucketN](images/lab1-bucket-3.png)

## Task 4: Set up an OCI Compute instance

1. Setup an OCI compute instance *clinical-trials* in the *clinical-trials* compartment. This is required for tunneling into the OCI Opensearch instance from your laptop.
 ![setup OCI Compute](images/lab1-compute-0.png)
 ![setup OCI Compute](images/lab1-compute-1.png)

2. Generate a new SSH key pair and download both the private and public key pair to your laptop. You will need this to SSH login to the compute instance
 ![setup OCI Compute](images/lab1-compute-2.png)

3. Make sure that your compute instance is provisioned and is running.
 ![setup OCI Compute](images/lab1-compute-3.png)

## Task 5: Set up an OCI Opensearch service

This involves setting up OCI Opensearch policies and creating an Opensearch instance. Please note that it can take up to 10 minutes to provision an Opensearch service instance

1.Setup OCI Opensearch policy "clinical-trials" in the "clinical_trials" compartment as shown below
 ![setup Opensearch policy](images/lab1-pol-1.png)
 ![setup Opensearch policy](images/lab1-pol-2.png)

2.Issue the following code in the policy builder manual editor below and hit create

```text
<copy>
allow group SearchOpenSearchAdmins to manage vnics in compartment clinical-trials
allow group SearchOpenSearchAdmins to manage vcns in compartment clinical-trials
allow group SearchOpenSearchAdmins to manage subnets in compartment clinical-trials
allow group SearchOpenSearchAdmins to manage network-security-groups in compartment clinical-trials
allow group SearchOpenSearchAdmins to manage opensearch-family in compartment clinical-trials
allow group SearchOpenSearchAdmins to manage vnics in compartment clinical-trials
</copy>
```

3. Set up the opensearch policies as shown below

 ![setup Opensearch policy](images/lab1-pol-3.png)

3.Create the Opensearch cluster clinical-trials in the clinical-trials compartment
 ![setup Opensearch cluster](images/lab1-os-1.png)
 ![setup Opensearch cluster](images/lab1-os-2.png)
 ![setup Opensearch cluster](images/lab1-os-3.png)
 ![setup Opensearch cluster](images/lab1-os-11.png)

4.Enter **osmaster** as the user and your preferred common password. Create the cluster with all the default options as shown below

 ![setup Opensearch cluster](images/lab1-os-4.png)
 ![setup Opensearch cluster](images/lab1-os-5.png)
 ![setup Opensearch cluster](images/lab1-os-6.png)
 ![setup Opensearch cluster](images/lab1-os-7.png)
 ![setup Opensearch cluster](images/lab1-os-8.png)
 ![setup Opensearch cluster](images/lab1-os-12.png)

5.Note down the API endpoint , Private IP , Opensearch Dashboard API endpoint and Dashboard Private IP for later usage

## Task 6: Set up the OCI Data science service policies

Service policies are required for Data science environment setup. This workshop requires tenancy level policies to be setup at the root compartment level.

1. Go to the OCI Data science service.

 ![setup OCI Data Science policy](images/lab1-ds-pol-0.png)

2. Locate the Data science policies as shown to follow the steps

 ![setup OCI Data Science policy](images/lab1-ds-pol-1.png)

3.Create a dynamic group for Data science. Dynamic group provides easy and secure authenticated run-time access to OCI resources for data science sessions

 ![setup OCI Data Science policy](images/lab1-ds-pol-2.png)
 ![setup OCI Data Science policy](images/lab1-ds-pol-3.png)
 ![setup OCI Data Science policy](images/lab1-ds-pol-4.png)
 ![setup OCI Data Science policy](images/lab1-ds-pol-5.png)
 ![setup OCI Data Science policy](images/lab1-ds-pol-6.png)

4.Setup a policy called *clinical-trials* in the **root** compartment of the tenancy as shown below

 ![setup OCI Data Science policy](images/lab1-ds-pol-7.png)
 ![setup OCI Data Science policy](images/lab1-ds-pol-8.png)

5.Use the following policy statements and hit create

```text
<copy>
allow service datascience to use virtual-network-family in tenancy
allow group Administrators to use virtual-network-family in tenancy
allow group Administrators to manage data-science-family in tenancy
allow dynamic-group clinical-trials to manage data-science-family in tenancy
allow group Administrators to manage generative-ai-family in tenancy
</copy>
```

 ![setup OCI Data Science policy](images/lab1-ds-pol-10.png)

## Task 7: Set up an OCI Data science project

1. Setup an OCI Data science project

 ![setup OCI Data Science project](images/lab1-ds-1.png)
 ![setup OCI Data Science project](images/lab1-ds-2.png)
 ![setup OCI Data Science project](images/lab1-ds-3.png)

## Task 8: Set up an OCI Data science Notebook session

1.Create a notebook session called *clinical-trials* with the compute CPU and memory specifications as shown below. Select the *Custom Networking* option with a *private subnet* for the build.

 ![setup OCI Data Science notebook session](images/lab1-ds-4.png)
 ![setup OCI Data Science notebook session](images/lab1-ds-5.png)

2.Use a minimum compute shape of 4oCPU and 64GB of memory from a CPU based shape such as VM.Standard.E4.Flex

 ![setup OCI Data Science notebook session](images/lab1-ds-6.png)
 ![setup OCI Data Science notebook session](images/lab1-ds-7.png)
 ![setup OCI Data Science notebook session](images/lab1-ds-8.png)

3.Verify that you are able to login to the data science environment and view the Jupyter Lab notebook session.

 ![setup OCI Data Science notebook session](images/lab1-ds-9.png)

## Learn More

* [OCI Opensearch setup](https://apexapps.oracle.com/pls/apex/r/dbpm/livelabs/view-workshop?wid=3427)
* [OCI Data science setup](https://docs.oracle.com/en-us/iaas/data-science/data-science-tutorial/get-started.htm)

## Acknowledgements

* **Author** - Rajib Ghosh, Master Principal Cloud Architect, OCI AI and Gen AI Center of Excellence
* **Last Updated By/Date** - Aug 2024
