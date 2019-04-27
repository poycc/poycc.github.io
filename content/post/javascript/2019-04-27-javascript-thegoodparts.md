---
title: 《JavaScript语言精粹》学习笔记
author: ~
date: '2019-04-27'
slug: javascript-thegoodparts
categories: ["JavaScript"]
tags: ["note"]
---

<div id="top">
<!-- TOC depthFrom:1 depthTo:2 orderedList:true -->

1. [语法](#语法)
  1. [空白](#空白)
  2. [标识符](#标识符)
  3. [数字](#数字)
  4. [字符串](#字符串)
  5. [语句](#语句)

<!-- /TOC -->
# 语法

## 空白

空白可能表现为被格式化的字符或者注释的形式。空白通常没有意义，但是有时候必须用来分隔字符序列，否则就会合并成为一个符合，比如：

```javascript
var that = this;
```

在上面的代码中，除了var和that之间的空格不能被移除，其他的都可以移除。

### JavaScript中的2种注释

1. 多行注释： `/*  */`，一般在js文件的开头，用来介绍作者，修改日期，函数等说明性信息；

```javascript
/*
*author:xxx
*day:2008-08-10
*/
```

2. 单行注释： `//`，只能注释单行；
   
```javascript
// 这是一行注释
// 这是另一行注释
```

[⬆返回顶部](#top)

## 标识符

标识符由一个字母开头，其后可选择性的加上一个或者多个字母、数字或者下划线。标识符不能使用下面这些保留字：

abstract
boolean break byte
case catch char class const continue
debugger default delete do double
else enum export extends
false final finally float for function
goto
if implements import in instanceof int interface
long
native new null
package private protected public
return
short static super switch synchronized
this throw throws transient true try typeof
var volatile void
while with

*JavaScript不允许在对象字面量中，或者用点运算符提取对象属性时，使用保留字作为对象的属性名。*

标识符被用于语句、变量、参数、属性名、运算符和标记。

[⬆返回顶部](#top)

## 数字

JavaScript中只有一个数字类型 -- Number，它的实现遵循 IEEE 754 标准，使用 64 位固定长度来表示，也就是标准的 double 双精度浮点数（相关的还有float 32位单精度）。

* 如果这个数字是指数，那么这个字面量的值等于e之前的数字与10的e之后的数字的次方相乘，比如100 = 1e2.

* 在正数前面添加前置运算符`-`即可表示负数。

* NaN也是一个数值，表示不能产生正常结果的运算结果，**NaN不等于任何值，包括自己**，可以使用`isNaN(number)`来检测。

[⬆返回顶部](#top)

## 字符串

字符串字面量可以被包在一对单引号后者双引号中，它可能包含0个或者多个字符。

转义字符：`\`（反斜线）；JavaScript中所有字符都是16位的。

字符串一旦创建就无法改变，可以通过`+`来连接其他字符串组成新的字符串。

两个包含完全相同的字符且字符顺序也相同的字符串完全相等：

```javascript
'a' + 'b' + 'c' === 'abc'
// true
```

[⬆返回顶部](#top)

## 语句
