::@echo off
::ʹ�ñ���ǰ���޸�Jmeter��binĿ¼��reportgenerator.properties
::�޸�jmeter.reportgenerator.overall_granularity=1000������ͳ�Ƶļ��ʱ�䣩
::ִ����������󣬾ͻ��ڵ�ǰĿ¼�µ�output�ļ���������html����
::jmeter �Cg test.jtl �Co ./output
::���ص�������������򿪼��ɲ鿴����

@for /f "tokens=1,2 delims=:" %%i in ('time/t') do set t=%%i%%j
@set time=%date:~0,4%%date:~5,2%%date:~8,2%%t:~0,4%%time:~6,2%
@title �ӿڲ���--����jmeter�Ľű�

@jmeter -n -t script/SaaSƽ̨�Ľӿ�.jmx -l result/result%time%.jtl -j log/log%time%.log -e -o tableReport/output%time%
