-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-03-20 12:18:50
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `newplan`
--

-- --------------------------------------------------------

--
-- 表的结构 `collection`
--

CREATE TABLE IF NOT EXISTS `collection` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `pid` int(6) NOT NULL,
  `name` char(20) NOT NULL,
  `img` char(100) NOT NULL,
  `toid` int(6) NOT NULL,
  `toname` char(50) NOT NULL,
  `like` int(10) NOT NULL DEFAULT '0',
  `writes` int(10) NOT NULL DEFAULT '0',
  `time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `collection`
--

INSERT INTO `collection` (`id`, `pid`, `name`, `img`, `toid`, `toname`, `like`, `writes`, `time`) VALUES
(1, 2, 'myco1', 'http://img1.imgtn.bdimg.com/it/u=4169115067,2207817772&fm=23&gp=0.jpg', 1, '', 0, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- 表的结构 `follow`
--

CREATE TABLE IF NOT EXISTS `follow` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `pid` int(6) NOT NULL,
  `img` char(100) NOT NULL,
  `toid` int(11) NOT NULL,
  `toname` char(50) NOT NULL,
  `time` date NOT NULL,
  `workinfo` varchar(200) NOT NULL,
  `job` varchar(100) NOT NULL DEFAULT '#UI设计师# #LOGO# #BANNER#',
  `writes` int(10) DEFAULT '0',
  `like` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='我的关注' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `follow`
--

INSERT INTO `follow` (`id`, `pid`, `img`, `toid`, `toname`, `time`, `workinfo`, `job`, `writes`, `like`) VALUES
(3, 2, 'http://img.hb.aicdn.com/f41aef6d45a5e455315db88503becdfd1dc647569126-IrRRVm_fw658', 3, 'jack', '2016-05-05', '乐观的人看见问题后面的机会，悲观的人只看见机会后面的问题', '', 0, 0),
(4, 2, 'http://img.hb.aicdn.com/bbb47c65d3ded8f0129d7157dba500f8c6be6d29e5bd-cLOBu5_fw658', 4, 'rui', '2016-05-07', '一个人的成就并不是垂手可得，也不是上天会掉下来的', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `guid` int(11) NOT NULL AUTO_INCREMENT,
  `parentGuid` int(11) NOT NULL,
  `commentText` char(100) CHARACTER SET utf8 NOT NULL,
  `commentUserGuid` int(11) NOT NULL,
  `commentUserName` char(20) CHARACTER SET utf8 NOT NULL,
  `toUserGuid` int(11) NOT NULL,
  `toUserName` char(20) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) NOT NULL,
  `writes` int(10) NOT NULL DEFAULT '0',
  `like` int(10) NOT NULL DEFAULT '0',
  `commentDate` date NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `review`
--

INSERT INTO `review` (`guid`, `parentGuid`, `commentText`, `commentUserGuid`, `commentUserName`, `toUserGuid`, `toUserName`, `img`, `writes`, `like`, `commentDate`) VALUES
(2, 2, 'UI设计师急需掌握的平面设计基础-如何组织信息、分组、对其', 3, 'root', 2, 'admin', 'http://img4.imgtn.bdimg.com/it/u=2454598095,3747813641&fm=23&gp=0.jpg', 0, 0, '2017-03-02'),
(3, 2, '#UI设计师# #LOGO# #BANNER#', 2, 'admin', 3, 'root', 'http://img.hb.aicdn.com/81c6eae903170ce5225e06d2bf509da22cc52dcc41835-Zm0Bw4_fw658', 0, 0, '2017-03-04'),
(4, 2, 'hello world', 2, 'admin', 0, '', 'http://img.hb.aicdn.com/81c6eae903170ce5225e06d2bf509da22cc52dcc41835-Zm0Bw4_fw658', 1, 0, '2017-03-01'),
(10, 2, 'a4eafvwsfvd', 2, 'admin', 2, 'admin', 'http://img4.imgtn.bdimg.com/it/u=2454598095,3747813641&fm=23&gp=0.jpg', 0, 0, '0000-00-00'),
(11, 2, 'waefwefwwefwef', 2, 'admin', 2, 'admin', 'http://img4.imgtn.bdimg.com/it/u=2454598095,3747813641&fm=23&gp=0.jpg', 0, 0, '0000-00-00'),
(12, 2, 'waefwefwwefwef', 2, 'admin', 2, 'admin', 'http://img4.imgtn.bdimg.com/it/u=2454598095,3747813641&fm=23&gp=0.jpg', 0, 0, '0000-00-00'),
(13, 2, 'waefwefwwefwef', 2, 'admin', 2, 'admin', 'http://img4.imgtn.bdimg.com/it/u=2454598095,3747813641&fm=23&gp=0.jpg', 0, 0, '0000-00-00'),
(14, 2, 'wef', 2, 'admin', 2, 'admin', 'http://img4.imgtn.bdimg.com/it/u=2454598095,3747813641&fm=23&gp=0.jpg', 0, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- 表的结构 `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `pid` int(4) NOT NULL,
  `name` char(20) NOT NULL,
  `img` varchar(100) NOT NULL,
  `className` char(10) NOT NULL,
  `typename` char(50) NOT NULL,
  `typeId` tinyint(1) NOT NULL,
  `classId` tinyint(2) NOT NULL,
  `like` int(5) NOT NULL DEFAULT '0',
  `writes` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='上传作品表' AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `upload`
--

INSERT INTO `upload` (`id`, `pid`, `name`, `img`, `className`, `typename`, `typeId`, `classId`, `like`, `writes`) VALUES
(2, 2, 'myup1', 'http://img3.imgtn.bdimg.com/it/u=1303680113,133301350&fm=23&gp=0.jpg', '游戏', 'web', 0, 0, 0, 0),
(3, 2, 'myup2', 'http://img3.imgtn.bdimg.com/it/u=1303680113,133301350&fm=23&gp=0.jpg', '电商', 'app', 1, 0, 0, 0),
(4, 3, 'myup3', 'http://img4.imgtn.bdimg.com/it/u=1350614941,725003865&fm=23&gp=0.jpg', '动漫', 'watch', 2, 0, 0, 0),
(5, 2, 'myup4', 'http://img5.imgtn.bdimg.com/it/u=1425317030,4113620941&fm=23&gp=0.jpg', '工具', 'app', 1, 0, 0, 0),
(6, 2, 'myup5', 'http://img5.imgtn.bdimg.com/it/u=611483611,2895064642&fm=23&gp=0.jpg', '美食', 'watch', 2, 0, 0, 0),
(7, 3, 'myup7', 'http://img.hb.aicdn.com/3ebfba75dfda7ef04dd2c5c98816a703a6151a78f8709-fq3xjE_fw658', '', 'watch', 2, 0, 0, 0),
(8, 4, 'myup8', 'http://img.hb.aicdn.com/be16bd997736b6fb69675b066ba55ed35f8d7ce612327f-43iGwR_fw658', '', 'watch', 2, 0, 0, 0),
(17, 2, '', 'upload/2017-03-20/2017032026807372.png', '', '', 0, 0, 0, 0),
(18, 2, '', 'upload/2017-03-20/2017032034598432.png', '', '', 0, 0, 0, 0),
(19, 2, '', 'upload/2017-03-20/2017032057269714.png', '', '', 0, 0, 0, 0),
(20, 2, 's', 'upload/2017-03-20/2017032041971405.png', '', '', 2, 0, 0, 0),
(21, 2, '', 'upload/2017-03-20/2017032089334213.png', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(4) NOT NULL AUTO_INCREMENT,
  `email` char(50) NOT NULL,
  `password` char(20) NOT NULL,
  `username` char(20) NOT NULL,
  `role` char(5) NOT NULL,
  `workinfo` varchar(500) NOT NULL,
  `img` char(100) NOT NULL,
  `view` int(5) NOT NULL DEFAULT '0',
  `like` int(10) DEFAULT '0',
  `write` int(11) NOT NULL DEFAULT '0',
  `inputtime` date NOT NULL,
  `job` char(50) NOT NULL DEFAULT '#UI设计师# #LOGO# #BANNER#',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户信息' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `email`, `password`, `username`, `role`, `workinfo`, `img`, `view`, `like`, `write`, `inputtime`, `job`) VALUES
(2, 'phpcms', 'phpcms', 'admin', '', '一个冉冉升起的新星，瑞士-中国摄影师Jeff Hahn 创造了一组完美的姿态和令人回味的戏剧性时尚肖像。饱和的色彩', 'http://img4.imgtn.bdimg.com/it/u=2454598095,3747813641&fm=23&gp=0.jpg', 0, 0, 0, '2017-03-16', '#UI设计师# #LOGO# #BANNER#'),
(3, 'root@qq.com', 'root', 'root', '', '习近平两会布置6项任务 两会时间 两会足迹 治国理政', 'http://img.hb.aicdn.com/81c6eae903170ce5225e06d2bf509da22cc52dcc41835-Zm0Bw4_fw658', 0, 0, 0, '2017-03-16', '#UI设计师# #LOGO# #BANNER#'),
(4, 'phpcms@qq.com', 'phpcms', 'phpcms', '', '一个冉冉升起的新星，瑞士-中国摄影师Jeff Hahn 创造了一组完美的姿态和令人回味的戏剧性时尚肖像。饱和的色彩', 'http://img.hb.aicdn.com/bf31492cf1ba63aa602712f69377d0b8997cdf169ec1-AX4XaW_fw658', 0, 0, 0, '2017-03-16', '#UI设计师# #LOGO# #BANNER#');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
