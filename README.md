
<div align="center">
    <img src="/logo/logo.png" >
</div> 

# Java服务端知识技能图谱

[![license](https://img.shields.io/badge/license-Attribution--NonCommercial%204.0%20-brightgreen.svg)](https://github.com/caison/java-knowledge-mind-map/blob/master/LICENSE)
[![original](https://img.shields.io/badge/original-陈彩华-orange.svg)](https://github.com/caison/java-knowledge-mind-map)
[![stars](https://img.shields.io/github/stars/caison/java-knowledge-mind-map.svg)](https://github.com/caison/java-knowledge-mind-map/stargazers)
[![forks](https://img.shields.io/github/forks/caison/java-knowledge-mind-map.svg)](https://github.com/caison/java-knowledge-mind-map/network/members)
[![issues](https://img.shields.io/github/issues/caison/java-knowledge-mind-map.svg)](https://github.com/caison/java-knowledge-mind-map/issues)
[![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-brightgreen.svg)](http://makeapullrequest.com)

# 目录
## ☕Java
* JVM
  * [垃圾回收](/Java/JVM/垃圾回收/)
  各种引用类型、判断对象存活的算法、垃圾回收算法
  * [内存结构](/Java/JVM/内存结构/)
  Java内存结构图，堆、方法区、虚拟机栈、本地方法栈、程序计数器
  * [内存模型](/Java/JVM/内存模型/)
  内存模型产生背景、Java内存模型组成分析、内存间的交互操作、运行规则、volatile变量规则等
* 并发
  * [线程池](/Java/并发/线程池/)
  线程池解决的问题、阻塞队列、线程池架构、任务饱和策略、线程池配置、线程池关闭、常见线程池类型
  * [Java多线程](/Java/并发/Java多线程/)
  线程和进程基本概念、多线程编程面临的问题和解决方案、线程安全、线程协作、线程中断等
  * [Disruptor](/Java/并发/Disruptor/)
  Disruptor介绍，架构设计，高性能原理，使用场景等
* 集合
  * [ArrayList和LinkedList](/Java/集合/ArrayList和LinkedList/)
  ArrayList和LinkedList的基本原理，基本操作实现，2者的比较   
  * [HashMap和ConcurrentHashMap](/Java/集合/HashMap和ConcurrentHashMap/)
  jdk7、jdk8的HashMap和ConcurrentHashMap实现解析，并发分析，关键参数
  
## ☁️分布式
* [Redis](/分布式/Redis/)
Redis基本介绍、数据类型、持久化机制、缓存过期策略、集群方案、与Memcached比较、缓存穿透、缓存雪崩、缓存热点、缓存一致性、线上问题排查
* [Dubbo](/分布式/Dubbo/)
RPC介绍、Dubbo特性、架构、负载均衡、集群容错策略
* [ZooKeeper](/分布式/ZooKeeper/)
功能与特性、架构设计(高性能、高可用、数据一致性实现原理)、应用场景、作为注册中心缺点分析
* [分布式锁](/分布式/分布式锁/)
分布式锁概念、使用场景、基于Redis/ZooKeeper/数据库的分布式锁方案实现与解析
* [Netty](/分布式/Netty/)
Netty基本概念，网络I/O模型，线程模型，基本工作原理，系统架构

## 💾数据库
* [1数据库要点](/数据库/1数据库要点/)
MySQL的Innodb与MyISAM比较、索引、SQL优化、SQL执行流程、主从同步原理等
* [2MySQL事务](/数据库/2MySQL事务/)
MySQL事务流程和原理、MVCC原理
* [3MySQL锁](/数据库/3MySQL锁/)
MySQL锁分类，各种锁的作用，加锁原理，加锁分析

## 📡计算机网络
* [互联网协议](/计算机网络/互联网协议)
互联网协议五层协议(应用层、传输层、网络层、链路层、物理层)由来，概念定义、作用的解析
* [TCP和HTTP](/计算机网络/TCP和HTTP)
TCP状态变迁图、TCP相关常见问题概念(三次握手，四次挥手)，HTTP相关问题概念解析

## 💪方法论
* [架构设计方法](/方法论/架构设计方法)
架构设计相关基本概念、架构设计的目的、设计原则、架构设计基本设计流程等
* [开源项目学习](/方法论/开源项目学习)
学习开源项目常见错误观点解析，学习的层次，学习的方法步骤介绍
* [Java服务线上应急](/方法论/Java服务线上应急)
线上服务应急流程，问题解决的思路、技巧，常见工具，命令行工具脚本

# 类似github知识库
* [architecture.of.internet-product 互联网公司技术架构，微信/淘宝/微博/腾讯/阿里/美团点评/百度/Google/Facebook/Amazon/eBay的架构](https://github.com/davideuler/architecture.of.internet-product)
* [📚 CyC Computer Science Learning Notes (技术面试需要掌握的基础知识整理)](https://github.com/CyC2018/CS-Notes)
* [😮 advanced-java 互联网 Java 工程师进阶知识完全扫盲](https://github.com/doocs/advanced-java)
* [technology-talk 汇总java生态圈常用技术框架、开源中间件，系统架构、项目管理、经典架构案例、数据库、常用三方库、线上运维等知识](https://github.com/aalansehaiyang/technology-talk)
* [architect-awesome 《后端架构师技术图谱》](https://github.com/xingshaocheng/architect-awesome)
* [To Be Top Javaer - Java工程师成神之路](https://github.com/hollischuang/toBeTopJavaer)
* [miaosha 😮😮秒杀系统设计与实现.互联网工程师进阶与分析🙋🐓](https://github.com/qiurunze123/miaosha)
* [interviews 软件工程技术面试个人指南](https://github.com/kdn251/interviews/blob/master/README-zh-cn.md)
* [JavaGuide 【Java学习+面试指南】 一份涵盖大部分Java程序员所需要掌握的核心知识](https://github.com/Snailclimb/JavaGuide)
* [🎓 Java Core Sprout : basic, concurrent, algorithm](https://github.com/crossoverJie/JCSprout)
* [j360-tools Java底层知识点、技术栈相关原理知识点、工具最佳实践](https://github.com/xuminwlt/j360-tools)
* [Java is Growing up but not only Java。Java成长路线，但学到不仅仅是Java](https://github.com/javagrowing/JGrowing)

# 建立这个库的目的
个人建立这个库最大的目的是为了成长，梳理脑图只是一个手段，但不是结果，只是一个高效的学习方法。

通过梳理脑图，针对一个模糊的知识点，我会不断提问，问自己这个知识点是怎么，解决了什么问题，有什么优劣，适用场景，以实现高效学习的最终目的。

**知识的本质是要解决问题，只有通过把知识一头连接着输入问题，一头连接着输出问题，你才算是学会了知识**，现实观察中，很多人，包括以前我自己，也会犯“**以为记住知识就是学会知识，用记忆的方法来学习**”的错误。

做知识的梳理的时候要关注知识解决的问题，在大脑中形成连接，而脑图，正是这个学习过程的一个高效手段。

此外，通过分享脑图，实现个人较为推崇另外一个学习方式，通过分享知识的方式(例如写博客，写开源项目)来学习(费曼方法)，因为在分享中不断去验证知识，加强大脑知识连接，以实现高效学习的目的。


# 联系作者
* 邮箱 caison@aliyun.com
* 微信 hua1881375
* 公众号 caison_way
* 个人博客 https://www.jianshu.com/u/ced6b70c7fc5

欢迎大家提批评、建议、改进意见
