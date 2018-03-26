<?php

namespace skill365
{
	//各级要完成的成就名，如果不存在则取低的
	$ach365_name = array(
		1=>'大吉大利 LV1',
		2=>'大吉大利 LV2',
		3=>'大吉大利 LV3',
	);
	
	$ach365_npcname = '卡玛·克莱因';
	
	//各级显示的要求，如果不存在则取低的
	$ach365_desc= array(
		1=>'对'.$ach365_npcname.'造成的伤害超过<:threshold:>点',
	);
	
	$ach365_proc_words = '目前进度';
	
	$ach365_unit = '点';
	
	//各级阈值，注意是达到这个阈值则升到下一级
	$ach365_threshold = array(
		1 => 1000,
		2 => 10000,
		3 => 100000,
		999 => NULL
	);
	
	//各级给的切糕奖励
	$ach365_qiegao_prize = array(
		1 => 1000,
		2 => 10000,
		3 => 100000,
	);
	
	//各级给的卡片奖励
	$ach365_card_prize = array(
		3 => 164,
	);
	
	function init() 
	{
		define('MOD_SKILL365_INFO','achievement;spec-activity;');
		define('MOD_SKILL365_ACHIEVEMENT_ID','65');
	}
	
	function acquire365(&$pa)
	{
		if (eval(__MAGIC__)) return $___RET_VALUE;
		\skillbase\skill_setvalue(365,'cnt','0',$pa);
	}
	
	function lost365(&$pa)
	{
		if (eval(__MAGIC__)) return $___RET_VALUE;
	}
	
	function ach_finalize_process(&$pa, $data, $achid)
	{
		if (eval(__MAGIC__)) return $___RET_VALUE;
		$ret = $chprocess($pa, $data, $achid);
		if($achid == 365){
			$ret += \skillbase\skill_getvalue(365,'cnt',$pa);
		}
		return $ret;
	}
	
	function get_apf2018_icon($achid, $c, $top_flag)
	{
		if (eval(__MAGIC__)) return $___RET_VALUE;
		
		if(!$c) {
			$ach_iconid = 'apf2018_N.png';
		}elseif(!$top_flag) {
			$ach_iconid = 'apf2018_D.png';
		}else {
			$ach_iconid = 'apf2018_DA.png';
		}

		return $ach_iconid;
	}
	
	function show_achievement_icon($achid, $c, $top_flag)
	{
		if (eval(__MAGIC__)) return $___RET_VALUE;
		$ret = $chprocess($achid, $c, $top_flag);
		if(365 == $achid) {
			$ret = get_apf2018_icon($achid, $c, $top_flag);
		}
		return $ret;
	}
	
	//把施加的伤害计入成就
	function apply_damage(&$pa,&$pd,$active)
	{
		if (eval(__MAGIC__)) return $___RET_VALUE;
		$ret = $chprocess($pa, $pd, $active);
		eval(import_module('skill365'));
		if (\skillbase\skill_query(365,$pa) && $pa['dmg_dealt']>0 && $pd['name'] == $ach365_npcname)
		{
			$cnt = \skillbase\skill_getvalue(365,'cnt',$pa);
			\skillbase\skill_setvalue(365,'cnt',$cnt+$pa['dmg_dealt'],$pa);
		}
		return $ret;
	}
	
	function activity_ranking_process365()
	{
		if (eval(__MAGIC__)) return $___RET_VALUE;
		eval(import_module('sys'));
		$upd_arr = array();
		foreach($gameover_ulist as $udata){
			$u_a = \achievement_base\decode_achievements($udata);
			if($u_a[365]) {
				$upd_arr[] = array(
					'username' => $udata['username'],
					'score1' => $u_a[365],
				);
			}
		}
		\activity_ranking\save_ulist_aranking('aprillfool2018', $upd_arr);
	}
	
	//在成就结算完以后，保存成就排行榜
	function post_gameover_events()
	{
		if (eval(__MAGIC__)) return $___RET_VALUE;
		$chprocess();
		if(!\achievement_base\check_achtype_available(34)) return; //只在愚人节期间有效
		activity_ranking_process365();
	}
}

?>