;;版本:V1.4.1ZE_RC27m4 LCD:3 ';'后面接的是注释
M8000 I1;断电保存支持与否
M8001 I1;复位开头支持与否
M8002 I-1;X电机方向
M8003 I-1;Y电机方向
M8004 I1;Z电机方向
M8005 I-1;E电机方向
M8005 I1 E2;E2电机方向
M8005 I1 E3;E3电机方向
M8005 X0 ;X轴 0:挤出头动 1:平台动
M8005 Y0 ;Y轴 0:挤出头动 1:平台动
M8005 Z1 ;Z轴 0:挤出头动 1:平台动
M8006 I100;起始速度
M8007 I20;轨弯速度
M8008 I100;加速度
M8007 E20;E轨弯速度
M8008 E100;E加速度
M8009 S0.006250;x,y每步mm
M8010 S0.001250;z每步mm
M8011 S0.001308;e每步mm
M8012 I100;XY最大速度
M8013 I20;Z最大速度
M8014 I120;E最大速度
M8015 I8;Z第一次归零速度
M8016 I8;Z第二次归零速度
M8015 S30;XY第一次归零速度
M8016 S8;XY第二次归零速度
M8017 I6;预挤出长度
M8018 I120;预挤出最大速度
M8019 I50;Makerware退丝速度
M8020 S1.500000;Makerware退丝长度
M8033 S0.000000;Makerware切换挤出头退丝长度
M8021 S1.750000;耗材直径
M8022 I275;挤出头最高温度
M8022 T170;耗材最低挤出温度
M8023 I100;热床最高温度
M8023 T0;温度警告使能 0:使能 1:禁止
M8024 I330;X最大行程
M8025 I330;Y取大行程
M8026 I400.000000;Z最大行程
M8027 I1;挤出头个数
M8027 S0;多进一出喷头 1:是 0:不是
;M8027 Z0;将E2当成双Z轴的另一个轴
;M8027 Y0;将E2当成双Y轴的另一个轴
;M8027 E0;将E2当成双E1轴
M8027 T1;0:禁止热床  1:使能热床
M8028 S0.000000;退丝补偿
M8029 I0;XY限位 0:最小限位 1：最大限位 2:双边限位 3:左后 4:右前
M8029 T0;限位接线 0:限位常开 1:限位常闭
M8029 S0;Z限位类型 0:最小限位 1:最大限位
M8029 C0;XYZ归位后动作 0:回零点(0,0,0) 1:停在限位位置
M8029 P-1;filament(三角洲调平)限位;1:与XYZ限位类型相同   -1:与XYZ限位类型相反
M8029 D1;耗材检测使能
M8030 I0;风扇自启动温度
M8030 I50 T-1;主板风扇自启温度，常开设置为零
M8031 S0.000000;第二挤出头X偏移
M8032 S0.000000;第二挤出头Y偏移
M8031 D0.000000;第三挤出头X偏移
M8032 D0.000000;第三挤出头Y偏移
M8034 I1;文件夹支持与否
M8035 I7;调平点个数
;M8036 X0.1 Y0.1;多少个点就填多少个坐标，小于0为行程比例，否则为坐标
M8036 X10.0000 Y10.0000;调平位置
M8036 X60.0000 Y50.0000;调平位置
M8036 X300.0000 Y300.0000;调平位置
M8036 X60.0000 Y300.0000;调平位置
M8036 X300.0000 Y300.0000;调平位置
M8036 X60.0000 Y50.0000;调平位置
M8036 X300.0000 Y50.0000;调平位置
M8080 I2;机型类型 0:XYZ 1:Delta 2:Hbot
M8081 I2;温度传感器 0: NTC 100K 1 B  1:K型热电偶 2:EPCOS NTC热阻
M8083 S180.000000;三角洲杆长度
M8083 Z200.000000;三角洲Z行程
;M8083 I2;是否使能自动调平
M8083 D0 P0;舵机起始角度和结束角度
M8084 S80.000000;三角洲打印半径 
M8084 D0;调平半径差值
M8084 P0;调平取点模式,0:7x7正方开 1:37个点，正六边形
M8084 Z-0.999999;三角洲Z偏移，0:禁止偏移，行程由设Z为零确定，非0，行程由调平触发器触发位置+偏移值
M8085 I6000;开机logo持续时间，最小100ms,最大6000ms
M8085 T0;屏保待机等待时间,单位是秒
M8085 P0;待机多长时间后关机
M8086 I1 ;电机细分软件分频,不懂请设1
M8087 I0 T12000;I:方向有效到脉冲有效的时间(ns),T:脉冲最短保持时间(ns).如果没有外接驱动，请全部设为0
M8089 P0 ;;是否打印完成后，强制关闭所有电机及加热    	 0：关闭所有  1：打印完后不运作  2:打印完过零
M301 P22.2000 I1.0800 D114.0000;温度PID参数
M8489	I256	;主板风扇自启时的pwm比例
M8489	T3	;装载耗材的进丝速度
M8489	S5	;三角洲机型在调平时，取点时的下降速度
;M8520 I0;激光雕刻支持，会重定向more的功能，默认禁止 1:支持 0:不支持
;M8520 T0;手动调平支持，默认禁止  1:支持 0:不支持
;M8521 I0;热床加热重定义，默认为0
M8500		;保存配置
