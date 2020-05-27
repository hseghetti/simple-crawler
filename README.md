# WHAT AM I ?

I am a simple crawler based on Apache Nutch integrated with Elasticsearch

# HOW TO START

1 - If you want to run a **local** server of **elasticsearch**, go to the **docker-compose.yml** file and uncomment the elasticsearch lines.

2 - If you have a remote **Elasticsearch** server running, replace your **Elasticsearch** host and port in the **config/nutch-site.xml** file.

3 - (Optional) You can also run cerebro to analyze your Elasticsearch server. Please uncomment the cerebro settings on the **docker-compose.yml**

4 - If you need to include domain certificates, you should paste the crt files inside the cert folder. Then edit the files **config/startup.sh** and **docker-compose.yml** with the correct cert file name.

5 - Type your seed webpage in the **seed.txt** file

6 - Edit the regex filters with your preferences (at least your domain) in the **regex-urlfilter.txt** file.

7 - Start crawling with **docker-compose up**
Running **docker-compose up** it will start **Nutch version 1.13**
