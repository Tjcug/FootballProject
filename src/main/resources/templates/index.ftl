
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<#include "public/head.ftl">
    <title>足球系统仿真软件</title>
    <style type="text/css">
        #menu {
            width: 200px;
            height: 500px;
        }

        #menu ul {
            list-style: none;
            padding: 0px;
            margin: 0px;

        }

        #menu ul li {
            border-bottom: 1px solid #fff;
        }

        #menu ul li a{
            display: block;
            text-decoration: none;
            color: #fff;
            padding: 5px;
            background-color: #008792;
        }
        #menu ul li a:hover{
            background-color: #00a6ac;
        }
    </style>

    <script type="text/javascript">
        $(function(){
            $("a[title]").click(function(){
                var text=$(this).text();
                var href=$(this).attr("title");
                if($("#tt").tabs("exists",text)){
                    $("#tt").tabs("select",text);
                }else{
                    $("#tt").tabs("add",{
                        title:text,
                        //content:正文内容
                        closable:true,
                        content:'<iframe title ='+text+' frameborder="0" width="100%" height="100%" src='+ href +'/>'
                    });
                }
            });

            var map = new BMap.Map("container");
            addControlMap(map,"北京",12);
            // ajax("roadline_findAllRoadlineByJson.action",{},"post",function(data){getRoadLineListMap(map,data);});

        });

    </script>

</head>

<body class="easyui-layout">
<#--<div data-options="region:'north',title:'欢迎来到足球系统仿真软件',split:true" style="height:0px;">-->
    <#--<div class="demo-info">-->
        <#--<div class="demo-tip icon-tip"></div>-->
        <#--<div>欢迎来到足球系统仿真软件</div>-->
    <#--</div>-->
<#--</div>-->
<!-- 此处显示系统菜单 -->
<div data-options="region:'west',title:'系统菜单',split:true" data-options="fit:true" style="width:250px;" >
    <!-- 此处显示系统菜单 -->
    <div id="menu" class="easyui-accordion"  data-options="fit:true">
        <div title="基本菜单" >
            <ul>
                <li><a title="${football}/send_test_cloth">足球系统仿真</a></li>
                <li><a title="${football}/send_analysis_test">足球系统分析</a></li>
            </ul>
        </div>
        <div title="######" >
            <ul>
                <li><a  title="${football}/send_hbasedatabase_oilfieldInfo">油气田仓库</a></li>
            </ul>
        </div>
        <div title="######" >
            <ul>
                <li><a  title="#">四</a></li>
                <li><a  title="#">五</a></li>
            </ul>
        </div>
        <div title="######" >
            <ul>
                <li><a  title="#">四</a></li>
                <li><a  title="#">五</a></li>
            </ul>
        </div>
    </div>
</div>

<div data-options="region:'center',title:'基本视图'" style="padding:1px;background:#fff;">

    <div id="tt" class="easyui-tabs" data-options="fit:true">
        <div title="主页" >
            <div id="container"
                 style="position: absolute;  width: 100%; height: 100%; overflow:hidden;">
            </div>
        </div>
    </div>

</div>

</body>

</html>
