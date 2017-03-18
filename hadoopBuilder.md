## Hadoop builder


Hadoop verification: https://www.apache.org/dyn/closer.cgi#verify


#### Downloading hadoop and set up 

* url : http://www-us.apache.org/dist/hadoop/common/hadoop-2.7.3/hadoop-2.7.3-src.tar.gz

* Place file into /usr/local

	```
	cd /usr/local
	```
	``` 
	curl 'http://www-us.apache.org/dist/hadoop/common/hadoop-2.7.3/
	```
	```
	hadoop-2.7.3-src.tar.gz'
	```
	```
	sudo tar xzf hadoop-2.7.3.tar.gz
	```

* change owner: user:group respectivly to hadoop:hadoop
```
sudo chown -R hadoop:hadoop hadoop-2.7.3
```

* build hadoop binaries on the shell path
```
export HADOOP_HOME=/usr/local/hadoop-2.7.3
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
```

* ssh-rsa key - needs to be done a hdfs and yarn 
```
ssh-keygen -t rsa -f ~/.ssh/id_rsa
```




