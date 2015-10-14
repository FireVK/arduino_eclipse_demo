# arduino_eclipse_demo

编译静态库和新建一个eclipse的arduino工程的配置都差不多一个是static一个是application的新建
* 为什么要编译arduino_core库？ 


>  因为arduino_core是固定不变的，所以只要编译好了动态库，下次只需要直接链接过去拿来用就行了 ，这样可及节省编译的时间。第二个就是安全一点，直接用动态库不会出现不小心修改了某某地方


##0. 新建之前配置一下全局的AVR配置： 
* Windows>Preference> AVR:

**AVRDude**: 指定一下avrdude.conf:  arduino-1.0.5\hardware\tools\avr\etc\avrdude.conf

**AVR>Path:** 

	* **gcc:** D:\Program Files\arduino-1.0.5\hardware\tools\avr\bin
	* **GNU make:** D:\Program Files\arduino-1.0.5\hardware\tools\avr\utils\bin
	* **AVR Header files:** D:\Program Files\arduino-1.0.5\hardware\tools\avr\avr\include
	* **AVRDude:** D:\Program Files\arduino-1.0.5\hardware\tools\avr\bin
	
##1. 编译静态的arduino_core库
供给以后的每次使用
* C++ static新建
* 新建
	*`src`目录：放你的arduino的文件
* project->preference
	* **AVR**: 打勾enable
	* **AVR>AVRDude**: new 一个配置录入uno，leonador
	* **AVR>Target**
	*  **C/C++Build>setting**: AVR compiler和AVR C++ compiler配置一样的
		*  Additional Tools in Toolchain: 输出.HEX文件
		*  **`Directories`**：arduino core库，arduinolib, lib, src
		*  debugging: 
			*  standard debugging info (-g)
			*  stabs(avr-gdb/Insight)
		* `Optimization`:优化大小的作用
			* 去掉pack structs(-fpack-structs), Short enums(-fshort-enums)的选项
			* Other Optimization flags：`-ffunction-sections -fdata-sections`
		* AVR Compiler"->"Language standard
			* 去掉char is unsigned(-funsigned-char)
			* 去掉bitfiels are unsigned(-funsigned-bitfiels)
	* 复制文件到相应的位置
		* arduino core文件
		* 对应板子的pin_arduino.h文件或者或者所有包含pin_arduino.h的目录，但是要在directories中加路径

		

##2. 用eclipse新建arduino工程
供给以后的每次使用
* C++ Application新建
* 新建
	* `src`目录：放你的arduino的文件
	* `arduinolib`目录：放官方提供的库如Wifi，Entenet库等
	* `lib`目录：放你自己写的库
* project->preference
	* **AVR**: 打勾enable
	* **AVR>AVRDude**: new 一个配置录入uno，leonador
	* **AVR>Target**
	*  **C/C++Build>setting**: AVR compiler和AVR C++ compiler配置一样的
		*  Additional Tools in Toolchain: 输出.HEX文件
		*  **`Directories`**：arduino core库，arduinolib, lib, src
		*  debugging: 
			*  standard debugging info (-g)
			*  stabs(avr-gdb/Insight)
		* `Optimization`:优化大小的作用
			* 去掉pack structs(-fpack-structs), Short enums(-fshort-enums)的选项
			* Other Optimization flags：`-ffunction-sections -fdata-sections`
		* AVR Compiler"->"Language standard
			* 去掉char is unsigned(-funsigned-char)
			* 去掉bitfiels are unsigned(-funsigned-bitfiels)
	* 复制文件到相应的位置
		* arduino core文件
		* 对应板子的pin_arduino.h文件或者或者所有包含pin_arduino.h的目录，但是要在directories中加路径
		* 复制aduinolib的目录
