--
-- 表的结构 `bra_players`
-- 储存角色数据的激活信息，包括PC和NPC。
--

DROP TABLE IF EXISTS bra_players;
CREATE TABLE bra_players (
  `pid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` char(15) NOT NULL DEFAULT '',
  `pass` char(32) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `player_dead_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `corpse_clear_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gd` char(1) NOT NULL DEFAULT 'm',
  `sNo` smallint(5) unsigned NOT NULL DEFAULT '0',
  `club` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `validtime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `cdsec` int(10) unsigned NOT NULL DEFAULT '0',
  `cdmsec` smallint(3) unsigned NOT NULL DEFAULT '0',
  `cdtime` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action` char(12) NOT NULL DEFAULT '',
  `actionnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mhp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `msp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ss` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mss` smallint(5) unsigned NOT NULL DEFAULT '0',
  `att` smallint(5) unsigned NOT NULL DEFAULT '0',
  `def` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pls` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lvl` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exp` smallint(5) unsigned NOT NULL DEFAULT '0',
  `money` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rp` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `inf` char(10) NOT NULL DEFAULT '',
  `rage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tactic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `killnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `skillpoint` smallint(5) NOT NULL DEFAULT '0',
  `flare` tinyint(1) NOT NULL DEFAULT '0',
  `wp` int(10) unsigned NOT NULL DEFAULT '0',
  `wk` int(10) unsigned NOT NULL DEFAULT '0',
  `wg` int(10) unsigned NOT NULL DEFAULT '0',
  `wc` int(10) unsigned NOT NULL DEFAULT '0',
  `wd` int(10) unsigned NOT NULL DEFAULT '0',
  `wf` int(10) unsigned NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '0',
  `teamID` char(15) NOT NULL DEFAULT '',
  `teamPass` char(15) NOT NULL DEFAULT '',
  `card` int(10) NOT NULL DEFAULT '0',
  `cardname` varchar(50) NOT NULL DEFAULT '',
  `wep` varchar(30) NOT NULL DEFAULT '',
  `wepk` char(5) NOT NULL DEFAULT '',
  `wepe` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `weps` char(5) NOT NULL DEFAULT '0',
  `wepsk` varchar(40) NOT NULL DEFAULT '',
  `arb` varchar(30) NOT NULL DEFAULT '',
  `arbk` char(5) NOT NULL DEFAULT '',
  `arbe` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `arbs` char(5) NOT NULL DEFAULT '0',
  `arbsk` varchar(40) NOT NULL DEFAULT '',
  `arh` varchar(30) NOT NULL DEFAULT '',
  `arhk` char(5) NOT NULL DEFAULT '',
  `arhe` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `arhs` char(5) NOT NULL DEFAULT '0',
  `arhsk` varchar(40) NOT NULL DEFAULT '',
  `ara` varchar(30) NOT NULL DEFAULT '',
  `arak` char(5) NOT NULL DEFAULT '',
  `arae` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `aras` char(5) NOT NULL DEFAULT '0',
  `arask` varchar(40) NOT NULL DEFAULT '',
  `arf` varchar(30) NOT NULL DEFAULT '',
  `arfk` char(5) NOT NULL DEFAULT '',
  `arfe` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `arfs` char(5) NOT NULL DEFAULT '0',
  `arfsk` varchar(40) NOT NULL DEFAULT '',
  `art` varchar(30) NOT NULL DEFAULT '',
  `artk` varchar(40) NOT NULL DEFAULT '',
  `arte` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `arts` char(5) NOT NULL DEFAULT '0',
  `artsk` varchar(40) NOT NULL DEFAULT '',
  `itm0` varchar(30) NOT NULL DEFAULT '',
  `itmk0` char(5) NOT NULL DEFAULT '',
  `itme0` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itms0` char(5) NOT NULL DEFAULT '0',
  `itmsk0` varchar(40) NOT NULL DEFAULT '',
  `itm1` varchar(30) NOT NULL DEFAULT '',
  `itmk1` char(5) NOT NULL DEFAULT '',
  `itme1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itms1` char(5) NOT NULL DEFAULT '0',
  `itmsk1` varchar(40) NOT NULL DEFAULT '',
  `itm2` varchar(30) NOT NULL DEFAULT '',
  `itmk2` char(5) NOT NULL DEFAULT '',
  `itme2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itms2` char(5) NOT NULL DEFAULT '0',
  `itmsk2` varchar(40) NOT NULL DEFAULT '',
  `itm3` varchar(30) NOT NULL DEFAULT '',
  `itmk3` char(5) NOT NULL DEFAULT '',
  `itme3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itms3` char(5) NOT NULL DEFAULT '0',
  `itmsk3` varchar(40) NOT NULL DEFAULT '',
  `itm4` varchar(30) NOT NULL DEFAULT '',
  `itmk4` char(5) NOT NULL DEFAULT '',
  `itme4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itms4` char(5) NOT NULL DEFAULT '0',
  `itmsk4` varchar(40) NOT NULL DEFAULT '',
  `itm5` varchar(30) NOT NULL DEFAULT '',
  `itmk5` char(5) NOT NULL DEFAULT '',
  `itme5` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itms5` char(5) NOT NULL DEFAULT '0',
  `itmsk5` varchar(40) NOT NULL DEFAULT '',
  `itm6` varchar(30) NOT NULL DEFAULT '',
  `itmk6` char(5) NOT NULL DEFAULT '',
  `itme6` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itms6` char(5) NOT NULL DEFAULT '0',
  `itmsk6` varchar(40) NOT NULL DEFAULT '',
  `searchmemory` text NOT NULL DEFAULT '',
  `nskill` text NOT NULL,
  `nskillpara` text NOT NULL,
  
  PRIMARY KEY (`pid`),
  INDEX `TYPE` (`type`),
  INDEX `NAME` (`name`),
  INDEX `PLS` (`pls`)
	
) ENGINE=MyISAM;