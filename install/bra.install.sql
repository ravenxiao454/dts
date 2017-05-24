DROP TABLE IF EXISTS `bra_game`;
CREATE TABLE `bra_game` (
  `gamenum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gametype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gamestate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groomid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groomtype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groomstatus` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `afktime` int(10) unsigned NOT NULL DEFAULT '0',
  `validnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `alivenum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `deathnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `combonum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weather` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hack` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hdamage` int(10) unsigned NOT NULL DEFAULT '0',
  `hplayer` char(15) NOT NULL DEFAULT '',
  `winmode` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `winner` char(15) NOT NULL DEFAULT '',  
  `areanum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `areatime` int(10) unsigned NOT NULL DEFAULT '0',
  `areawarn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `arealist` varchar(255) NOT NULL DEFAULT '',
  `noisevars` varchar(1000) NOT NULL DEFAULT '',
  `roomvars` text NOT NULL DEFAULT '',
  `gamevars` text NOT NULL DEFAULT '',
  PRIMARY KEY (`groomid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `bra_roomlisteners`
--

DROP TABLE IF EXISTS `bra_roomlisteners`;
CREATE TABLE `bra_roomlisteners` (
  `port` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `roomid` int(10) unsigned NOT NULL DEFAULT '0',
  `uniqid` char(35) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `bra_users`
--

DROP TABLE IF EXISTS `bra_users`;
CREATE TABLE `bra_users` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(15) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `roomid` char(5) NOT NULL DEFAULT '',
  `gender` char(1) NOT NULL DEFAULT '0',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `motto` char(30) NOT NULL DEFAULT '',
  `killmsg` char(30) NOT NULL DEFAULT '',
  `lastword` char(30) NOT NULL DEFAULT '', 
  `lastwin` int(10) unsigned NOT NULL DEFAULT '0',
  `lastgame` smallint(5) unsigned NOT NULL DEFAULT '0',
  `validgames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wingames` smallint(5) unsigned NOT NULL DEFAULT '0',  
  `credits` int(10) NOT NULL DEFAULT '0',
  `totalcredits` int(10) NOT NULL DEFAULT '0',
  `credits2` mediumint(9) NOT NULL DEFAULT '0',
  `gold` int(10) unsigned NOT NULL DEFAULT '0',  
  `elo_rating` int(10) unsigned NOT NULL DEFAULT '1500',
  `elo_volatility` int(10) unsigned NOT NULL DEFAULT '400',
  `elo_playedtimes` int(10) unsigned NOT NULL DEFAULT '0',
  `card` int(10) unsigned NOT NULL DEFAULT '0',
  `cd_s` int(10) unsigned NOT NULL DEFAULT '0',
  `cd_a` int(10) unsigned NOT NULL DEFAULT '0',
  `cd_a1` int(10) unsigned NOT NULL DEFAULT '0',
  `cd_b` int(10) unsigned NOT NULL DEFAULT '0',
  `cardenergylastupd` int(10) unsigned NOT NULL DEFAULT '0',
  `cardenergy` text NOT NULL DEFAULT '',
  `cardlist` text NOT NULL DEFAULT '',
  `elo_history` text NOT NULL DEFAULT '',
  `n_achievements` text NOT NULL DEFAULT '',
  
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `bra_history`
--

#DROP TABLE IF EXISTS `bra_history`;
#CREATE TABLE `bra_history` (
#	`wmode` tinyint(3) unsigned NOT NULL DEFAULT '0',
#	`winner` char(15) NOT NULL DEFAULT '',
#	`gametype` tinyint(3) NOT NULL DEFAULT '0',
#  `vnum` smallint(5) unsigned NOT NULL DEFAULT '0',
#  `gtime` int(10) unsigned NOT NULL DEFAULT '0',
#  `gstime` int(10) unsigned NOT NULL DEFAULT '0',
#  `getime` int(10) unsigned NOT NULL DEFAULT '0',
#  
#  
#  `winnum` int(11) NOT NULL DEFAULT '0',
#  `namelist` varchar(255) NOT NULL DEFAULT '',
#  `weplist` varchar(255) NOT NULL DEFAULT '',
#  `iconlist` varchar(80) NOT NULL DEFAULT '',
#  `gdlist` varchar(50) NOT NULL DEFAULT '',
#  `cardname` text NOT NULL DEFAULT '',
#  UNIQUE KEY `gid` (`gid`),
#  INDEX `WMODE` (`wmode`),
#  INDEX `WINNER` (`winner`)
#) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Table structure for table `bra_winners`
--

DROP TABLE IF EXISTS `bra_winners`;
CREATE TABLE `bra_winners` (
  `gid` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` char(15) NOT NULL DEFAULT '',
  `pass` char(32) NOT NULL DEFAULT '',
  `gd` char(1) NOT NULL DEFAULT 'm',
  `sNo` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `club` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mhp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `msp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `att` smallint(5) unsigned NOT NULL DEFAULT '0',
  `def` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pls` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lvl` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `money` smallint(5) unsigned NOT NULL DEFAULT '0',
  `bid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `inf` char(10) NOT NULL DEFAULT '',
  `rage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tactic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `killnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `killnum2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `wp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wk` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wg` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wc` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wd` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wf` smallint(5) unsigned NOT NULL DEFAULT '0',
  `teamID` char(15) NOT NULL DEFAULT '',
  `teamPass` char(15) NOT NULL DEFAULT '',
  `wep` char(30) NOT NULL DEFAULT '',
  `wepk` char(5) NOT NULL DEFAULT '',
  `wepe` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `weps` char(5) NOT NULL DEFAULT '0',
  `wepsk` char(40) NOT NULL DEFAULT '',
  `arb` char(30) NOT NULL DEFAULT '',
  `arbk` char(5) NOT NULL DEFAULT '',
  `arbe` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `arbs` char(5) NOT NULL DEFAULT '0',
  `arbsk` char(40) NOT NULL DEFAULT '',
  `arh` char(30) NOT NULL DEFAULT '',
  `arhk` char(5) NOT NULL DEFAULT '',
  `arhe` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `arhs` char(5) NOT NULL DEFAULT '0',
  `arhsk` char(40) NOT NULL DEFAULT '',
  `ara` char(30) NOT NULL DEFAULT '',
  `arak` char(5) NOT NULL DEFAULT '',
  `arae` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `aras` char(5) NOT NULL DEFAULT '0',
  `arask` char(40) NOT NULL DEFAULT '',
  `arf` char(30) NOT NULL DEFAULT '',
  `arfk` char(5) NOT NULL DEFAULT '',
  `arfe` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `arfs` char(5) NOT NULL DEFAULT '0',
  `arfsk` char(40) NOT NULL DEFAULT '',
  `art` char(30) NOT NULL DEFAULT '',
  `artk` char(5) NOT NULL DEFAULT '',
  `arte` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `arts` char(5) NOT NULL DEFAULT '0',
  `artsk` char(40) NOT NULL DEFAULT '',
  `itm0` char(30) NOT NULL DEFAULT '',
  `itmk0` char(5) NOT NULL DEFAULT '',
  `itme0` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itms0` char(5) NOT NULL DEFAULT '0',
  `itmsk0` char(40) NOT NULL DEFAULT '',
  `itm1` char(30) NOT NULL DEFAULT '',
  `itmk1` char(5) NOT NULL DEFAULT '',
  `itme1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itms1` char(5) NOT NULL DEFAULT '0',
  `itmsk1` char(40) NOT NULL DEFAULT '',
  `itm2` char(30) NOT NULL DEFAULT '',
  `itmk2` char(5) NOT NULL DEFAULT '',
  `itme2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itms2` char(5) NOT NULL DEFAULT '0',
  `itmsk2` char(40) NOT NULL DEFAULT '',
  `itm3` char(30) NOT NULL DEFAULT '',
  `itmk3` char(5) NOT NULL DEFAULT '',
  `itme3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itms3` char(5) NOT NULL DEFAULT '0',
  `itmsk3` char(40) NOT NULL DEFAULT '',
  `itm4` char(30) NOT NULL DEFAULT '',
  `itmk4` char(5) NOT NULL DEFAULT '',
  `itme4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itms4` char(5) NOT NULL DEFAULT '0',
  `itmsk4` char(40) NOT NULL DEFAULT '',
  `itm5` char(30) NOT NULL DEFAULT '',
  `itmk5` char(5) NOT NULL DEFAULT '',
  `itme5` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itms5` char(5) NOT NULL DEFAULT '0',
  `itmsk5` char(40) NOT NULL DEFAULT '',
  `itm6` char(30) NOT NULL DEFAULT '',
  `itmk6` char(5) NOT NULL DEFAULT '',
  `itme6` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itms6` char(5) NOT NULL DEFAULT '0',
  `itmsk6` char(40) NOT NULL DEFAULT '',
  `motto` char(30) NOT NULL DEFAULT '',
  `wmode` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `vnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gtime` int(10) unsigned NOT NULL DEFAULT '0',
  `gstime` int(10) unsigned NOT NULL DEFAULT '0',
  `getime` int(10) unsigned NOT NULL DEFAULT '0',
  `hdmg` int(10) unsigned NOT NULL DEFAULT '0',
  `hdp` char(15) NOT NULL DEFAULT '',
  `hkill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hkp` char(15) NOT NULL DEFAULT '',
  `gametype` int(10) NOT NULL DEFAULT '0',
  `winnum` int(11) NOT NULL DEFAULT '0',
  `namelist` char(255) NOT NULL DEFAULT '',
  `weplist` char(255) NOT NULL DEFAULT '',
  `iconlist` char(80) NOT NULL DEFAULT '',
  `gdlist` char(50) NOT NULL DEFAULT '',
  `cardname` text NOT NULL DEFAULT '',
  UNIQUE KEY `gid` (`gid`),
  INDEX `WMODE` (`wmode`),
  INDEX `WINNER` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;