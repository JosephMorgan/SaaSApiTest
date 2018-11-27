::@echo off
::使用报表前先修改Jmeter的bin目录下reportgenerator.properties
::修改jmeter.reportgenerator.overall_granularity=1000（报表统计的间隔时间）
::执行以下命令后，就会在当前目录下的output文件夹中生产html报表
::jmeter –g test.jtl –o ./output
::下载到本地用浏览器打开即可查看报告

@for /f "tokens=1,2 delims=:" %%i in ('time/t') do set t=%%i%%j
@set time=%date:~0,4%%date:~5,2%%date:~8,2%%t:~0,4%%time:~6,2%
@title 接口测试--运行jmeter的脚本

@jmeter -n -t script/SaaS平台的接口.jmx -l result/result%time%.jtl -j log/log%time%.log -e -o tableReport/output%time%
