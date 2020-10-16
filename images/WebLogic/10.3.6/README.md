# Build WebLogic:10.3.6 Docker Image



## Environment

- CentOS-7 (base docker centos:7.8.2003)

- weblogic 10.3.6.0 https://download.oracle.com/otn/nt/middleware/11g/wls/1036/wls1036_generic.jar

- JDK 8u261(jdk1.8.0_261) https://download.oracle.com/otn/java/jdk/8u261-b12/a4634525489241b9a9e1aa73d9e118e6/jdk-8u261-linux-x64.tar.gz



## Port

tcp-port : `7001`



## Login

**url**: `http://<IP>:7001/console`

**username **: `weblogic`

**password **: `weblogic123`



## Logs

/var/log/weblogic.log



## Usage

```bash
docker pull lubinlew/weblogic:10.3.6
docker run -d -p 7001:7001 lubinlew/weblogic:10.3.6
```



## Refer

https://blog.csdn.net/liusure09/article/details/79880514

https://docs.oracle.com/cd/E13179_01/common/docs91/silent_cw/silent.html#1057069




