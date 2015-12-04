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
        <pre>http://localhost:8080/BSCCollect/province/ ---Get

http://localhost:8080/BSCCollect/metricdata/  ----post
{"insertedMetricDatas":[{"kpiName":"XXXX","metricName":"Total Energy Delivered to Colombo City Via GSS during the six months.","date":"2015/08/23","value":70},
{"kpiName":"XXXX","metricName":"Total Energy Delivered to Colombo City Via GSS during the six months.","date":"2015/05/23","value":500}]}

http://localhost:8080/BSCCollect/structure/ ---post
{"structureDatas":[{"kpiName":"bbbb","metricName":"bbbbbbbb","minVal":10,"maxVal":70,"timePeriod":"xxxx"},
{"kpiName":"cccc","metricName":"ccccccccccccc","minVal":10,"maxVal":80,"timePeriod":"xxxx"}]}

http://localhost:8080/BSCCollect/bscconnect/ ---Get

http://localhost:8080/BSCCollect/sendemail/ ---Get

http://localhost:8080/BSCCollect/messageReminder/ ---Get

http://localhost:8080/BSCCollect/messagelateNotification/ ---Get

http://localhost:8080/BSCCollect/login/   ----post
{"username":"anuradini","password":"hff7it4s3f"}

http://localhost:8080/BSCCollect/resetpw/   ----post
{"username":"anuradini"}

http://localhost:8080/BSCCollect/userdata/    ----post
{"user_id":"yash","user_name":"hasitha","phone_number":"0756780065","email":"ghasithalakmal@gmail.com","designation":"Software engineer","user_type":"adm","province_id":1}

http://localhost:8080/BSCCollect/userdata/  --get


http://localhost:8080/BSCCollect/userdata/  --delete
{"user_id":"nizar","user_name":"hasitha","phone_number":"55555","email":"ghasithalakmal@gmail.com","designation":"Software engineer","user_type":"adm","province_id":1}

http://localhost:8080/BSCCollect/userdata/  ---put
{"user_id":"massanew","user_name":"hasitha","phone_number":"55555","email":"ghasithalakmal@gmail.com","designation":"Software engineer","user_type":"adm","province_id":1}


</pre>
    </body>
</html>
