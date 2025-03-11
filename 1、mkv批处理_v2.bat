@echo off
for %%x in (%*) do (
	"C:\SPEED APP\mkvtoolnix\mkvmerge.exe" -d 0 -a 1 -S --track-name 0:"" --track-name 1:"" --default-track 0:yes --default-track 1:yes --title "" -o "D:\tmp\test\out\%%~nx.mkv" "%%~x"
)
pause

\\当前特性：
\\	1.提取轨道0，1：-d 0 -a 1
\\	2.不提取视频音频字幕：-D,-A,-S
\\	2.轨道0，1名称为空：--track-name 0:"" --track-name 1:""
\\	3.标记轨道0，1为默认轨道：--default-track 0:yes --default-track 1:yes
\\	4.文件标题为空，原文件名输出：--title "" -o "D:\tmp\test\out\%%~nx.mkv" "%%~x"

\\功能笔记：
\\	1.提取轨道0，1，2，n：-d 0 -a 1,2,n  
\\	2.不提取字幕：-S
\\	3.轨道0，1，2，n名称为空：--track-name 0:"" --track-name 1:"" --track-name 2:"" --track-name n:""
\\	4.标记轨道0，1为默认轨道：--default-track 0:yes --default-track 1:yes
\\	5.轨道0，1，2，n语言标识：--language 0:ja --language 1:ja --language 2:chi --language n:chi
\\	6.标题为空，原文件名输出：--title "" -o "D:\tmp\test\out\%%~nx.mkv" "%%~x"
\\	7.混入音频、字幕，文件需要同名，必须写在前面：--命令 "%%~nx.flac" --命令 "%%~nx.ass"，"%%~nx.flac" "%%~nx.ass"后面的参数服务于拖拽文件
\\	8.改变轨道编号，冒号前是文件号，冒号后是轨道号，排列顺序是混流后文件内目标轨道顺序，以下为0号文件的0号轨道排在0号，0号文件的2号轨道排在1号，0号文件的1号轨道排在2号：--track-order 0:0,0:2,0:1

\\命令笔记：
\\	0.工作方式：--命令 "封装文件名（与拖拽文件同名）.封装文件拓展名" --命令 "拖拽的文件"
\\	1.轨道选择：-d 轨道号 -a 轨道号,轨道号 -s 轨道号,轨道号 -S
\\	2.轨道属性：--track-name 轨道号:"" --default-track 轨道号:yes/no --language 轨道号:ja/chi --track-order 文件号:轨道号,文件号:轨道号,文件号:轨道号
\\	3.文件标题：--title ""
\\	4.附加封装："%%~nx.封装文件拓展名"

\\常用公式：
\\@echo off
\\for %%x in (%*) do (
\\	"C:\SPEED APP\mkvtoolnix\mkvmerge.exe" -d 0 -a 1 -s 2 --track-name 0:"" --track-name 1:"" --track-name 2:"" --default-track 0:yes --default-track 1:yes --default-track 2:yes --language 0:und --language 1:ja --language 2:chi  --title "" --track-order 0:0,0:2,0:1 -o "D:\tmp\test\out\%%~nx.mkv" "%%~x"
\\)
\\pause
