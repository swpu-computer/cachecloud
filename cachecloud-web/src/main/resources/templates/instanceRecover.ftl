<!DOCTYPE html>
<head>
    <meta charset=UTF-8/>
    <title>Pod重启探测Redis实例</title>
</head>
<body>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<p>
<table style="width:100%; font-size:12px;" width="100%" cellpadding="0" cellspacing="0">
    <colgroup>
        <col style="width: 5px;">
    </colgroup>
    <tr>
        <td></td>
        <td style="padding-top:20px; padding-left:27px;">
        	<ul>
                <li><span style="font-weight: bold; padding-top:20px; color:#3f3f3f;">Redis实例自动拉起列表：</span></li>
            </ul>
            <table style="table-layout:fixed;width: 872px;border-collapse: collapse;word-break: break-all;word-wrap:break-word;border-top: 1px dotted #676767;text-align: center;color: #000; font-family:'宋体'; font-size:12px; margin-top:10px; margin-left: 24px">
                <tr>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 50px;">
                        	应用id
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 50px;">
                        	容器ip
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 50px;">
                    		port
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                    		说明
                    </td>
                </tr>
                <#list instanceAlertValueResultList as item>
                <tr>
                    <#assign appid=item.instanceInfo.appId?c>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 50px;">
                        <a href='${ccDomain}/admin/app/index?appId=${appid}'>${appid}</a>
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 50px;">
                        ${item.instanceInfo.ip!}
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 50px;">
                        ${item.instanceInfo.port!}
                    </td>
                    <td style="border-right: 1px dotted #676767; border-bottom: 1px dotted #676767; height:33px; width: 140px;">
                        实例恢复时间：${item.otherInfo!}
                    </td>
                </tr>
                </#list>

            </table>
        </td>
    </tr>

</table>
</p>
</body>
</html>