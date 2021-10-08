# Lexical_Syntax_Analysis

## to run: 
`LSA Path/to/Source/File`

### OCT7 version 1 finished

### type of reslt_retn:
1.关键词（keyword）
2. 标识符（id）
3. 数字常量（num）
4. 分界符和运算符（op）

## 使用说明
    ./LSA PATH/TO/YOUR/FILE
如：
   `./LSA test.txt`

可选功能：-s
    `./LSA -s test.txt
    *显示统计信息`

此外，可在build子目录中运行
`cmake.. && make`
以生成可执行文件
## 功能
1. 可以识别出用C语言编写的源程序中的每个单词符号，并以记号的形式输出每个单词符号。
2.可以识别并跳过源程序中的注释。
3.可以统计源程序中的语句行数、各类单词的个数、以及字符总数，并输出统计结果。
4.检查源程序中存在的词法错误，并报告错误所在的位置。
5.对源程序中出现的错误进行适当的恢复，使词法分析可以继续进行，对源程序进一次扫描，即可检查并报告源程序中存在的所有词法错误。
