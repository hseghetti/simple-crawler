#!/bin/bash

# Start nutch webserver for controlling with REST API

# Uncomment the next line if you need to import certs
#keytool -import -alias aliashere -keystore $JAVA_HOME/jre/lib/security/cacerts -file /root/1.crt -storepass "changeit" -noprompt

$NUTCH_HOME/bin/nutch inject crawldata/crawldb urls/
$NUTCH_HOME/bin/nutch generate crawldata/crawldb crawldata/segments
s1=`ls -d crawldata/segments/2* | tail -1`
echo $s1
$NUTCH_HOME/bin/nutch fetch $s1
$NUTCH_HOME/bin/nutch parse $s1
$NUTCH_HOME/bin/nutch updatedb crawldata/crawldb $s1
$NUTCH_HOME/bin/nutch index crawldata/crawldb -linkdb crawldata/linkdb $s1
