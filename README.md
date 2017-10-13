# assemblerPorjectOfComputerOrganization
Coursera 上北大机组课第三周作业

## 第一题：用系统功能调用实现简单输入输出

利用系统功能调用从键盘输入，转换后在屏幕上显示，具体要求如下：

1. 如果输入的是字母（A~Z，区分大小写）或数字（0~9），则将其转换成对应的英文单词后在屏幕上显示，对应关系见下表
2. 若输入的不是字母或数字，则在屏幕上输出字符“*”，
3. 每输入一个字符，即时转换并在屏幕上显示，
4. 支持反复输入，直到按“?”键结束程序。

|1 | 2|3 | 4| 5| 6| 7|8 | |
|:-:|:---------:|:-:|:---------:|:-:|:---------:|:-:|:---------:|:-:|:-------:|
|A	|Alpha	    |N	|November	|1	|First  	|a	|alpha	    |n	|november
|B	|Bravo	    |O	|Oscar	    |2	|Second	    |b	|bravo	    |o	|oscar
|C	|China	    |P	|Paper	    |3	|Third	    |c	|china	    |p	|paper
|D	|Delta	    |Q	|Quebec	    |4	|Fourth	    |d	|delta	    |q	|quebec
|E	|Echo	    |R	|Research	|5	|Fifth  	|e	|echo	    |r	|research
|F	|Foxtrot	|S	|Sierra	    |6	|Sixth  	|f	|foxtrot	|s	|sierra
|G	|Golf	    |T	|Tango	    |7	|Seventh	|g	|golf	    |t	|tango
|H	|Hotel	    |U	|Uniform	|8	|Eighth	    |h	|hotel	    |u  |uniform
|I	|India	    |V	|Victor	    |9	|Ninth  	|i	|india	    |v	|victor
|J	|Juliet	    |W	|Whisky	    |0	|zero	    |j	|juliet	    |w	|whisky
|K	|Kilo	    |X	|X-ray	    ||              |k	|kilo	    |x	|x-ray
|L	|Lima	    |Y	|Yankee		||              |l	|lima	    |y	|yankee
|M	|Mary	    |Z	|Zulu		||              |m	|mary	    |z	|zulu


First Header | Second Header
------------ | -------------
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column

## 第二题：字符串查找比较

利用系统功能调用从键盘输入一个字符串，然后输入单个字符，查找该字符串中是否有该字符（区分大小写）。具体要求如下：

1. 如果找到，则在屏幕上显示：

    `Success! Location: X`

其中，X为该字符在字符串中第一次出现的位置

2. 如果没找到，则在屏幕上显示：

   `Fail!`

3. 输入一个字符串后，可以反复输入希望查询的字符，直到按“?”键结束程序

4. 每个输入字符独占一行，输出查找结果独占一行，位置编码从1开始。

提示：为避免歧义，字符串内不包含"?"符号

   `abcdefgh`

   `a`

   `Success! Location: 1`
   
   `x`
    
   `Fail!`