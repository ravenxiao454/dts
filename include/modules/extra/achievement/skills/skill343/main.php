<?php

namespace skill343
{
	//各级要完成的成就名，如果不存在则取低的
	$ach343_name = array(
		1=>'碎片整理',
	);
	
	//各级显示的要求，如果不存在则取低的
	$ach343_desc= array(
		1=>'击杀<:threshold:>名数据碎片',
	);
	
	$ach343_proc_words = '击杀总数';
	
	$ach343_unit = '次';
	
	//各级阈值，注意是达到这个阈值则升到下一级
	$ach343_threshold = array(
		1 => 1,
		999 => NULL
	);
	
	//各级给的切糕奖励
	$ach343_qiegao_prize = array(
		1 => 320,
	);
	
	function init() 
	{
		define('MOD_SKILL343_INFO','achievement;daily;');
		define('MOD_SKILL343_ACHIEVEMENT_ID','43');
		define('DAILY_TYPE343',2);
	}
	
	function acquire343(&$pa)
	{
		if (eval(__MAGIC__)) return $___RET_VALUE;
		\skillbase\skill_setvalue(343,'cnt',0,$pa);
	}
	
	function lost343(&$pa)
	{
		if (eval(__MAGIC__)) return $___RET_VALUE;
	}
	
	function player_kill_enemy(&$pa,&$pd,$active){
		if (eval(__MAGIC__)) return $___RET_VALUE;
		$chprocess($pa, $pd, $active);		
		if ( \skillbase\skill_query(343,$pa) && $pd['type']==14 && $pd['hp'] <= 0 )
		{
			$x=(int)\skillbase\skill_getvalue(343,'cnt',$pa);
			$x+=1;
			\skillbase\skill_setvalue(343,'cnt',$x,$pa);
		}
	}	
	
	function ach_finalize_process(&$pa, $data, $achid)
	{
		if (eval(__MAGIC__)) return $___RET_VALUE;
		$ret = $chprocess($pa, $data, $achid);
		if($achid == 343){
			$var = (int)\skillbase\skill_getvalue($achid,'cnt',$pa);
			$ret += $var;
		}
		return $ret;
	}
}

?>