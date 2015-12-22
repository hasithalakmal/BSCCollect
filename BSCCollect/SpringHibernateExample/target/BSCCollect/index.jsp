<%-- 
    Document   : index
    Created on : Nov 27, 2015, 3:42:51 PM
    Author     : Hasitha
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <pre>http://10.130.3.135:8080/BSCCollect/province/ ---Get

http://10.130.3.135:8080/BSCCollect/metricdata/  ----post
{"insertedMetricDatas":[{"kpiName":"kpi1","metricName":"metric1","userid":"admin","date":"2015/08/23","value":70},
{"kpiName":"kpi1","metricName":"metric2","userid":"admin","date":"2015/05/23","value":500}]}

http://10.130.3.135:8080/BSCCollect/structure/ ---post
{"structureDatas":[
{"kpiName":"massa1","metricName":"massi1","minVal":10,"maxVal":80,"timePeriod":"a","provincename":"CP","kpiunit":"unit1","metricunit":"unit2","metricduedate":2},
{"kpiName":"massa1","metricName":"massi2","minVal":10,"maxVal":80,"timePeriod":"b","provincename":"CORP","kpiunit":"unit1","metricunit":"unit2","metricduedate":2},
{"kpiName":"massa2","metricName":"massi3","minVal":10,"maxVal":80,"timePeriod":"m","provincename":"EP","kpiunit":"unit1","metricunit":"unit2","metricduedate":2}
]}


http://10.130.3.135:8080/BSCCollect/bscconnect/ ---POST

http://10.130.3.135:8080/BSCCollect/sendemail/ ---Get

http://10.130.3.135:8080/BSCCollect/messageReminder/ ---Get

http://10.130.3.135:8080/BSCCollect/messagelateNotification/ ---Get

http://10.130.3.135:8080/BSCCollect/login/   ----post
{"username":"anuradini","password":"hff7it4s3f"}

http://10.130.3.135:8080/BSCCollect/resetpw/   ----post
{"username":"anuradini"}

http://10.130.3.135:8080/BSCCollect/userdata/    ----post
{"user_id":"yash","user_name":"hasitha","phone_number":"0756780065","email":"ghasithalakmal@gmail.com","designation":"Software engineer","user_type":"adm","province_id":1}

http://10.130.3.135:8080/BSCCollect/userdata/  --get

http://10.130.3.135:8080/BSCCollect/userdataone/{nizarucsc} --get


http://10.130.3.135:8080/BSCCollect/userdata/  --delete
{"user_id":"nizar","user_name":"hasitha","phone_number":"55555","email":"ghasithalakmal@gmail.com","designation":"Software engineer","user_type":"adm","province_id":1}

http://10.130.3.135:8080/BSCCollect/userdata/  ---put
{"user_id":"massanew","user_name":"hasitha","phone_number":"55555","email":"ghasithalakmal@gmail.com","designation":"Software engineer","user_type":"adm","province_id":1}




</pre>
    </body>
</html>
