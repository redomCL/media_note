@echo off
for %%x in (%*) do (
	"C:\SPEED APP\mkvtoolnix\mkvmerge.exe" -d 0 -a 1 -S --track-name 0:"" --track-name 1:"" --default-track 0:yes --default-track 1:yes --title "" -o "D:\tmp\test\out\%%~nx.mkv" "%%~x"
)
pause
\\通用公式：
\\@echo off
\\for %%x in (%*) do (
\\	"C:\SPEED APP\mkvtoolnix\mkvmerge.exe" -d 0 -a 1 -s 2 --track-name 0:"" --track-name 1:"" --track-name 2:"" --default-track 0:yes --default-track 1:yes --default-track 2:yes --language 0:und --language 1:und --language 2:und  --title "" --track-order 0:0,0:2,0:1 -o "D:\tmp\test\out\%%~nx.mkv" "%%~x"
\\)
\\pause


\\当前特性：
\\	1.提取轨道0，1，轨道名称为空：-d 0 -a 1 --track-name 0:"" --track-name 1:""
\\	2.不提取字幕：-S
\\	3.标记轨道0，1为默认轨道：--default-track 0:yes --default-track 1:yes
\\	4.标题为空，原文件名输出：--title "" -o "D:\tmp\test\out\%%~nx.mkv" "%%~x"
\\主要功能：
\\	1.提取轨道0，1，2，n，轨道名称为空：-d 0 -a 1,2,n --track-name 0:"" --track-name 1:"" --track-name 2:"" --track-name n:""
\\	2.不提取字幕：-S
\\	3.标记轨道0，1为默认轨道：--default-track 0:yes --default-track 1:yes
\\	4.轨道语言标识：--language 0:ja --language 1:ja --language 2:chi --language n:chi
\\	5.标题为空，原文件名输出：--title "" -o "D:\tmp\test\out\%%~nx.mkv" "%%~x"
\\备用功能：
\\	1.混入音频、字幕，文件需要同名："%%~nx.flac" "%%~nx.ass"
\\	2.改变轨道编号，冒号前是文件号，冒号后是轨道号，排列顺序是混流后文件内目标轨道顺序，以下为0号文件的0号轨道排在0号，0号文件的2号轨道排在1号，0号文件的1号轨道排在2号：--track-order 0:0,0:2,0:1
