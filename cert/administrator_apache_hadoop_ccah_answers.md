# Exam Sections and Blueprint
## 1. HDFS (17%)

> Describe the function of HDFS daemons
> Email about this question, should this mean hadoop in general?
>> Daemons in computing terms is a process that runs in the background. Hadoop has five such daemons. They are NameNode, Secondary NameNode, DataNode, JobTracker and TaskTracker. 

> Describe the normal operation of an Apache Hadoop cluster, both in data storage and in data processing

>> Distributes the data into blocks that is assocaited with namenodes where they are stored on datantes. Each block my default is 128mb on 3 datanodes. data processing can be performed on these datanodes under map reduce in parralel were computation is returned and reducer agregates data.

> Identify current features of computing systems that motivate a system like Apache Hadoop

>> Very Large files, streaming data access, commodity hardware.

> Classify major goals of HDFS Design

>> Petabytes, read manytimes, redundancy, linear scalling

> Given a scenario, identify appropriate use case for HDFS Federation

>> Large data sets are in many files that aren't edited but read many times.

> Identify components and daemon of an HDFS HA-Quorum cluster

>> Quorum journal manager (QJM) -  dedicated HDFS Implmentation, designed for the sole purpose of providing a highly available edit log, and is the recommended choice for most HDFS installations. The QJM runs as group of journal nodes, and each edit ust be writted to a major of the journal nodes. 

>> the QJM only allows one namenode to write to the edit log at one time, hoever it is still possible for the previously active namenode to serve stale read requests to clients, so setting up an SSH fencing command that will kill the namenode's process is a good idea. Stronger fencning methods are required when using an NFS filer for the shared edit log, since it is not possible to only allow one namnode to write at a time. the range of fencing mechanisms includes revoking the namenodes access to the shared storage directory and disabling its network port via a remote management command. Last resort: STONITH = forcibly power down the host machine.

> Analyze the role of HDFS security (Kerberos)

?

> Determine the best data serialization choice for a given scenario

?

> Describe file read and write paths



> Identify the commands to manipulate files in the Hadoop File System Shell

? hadoop <regular shell commands to manuipulate any filesystem>

## 2. YARN (17%)

> Understand how to deploy core ecosystem components, including Spark, Impala, and Hive

> Understand how to deploy MapReduce v2 (MRv2 / YARN), including all YARN daemons

> Understand basic design strategy for YARN and Hadoop

> Determine how YARN handles resource allocations

> Identify the workflow of job running on YARN

> Determine which files you must change and how in order to migrate a cluster from MapReduce version 1 (MRv1) to MapReduce version 2 (MRv2) running on YARN

## 3. Hadoop Cluster Planning (16%)

> Principal points to consider in choosing the hardware and operating systems to host an Apache Hadoop cluster

>> Hardware :
>>> Processor : Two hex/octo-core 3 GHz CPUs , Memory : 64-512 GB ECC RAM, Storage: 12-24 x 1-4 TB SATA disks, Network: Gigabit Ethernet with link aggregation.
 
>> OS : ?

> Analyze the choices in selecting an OS

> Understand kernel tuning and disk swapping

> Given a scenario and workload pattern, identify a hardware configuration appropriate to the scenario

> Given a scenario, determine the ecosystem components your cluster needs to run in order to fulfill the SLA

> Cluster sizing: given a scenario and frequency of execution, identify the specifics for the workload, including CPU, memory, storage, disk I/O

> Disk Sizing and Configuration, including JBOD versus RAID, SANs, virtualization, and disk sizing requirements in a cluster

> Network Topologies: understand network usage in Hadoop (for both HDFS and MapReduce) and propose or identify key network design components for a given scenario

## 4. Hadoop Cluster Installation and Administration (25%)

> Given a scenario, identify how the cluster will handle disk and machine failures

> Analyze a logging configuration and logging configuration file format

> Understand the basics of Hadoop metrics and cluster health monitoring

> Identify the function and purpose of available tools for cluster monitoring

> Be able to install all the ecoystme components in CDH 5, including (but not limited to): Impala, Flume, Oozie, Hue, Cloudera Manager, Sqoop, Hive, and Pig

> Identify the function and purpose of available tools for managing the Apache Hadoop file system

## 5. Resource Management (10%)

> Understand the overall design goals of each of Hadoop schedulers

> Given a scenario, determine how the FIFO Scheduler allocates cluster resources

> Given a scenario, determine how the Fair Scheduler allocates cluster resources under YARN

> Given a scenario, determine how the Capacity Scheduler allocates cluster resources

## 6. Monitoring and Logging (15%)

> Understand the functions and features of Hadoop’s metric collection abilities

> Analyze the NameNode and JobTracker Web UIs

> Understand how to monitor cluster daemons

> Identify and monitor CPU usage on master nodes

> Describe how to monitor swap and memory allocation on all nodes

> Identify how to view and manage Hadoop’s log files

> Interpret a log file
