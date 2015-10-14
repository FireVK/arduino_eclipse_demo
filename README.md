# arduino_eclipse_demo

���뾲̬����½�һ��eclipse��arduino���̵����ö����һ����staticһ����application���½�
* ΪʲôҪ����arduino_core�⣿ 


>  ��Ϊarduino_core�ǹ̶�����ģ�����ֻҪ������˶�̬�⣬�´�ֻ��Ҫֱ�����ӹ�ȥ�����þ����� �������ɼ���ʡ�����ʱ�䡣�ڶ������ǰ�ȫһ�㣬ֱ���ö�̬�ⲻ����ֲ�С���޸���ĳĳ�ط�


##0. �½�֮ǰ����һ��ȫ�ֵ�AVR���ã� 
* Windows>Preference> AVR:

**AVRDude**: ָ��һ��avrdude.conf:  arduino-1.0.5\hardware\tools\avr\etc\avrdude.conf

**AVR>Path:** 

	* **gcc:** D:\Program Files\arduino-1.0.5\hardware\tools\avr\bin
	* **GNU make:** D:\Program Files\arduino-1.0.5\hardware\tools\avr\utils\bin
	* **AVR Header files:** D:\Program Files\arduino-1.0.5\hardware\tools\avr\avr\include
	* **AVRDude:** D:\Program Files\arduino-1.0.5\hardware\tools\avr\bin
	
##1. ���뾲̬��arduino_core��
�����Ժ��ÿ��ʹ��
* C++ static�½�
* �½�
	*`src`Ŀ¼�������arduino���ļ�
* project->preference
	* **AVR**: ��enable
	* **AVR>AVRDude**: new һ������¼��uno��leonador
	* **AVR>Target**
	*  **C/C++Build>setting**: AVR compiler��AVR C++ compiler����һ����
		*  Additional Tools in Toolchain: ���.HEX�ļ�
		*  **`Directories`**��arduino core�⣬arduinolib, lib, src
		*  debugging: 
			*  standard debugging info (-g)
			*  stabs(avr-gdb/Insight)
		* `Optimization`:�Ż���С������
			* ȥ��pack structs(-fpack-structs), Short enums(-fshort-enums)��ѡ��
			* Other Optimization flags��`-ffunction-sections -fdata-sections`
		* AVR Compiler"->"Language standard
			* ȥ��char is unsigned(-funsigned-char)
			* ȥ��bitfiels are unsigned(-funsigned-bitfiels)
	* �����ļ�����Ӧ��λ��
		* arduino core�ļ�
		* ��Ӧ���ӵ�pin_arduino.h�ļ����߻������а���pin_arduino.h��Ŀ¼������Ҫ��directories�м�·��

		

##2. ��eclipse�½�arduino����
�����Ժ��ÿ��ʹ��
* C++ Application�½�
* �½�
	* `src`Ŀ¼�������arduino���ļ�
	* `arduinolib`Ŀ¼���Źٷ��ṩ�Ŀ���Wifi��Entenet���
	* `lib`Ŀ¼�������Լ�д�Ŀ�
* project->preference
	* **AVR**: ��enable
	* **AVR>AVRDude**: new һ������¼��uno��leonador
	* **AVR>Target**
	*  **C/C++Build>setting**: AVR compiler��AVR C++ compiler����һ����
		*  Additional Tools in Toolchain: ���.HEX�ļ�
		*  **`Directories`**��arduino core�⣬arduinolib, lib, src
		*  debugging: 
			*  standard debugging info (-g)
			*  stabs(avr-gdb/Insight)
		* `Optimization`:�Ż���С������
			* ȥ��pack structs(-fpack-structs), Short enums(-fshort-enums)��ѡ��
			* Other Optimization flags��`-ffunction-sections -fdata-sections`
		* AVR Compiler"->"Language standard
			* ȥ��char is unsigned(-funsigned-char)
			* ȥ��bitfiels are unsigned(-funsigned-bitfiels)
	* �����ļ�����Ӧ��λ��
		* arduino core�ļ�
		* ��Ӧ���ӵ�pin_arduino.h�ļ����߻������а���pin_arduino.h��Ŀ¼������Ҫ��directories�м�·��
		* ����aduinolib��Ŀ¼
