<?php


$lang = array
(
	'gamename' => '生存游戏 BRA',
	'succeed' => '成功',
	'fail' => '失败',
	'exit' => '退出安装向导',
	'enabled' => '允许',
	'writeable' => '可写',
	'unwriteable' => '不可写',
	'yes' => '可',
	'no' => '不可',
	'unlimited' => '不限',

	'configure' => '配置 config.inc.php',
	'check_config' => '检查配置文件状态',
	'check_existence' => '存在检查',
	'check_writeable' => '可写检查',
	'edit_config' => '浏览/编辑当前配置',
	'variable' => '设置选项',
	'value' => '当前值',
	'comment' => '注释',
	'dbhost' => '数据库服务器',
	'dbhost_comment' => '数据库服务器地址, 一般为 localhost',
	'dbuser' => '数据库用户名',
	'dbuser_comment' => '数据库账号用户名',
	'dbpw' => '数据库密码',
	'dbpw_comment' => '数据库账号密码',
	'dbname' => '数据库名',
	'dbname_comment' => '数据库名称',
	'authkey' => '游戏加密密钥',
	'authkey_comment' => '必须与插件密钥相同',
	'gtitle' => '游戏标题',
	'gtitle_comment' => '显示在标题栏和页面最上方',
	'server_address' => '本地服务器地址',
	'server_address_comment' => '用于进程间数据交换，建议尽量用本地IP或者数字IP',
	'tplrefresh' => '模板自动刷新',
	'tplrefresh_comment' => '在长期不修改页面文件的情况下可以关闭',
	'errorinfo' => '显示错误信息',
	'errorinfo_comment' => '开启后会泄漏游戏安装路径并可能影响页面完整性',
	'tablepre' => '表名前缀',
	'tablepre_comment' => '同一数据库安装多个游戏时可改变默认',
	'tablepre_prompt' => '除非您需要在同一数据库安装多个 生存游戏\n 否则,强烈建议您不要修改表名前缀.',
	'moveut' => '服务器时差',
	'moveut_comment' => '在此处设置服务器跟你采用时间的差值，一般用于国外服务器。当前服务器时间:',
	'moveutmin' => '服务器时差（分钟）',
	'orin_time' => '当前服务器时间：',
	'set_time' => '修正服务器时间：',
	'bbsurl' => '论坛地址',
	'bbsurl_comment' => '安装游戏插件的论坛地址',
	'gameurl' => '游戏程序地址',
	'gameurl_comment' => '游戏页面各超链接指向的本服务器地址',
	'homepage' => '官方网站地址',
	'homepage_comment' => '站长个人主页或游戏官方网站的地址',
	
	'userdb_remote_storage' => '远端用户数据库',
	'userdb_remote_storage_comment' => '读写用户数据库的远端服务器的地址（是特定的一个接收php），留空为存本地',
	'userdb_remote_storage_sign' => '远端用户读写标记',
	'userdb_remote_storage_sign_comment' => '读写远端用户数据库的标记，需要与该服务器设置一致',
	'userdb_remote_storage_pass' => '远端用户读写密码',
	'userdb_remote_storage_pass_comment' => '读写远端用户数据库的密码，需要与该服务器设置一致',
	'replay_remote_send' => '录像即时存到远端',
	'replay_remote_send_comment' => '是否在生成录像时就直接存到远端。<br>就算启动也不会删除本地录像，请定期手动删除或者等待系统自动维护时删除',
	'replay_remote_storage' => '远端录像数据库',
	'replay_remote_storage_comment' => '读写录像的远端服务器的地址（是特定的一个接收php）。<br>留空为只读本地，否则会在本地缺失录像时尝试拉取远端录像',
	'replay_remote_storage_sign' => '远端录像读写标记',
	'replay_remote_storage_sign_comment' => '读写远端录像的标记，需要与该服务器设置一致',
	'replay_remote_storage_key' => '远端录像读写密码',
	'replay_remote_storage_key_comment' => '读写远端录像的密码，需要与该服务器设置一致',
	
	'save_config' => '保存配置信息',

	'db_set' => '请设置安装游戏的数据库',
	'db_use_existence' => '使用已存在的数据库',
	'db_create_new' => '创建新的数据库',

	'config_nonexistence' => '您的 config.inc.php 不存在, 无法继续安装, 请用 FTP 将该文件上传后再试.',
	'config_comment' => '请在下面填写您的数据库账号信息, 通常情况下不需要修改红色选项内容.',
	'config_unwriteable' => '安装向导无法写入配置文件, 请核对现有信息, 如需修改, 请通过 FTP 将改好的 config.inc.php 上传.',
	
	'username' => '管理员账号',
	'username_comment' => '必须为论坛已存在账号',
	'adminmsg' => '站长留言',
	'adminmsg_comment' => '给用户的公告信息',
	'systemmsg' => '系统状况',
	'systemmsg_comment' => '显示系统状况信息，可与站长留言配合使用',
	'startmode' => '游戏开始模式',
	'startmode_comment' => '与游戏开始时间配合使用。',
	'starthour' => '游戏开始小时',
	'starthour_comment' => '模式0在“当前游戏管理”里中设置开始时间，<br>模式1为每天开始小时数，<br>模式2为每局结束后的间隔小时数，<br>模式3无视此值。',
	'startmin' => '游戏开始分钟',
	'startmin_comment' => '模式2为整点几分开局，一般不要在整点时开局，可能出现问题。<br>模式3为每局结束后间隔几分开局。',
	'readymin' => '游戏准备时间',
	'readymin_comment' => '距离游戏开始时间小于这个准备时间时，进行游戏数据的准备。',
	'iplimit' => 'IP限制',
	'iplimit_comment' => '0为不限制，数字为允许同时存活人数。',
	'newslimit' => '进行状况显示',
	'newslimit_comment' => '进行状况显示条数。',
	'alivelimit' => '生存者显示',
	'alivelimit_comment' => '当前生存者显示条数。',
	'winlimit' => '优胜者显示',
	'winlimit_comment' => '历史优胜者显示条数。',
	'noiselimit' => '枪声间隔',
	'noiselimit_comment' => '可以听到枪声的最大时间，单位 秒。',
	'chatlimit' => '聊天显示',
	'chatlimit_comment' => '游戏内聊天信息显示条数',
	'disable_event' => '禁用活动局',
	'disable_event_comment' => '禁用后将不会举办曜日活动',
	'disable_newroom' => '禁用房间系统',
	'disable_newroom_comment' => '禁用后玩家将不能创建和进入房间',
	'disable_newgame' => '禁止新游戏',
	'disable_newgame_comment' => '禁用后将不会自动开启新游戏，玩家也不能创建和进入房间',
	'chatrefresh' => '聊天刷新',
	'chatrefresh_comment' => '聊天信息的刷新速度，单位 毫秒。',
	'chatinnews' => '游戏外聊天显示',
	'chatinnews_comment' => '进行状况中是否显示聊天。0为不显示，数字为显示条数。',
	'max_room_num' => '最大房间数',
	'max_room_num_comment' => '最大房间数目。教程房不计在内。',
	'antiAFKertime' => '反挂机间隔时间',
	'antiAFKertime_comment' => '手动清除长时间不动的玩家的最小时间间隔，单位分钟。',
	'corpseprotect' => '尸体保护时间',
	'corpseprotect_comment' => '决定角色死亡后经过多久才能被他人遇到或者被凸眼鱼影响，单位秒。',
	'coldtimeon' => '冷却时间启动',
	'coldtimeon_comment' => '决定是否启动冷却时间，防止利用脚本快速提交。。',
	'movecoldtime' => '移动的冷却时间',
	'movecoldtime_comment' => '移动后的冷却时间，单位微秒。',
	'searchcoldtime' => '探索的冷却时间',
	'searchcoldtime_comment' => '探索后的冷却时间，单位微秒。',
	'itemusecoldtime' => '道具的冷却时间',
	'itemusecoldtime_comment' => '使用道具后的冷却时间，建议比上述2个值稍小。单位微秒。',
	'showcoldtimer' => '冷却时间倒计时',
	'showcoldtimer_comment' => '决定是否显示冷却时间的倒计时。',
	
	'areahour' => '禁区间隔时间',
	'areahour_comment' => '单位：分钟',
	'areaadd' => '禁区增加数',
	'areaadd_comment' => '每次增加的禁区数量，最小为1',
	'arealimit' => '停止激活禁区数',
	'arealimit_comment' => '注意，是增加禁区的回数，而不是禁区的数量',
	'areaesc' => '自动逃避禁区',
	'areaesc_comment' => '0=关闭。1=所有玩家自动躲避，适合新手较多，不了解禁区机制',
	'validlimit' => '激活人数上限',
	'validlimit_comment' => '每局玩家数上限，进入游戏的玩家达到此数目则游戏停止激活',
	'combolimit' => '连斗人数',
	'combolimit_comment' => '停止激活后，人数少于此数值则进入连斗',
	'deathlimit' => '连斗人数2',
	'deathlimit_comment' => '停止激活后，死亡人数(包括 npc)大于此数值则进入连斗',
	'splimit' => '体力上限',
	'splimit_comment' => '角色的最大体力，体力最大值不会增长',
	'hplimit' => '生命上限',
	'hplimit_comment' => '角色0级的最大生命，生命最大值会随等级增长',
	'hack_obbs' => 'hack基础成功率',
	'hack_obbs_comment' => '普通角色hack的成功率（特殊称号有额外加成），请勿超过100',
	'rest_sleep_time' => '体力恢复时间',
	'rest_sleep_time_comment' => '恢复体力最大值的1%需要的时间，单位：秒。',
	'rest_heal_time' => '生命恢复时间',
	'rest_heal_time_comment' => '恢复生命最大值的1%需要的时间，单位：秒。',
	'teamlimit' => '组队人数上限',
	'teamlimit_comment' => '队伍的最大人数（含队长）',
	'npclimit' => 'npc数量',
	'npclimit_comment' => '士兵的数量，与其他npc无关',

	'startmode_0' => '模式0：手动设定:',
	'startmode_1' => '模式1：每日定时:',
	'startmode_2' => '模式2：整点开始:',
	'startmode_3' => '模式3：间隔开始:',
	'starttime_0' => '设定时间:',
	'starttime_1' => '立即开始:',
	'year' => '年',
	'month' => '月',
	'day' => '日',
	'hour' => '时',
	'min' => '分',

	'license' => '<p class="subtitle">生存游戏 BRA中文版授权协议 适用于中文用户。<br>本游戏版权属 龙游网 www.loongyou.com 所有，未经允许不得用于任何商业用途。</p>',

	'preparation' => '<li>将压缩包中 生存游戏BRA 目录下全部文件和目录上传到服务器.</li><li>修改服务器上的 config.inc.php 文件以适合您的配置, 有关数据库账号信息请咨询您的空间服务提供商.</li><li>如果您使用非 WINNT 系统请修改以下属性:<br>&nbsp; &nbsp; <b>./templates</b> 目录 777;&nbsp; &nbsp; <b>./gamedata</b> 目录 777;<br><b>&nbsp; &nbsp;<br></li>',
	
	'emenu' => '系统环境',
	'gmenu' => '当前游戏',
	'standard' => '标准局',
	'room' => '房间',
	
	'options' => '选项',
	'comments' => '说明',
	'groups' => '权限',
	'configmng' => '底层参数设置',
	'configmng_comment' => '配置服务器时差、错误信息显示等游戏底层参数<br>对应server.config.php和system.config.php',
	'globalgamemng' => '全局参数设置',
	'globalgamemng_comment' => '配置游戏开始模式等全局环境相关的系统参数<br>对应game.config.php',
	'gamecfgmng' => '游戏参数配置',
	'gamecfgmng_comment' => '设置跟单局游戏相关的游戏参数<br>对应modules文件夹下的某些*.config.php',
	'systemmng' => '全局参数设置',
	
	'banlistmng' => '屏蔽列表管理',
	'banlistmng_comment' => '管理用户名和IP的屏蔽信息<br>对应banlist.list',
	'gmlist' => 'GM权限管理',
	'gmlist_comment' => '设置各管理员的权限',
	'urlist' => '玩家帐户管理',
	'urlist_comment' => '管理玩家帐户信息',
	'gamecheck' => '当前游戏自检',
	'gamecheck_comment' => '修正游戏人数异常和移动下拉框消失的功能',
	'adminlogcheck' => '管理操作记录',
	'adminlogcheck_comment' => '查看本服管理员操作记录',
	'rankclear' => '排行榜重置',
	'rankclear_comment' => '重置积分榜，使用前确认你在做什么<br>本功能较少用到，暂时关闭。',
	'roomclose' => '关闭闲置房间',
	'roomclose_comment' => '关闭长期闲置的房间',
	'dbmng' => '数据库操作',
	'dbmng_comment' => '进行数据库备份、还原和直接操作数据库的功能。<br>使用前请弄明白你在做什么。',
	
	'gamemng' => '当前游戏管理',
	'gamemng_comment' => '管理当前局的玩家、NPC、天气等数据<br>对应数据库及gameinfo.php',//已废弃
	
	'pcmng' => '玩家数据管理',
	'pcmng_comment' => '修改当前局玩家的各数值，不影响帐号',
	'npcmng' => 'NPC数据管理',
	'npcmng_comment' => '修改当前局NPC的各数值，不影响其他局',
	'wthmng' => '当前天气管理',
	'wthmng_comment' => '修改当前天气状况',
	'gameinfomng' => '游戏状况管理',
	'gameinfomng_comment' => '修改当前局游戏的时间、状态等基础信息',
	'antiAFKmng' => '反挂机功能',
	'antiAFKmng_comment' => '手动清除一定时间内未行动的玩家',
	'sttimemng' => '开始时间管理',
	'sttimemng_comment' => '设定下局游戏的开始时间',
	
	
	'on' => '开启',
	'off' => '关闭',
	
	'mygroup' => '您的权限：',
	'command_ok' => '操作成功完成',
	'goto_menu' => '返回管理菜单',
);


?>