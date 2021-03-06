
BuildEnv(...)

ADDON_TITLE = '集合石插件'

local L = LibStub('AceLocale-3.0'):NewLocale('MeetingStone', 'zhCN', true, true)
if not L then return end

L.CreateHelpRefresh = '点击刷新下方的申请列表'
L.CreateHelpList = '在此列出所有申请信息，团长或团队助理可以进行邀请等操作'
L.CreateHelpOptions = '创建活动时必选项，设置活动所属的类别、形式和拾取方式'
L.CreateHelpSummary = '创建活动时选填项，设置活动的最低装等、语音聊天、角色等级、PVP 等级和活动说明'
L.CreateHelpButtons = '团长可在此进行创建、更新或解散活动等操作'
L.ViewboardHelpOptions = '团员可以在此看到活动的类别、形式和拾取方式等信息'
L.ViewboardHelpSummary = '团员可以在此看到活动的队伍配置和队伍需求等信息'

L.RewardSummary = [[
<html>
<body>
<p>1.本平台供您兑换暴雪游戏虚拟物品。</p>
<p>2.虚拟物品奖励一经兑换即不可退换。</p>
<p>3.兑换角色默认为您当前服务器和角色（即您当前使用兑换的角色）。</p>
<p>4.兑换后，会以邮件的形式通知您。如果没有马上收到，还请耐心等待。</p>
<p>5.如果您在24小时之内没收到相应的物品，请您联系客服。</p>
</body>
</html>
]]

L.MallSummary = [[
<html>
<body>
<p>　　兑换成功系统会在1个工作日内将虚拟物品发送到您当前角色的游戏邮箱内，请注意查收。如果出现积分扣除，但未收到物品，可以|Hurl:http://bnet.163.com/dj/exchange/query/wow|h|cff00ffff[点击这里]|r|h查询兑换码后，手动进行兑换。</p>
<p>　　查看详细积分变更信息及兑换记录请|Hurl:http://reward.battlenet.com.cn|h|cff00ffff[访问这里]|r|h</p>
<p>|cff00ffff*每月限量物品，当月库存兑完后将再下个月的1号更新，敬请留意。|r</p>
</body>
</html>
]]

L.MallPurchaseSummary = [[
<html>
<body>
<h3>购买中，请稍候 ...</h3>
<br/>
<p>您购买的物品为：|cff00ff00%s|r</p>
<p>所需积分：|cff00ff00%d|r</p>
<br />
<h2>购买成功后会通过游戏内邮件发送给您当前的角色，请您留意。</h2>
<p>如果您在24小时之内没有收到相应的物品，请您联系客服。</p>
</body>
</html>
]]

L.RewardPurchaseSummary = [[
<html>
<body>
<h3>兑换中，请稍候 ...</h3>
<br/>
<h2>兑换成功后会通过游戏内邮件发送给您当前的角色，请您留意。</h2>
<p>如果您在24小时之内没有收到相应的物品，请您联系客服。</p>
</body>
</html>
]]

L.HowToGetPoints = [[
当您购买任意战网产品（包括游戏时间、战网点数、虚拟宠物坐骑、角色增值服务）时使用|cffffd100战网在线支付（网易宝）|r功能进行付款，即可按照1:1比例获得积分！

|cff00ffff详情请复制以下网址查看：
]]

L.GoodsLoadingSummary = [[
<html>
<body>
<h3>商品数据读取中，请稍候 ...</h3>
<br/>
<p>如果您刚上线，将在十五分钟内读取到商品数据。</p>
<br/>
<p>如果长时间无法收到商品数据，请检查插件版本或者联系集合石官方QQ群|Hurl:317548615|h|cff00ffff[317548615]|r|h。</p>
</body>
</html>
]]

L.BrowseHelpFilter = [[
活动类型：下拉菜单选择你需要参与活动的类型

活动形式：下拉菜单选择你需要参与的活动形式

拾取方式：下拉菜单选择你需要参与活动的拾取方式
]]

L.BrowseHelpRefresh = [[
刷新按钮：刷新当前的活动信息

高级过滤：打开首领击杀状态过滤与过滤配置面板
]]

L.BrowseHelpList = [[
活动展示页：你可以在这里挑选你自己喜欢的活动。

鼠标悬停后会出现活动及队长的具体信息
]]

L.BrowseHelpMisc = [[
图示：活动当前的状态图示
]]

L.BrowseHelpApply = [[
申请加入：选择你要加入的活动，点击该按钮申请加入
]]

L.BrowseHelpStatus = [[
当前活动的总数以及你申请的活动总数
]]

L.BrowseHelpSpamWord = [[
启用活动说明关键字过滤功能，关键字列表可以在设置界面修改
]]

L.BrowseHelpBossFilter = [[
首领过滤：Boss击杀状态过滤器
]]

L.BrowseHelpSearchProfile = [[
过滤配置：保存当前搜索条件，下次快速搜索
]]

L.NotSupportVersionWithChangeLog = [[
|cffff1919发现集合石新版本，你当前的版本不兼容。|r

更新日志：%s

请按<|cff00ff00Ctrl+C|r>复制下载链接更新新版本以继续使用
]]

L.NotSupportVersion = [[
|cffff1919发现集合石新版本，你当前的版本不兼容。|r

请按<|cff00ff00Ctrl+C|r>复制下载链接更新新版本以继续使用
]]

L.FoundRaidBuilder = [[
发现你正在使用老版本集合石插件，

请尽快删除 |cff00ffffInterface\AddOns\RaidBuilder|r 文件夹，

点击“确定”|cffff0000重载插件|r以禁用老版本集合石。
]]

L.NewVersionWithChangeLog = [[
发现新版本：%s，请及时下载更新
下载链接：%s
更新内容：%s
更多更新内容请浏览论坛
]]

L.NewVersion = [[
发现新版本：%s，请及时下载更新
下载链接：%s
]]

L.ActivitiesBuyingSummary = [[
<html>
<body>
<h3>购买中，请稍候 ...</h3>
<br/>
<p>您购买的物品为：|cff00ff00%s|r</p>
<p>所需点数：|cff00ff00%d|r</p>
</body>
</html>
]]

L.ActivitiesMallSummary = [[
<html>
<body>
<p>　　每日奖品数量将自动刷新。消耗相应积分即可抢购指定奖品，先到先得，抢完为止！奖品会在活动结束后统一发放。战网点数奖励将自动充入您所填写的战网账号。详情：{URL}</p>
<p>　　|cffff1919特别提醒：|r工作人员不会向您索要密码等安全信息, 获奖玩家也无需再缴纳任何费用。</p>
</body>
</html>
]]

L.ActivitiesLotterySummary = [[
<html>
<body>
<p>　　消耗积分即可参与一次抽奖。奖品会在活动结束后统一发放。战网点数奖励将自动充入您所填写的战网账号。详情：{URL}</p>
<p>　　|cffff1919特别提醒：|r工作人员不会向您索要密码等安全信息, 获奖玩家也无需再缴纳任何费用。</p>
</body>
</html>
]]

L.ActivitiesMallWarning = [[
|cffff1919请注意：|r

    抢购成功后，请认真填写收货人信息。我们的工作人员会在活动结束后通过您填写的电话与您取得联系。届时，客服人员将与您核对确认奖品的邮寄地址。

    如截止至活动结束，我们仍无法通过您所提供的联系方式与您取得联系并确认奖品的邮寄地址，则视为您已放弃领奖资格，该奖品将被收回。
]]

L.ActivitiesLotteryWaring = [[
|cffff1919请注意：|r

    中奖后，请认真填写收货人信息。我们的工作人员会在活动结束后通过您填写的电话与您取得联系。届时，客服人员将与您核对确认奖品的邮寄地址。

    如截止至活动结束，我们仍无法通过您所提供的联系方式与您取得联系并确认奖品的邮寄地址，则视为您已放弃领奖资格，该奖品将被收回。
]]

L.MallOtherGameTip = [[你需要前往战网积分网站上进行兑换。]]

L.WalkthroughItem1 = {
    title='回归玩家必做的十件事',
    content=[[
<h1>1.	完成暗影国度四张地图的任务线</h1>
<p>在暗影国度中，满级解锁盟约需要四张地图主线任务的成就，而盟约则是满级内容的第一步。</p>
<br />
<h1>2.	选择自己喜欢的盟约，开启盟约圣所</h1>
<p>在四张地图的练级过程中，你将会体验到各个盟约独有的职业技能。满级后，你可以选择加入一个盟约，并开启圣所。</p>
<p>每个盟约都有独有的盟约战役，并会奖励你盟约套装。</p>
<br />
<h1>3.	建立灵魂羁绊，强化你的技能</h1>
<p>在选择盟约之后，你还可以与其中的一些人建立羁绊，用他们的精华和导灵器进一步定制你的技能，强化你的灵魂。</p>
<p>每个盟约都有三个灵魂羁绊供你选择，每个灵魂羁绊都会提供他们独有的能力。</p>
<p>除去这些，你还可以将一些导灵器插入到灵魂羁绊熔炉中，进而强化你的技能。</p>
<br />
<h1>4.	突入噬渊，与典狱长斗智斗勇</h1>
<p>噬渊是满级后的一个重要地图，在这个地方你可以获取一种特殊货币——魂殇，它可以用来兑换新版的打孔器，以及强化你的导灵器。</p>
<br />
<h1>5.	罪魂之塔，拯救灵魂</h1>
<p>罪魂之塔是暗影国度中新的玩法，其中散布的心能之力，则会在本次冒险中强化你的能力，让你有不同寻常的体验。</p>
<p>击败最终首领将会奖励你一些特殊的材料，其中包含制作传说装备的灵魂灰烬。</p>
<br />
<h1>6.	传说之力，定制你的橙色装备</h1>
<p>在暗影国度版本中，传奇装备再度回归。通过罪魂之塔的冒险解锁刻符者之后，你可以通过各个途径获取传说之力，并将其灌注到特定的几个部位中，这些橙色装备的副属性搭配可以由你自由选择。</p>
<br />
<h1>7.	全新的团队副本——纳斯利亚堡</h1>
<p>纳斯利亚堡是暗影国度的第一个团队副本，在暗影国度正式上线后的第三周将会开放普通和英雄难度，随后一周会开启史诗难度以及随机难度的第一区。</p>
<p>这个团队副本一共有10个boss，掉落的装备的物品等级为187（随机），200（普通），213（英雄），226（史诗），其中最终boss德纳修斯大帝掉落的装备物品等级在基础上要高7个装等。</p>
<br />
<h1>8.	新的赛季，挑战钥石秘境</h1>
<p>在暗影国度正式上线后的第三周将会开启新的史诗秘境赛季，新的赛季词缀——傲慢将会加入到游戏中。</p>
<p>同时，部分轮换词缀发生了变化，新的词缀风雷、鼓舞和怨毒加入到游戏中，而无常和繁盛词缀移除。</p>
<p>附：词缀说明</p>
<p>傲慢：玩家击败非首领敌人会产生傲慢，最终形成一个傲慢具象，击败它可以获得增益效果(30%增伤+60%移速+每秒回蓝5%，持续1分钟)。</p>
<p>风雷：战斗中的敌人会周期性的召唤伤害性旋风。 </p>
<p>鼓舞：部分非首领敌人会鼓舞并强化他们的盟友。 </p>
<p>怨毒：恶鬼从非首领敌人的尸体中爬出并随机追逐玩家。</p>
<br />
<h1>9.	提升新声望</h1>
<p>在暗影国度中，新增的声望会提供各种物品，比如专业图纸，传说之力等等。</p>
<br />
<h1>10.	学习新的专业</h1>
<p>专业会为你在暗影国度的冒险中提供一定的帮助，并且以前移除的部分消耗品也再度回归，例如磨刀石和护甲片。</p>]]
}

L.WalkthroughItem2 = {
    title= '新手玩家必做的十件事',
    content=[[
<h1>1.	选择自己喜欢的时空漫游战役提升等级</h1>
<p>在完成新手教学的流放者离岛后，你可以拜访主城大使馆的克罗米，选择自己喜欢的版本升级。你也可以选择留在当前的时间线，通过争霸艾泽拉斯版本的剧情任务提升等级。</p>
<p>注：如果你是一个纯新手账号，是没有克罗米时光漫游战役选择的，只能在当前时间线进行升级。</p>
<br />
<h1>2.	准备食物等消耗品，前往暗影界</h1>
<p>当你达到50级后，就可以前往暗影界。不过在此之前，你可以准备一些食物等消耗品，在暗影界初期的冒险中，补给是必不可少的。</p>
<br />
<h1>3.	完成暗影国度四张地图的任务线。</h1>
<p>在暗影国度中，满级解锁盟约需要四张地图主线任务的成就，而盟约则是满级内容的第一步。</p>
<br />
<h1>4.	选择自己喜欢的盟约，开启盟约圣所。</h1>
<p>在四张地图的练级过程中，你将会体验到各个盟约独有的职业技能。满级后，你可以选择加入一个盟约，并开启圣所。</p>
<p>每个盟约都有独有的盟约战役，完成他们会奖励你盟约套装。</p>
<br />
<h1>5.	完成盟约使命</h1>
<p>选择盟约之后，你会开启盟约使命。盟约使命需要你在盟约圣所中接取，需要你前往各个地图进行各种游戏内容，比如世界任务以及击杀稀有等。完成盟约使命将会奖励你装备、心能等物品。</p>
<br />
<h1>6.	突入噬渊，与典狱长斗智斗勇</h1>
<p>噬渊是满级后的一个重要地图，在这个地方你可以获取一种特殊货币——魂殇，它可以用来兑换新版的打孔器，以及强化你的导灵器。</p>
<br />
<h1>7.	罪魂之塔，拯救灵魂</h1>
<p>罪魂之塔是暗影国度中新的玩法，其中散布的心能之力，则会在本次冒险中强化你的能力，让你有不同寻常的体验。</p>
<p>击败最终首领将会奖励你一些特殊的材料，其中包含制作传说装备的灵魂灰烬。</p>
<br />
<h1>8.	传说之力，定制你的橙色装备</h1>
<p>传说装备一直是玩家们所追求的目标，在暗影国度中，你可以自己制作传说装备。</p>
<p>通过罪魂之塔的冒险解锁刻符者之后，你可以通过各个途径获取传说之力，并将其灌注到特定的几个部位中，这些橙色装备的副属性搭配可以由你自由选择。</p>
<br />
<h1>9.	全新的团队副本——纳斯利亚堡</h1>
<p>团队副本一直是魔兽世界游戏内容中的重头戏。</p>
<p>纳斯利亚堡是暗影国度的第一个团队副本，在暗影国度正式上线后的第三周将会开放普通和英雄难度，随后一周会开启史诗难度以及随机难度的第一区。</p>
<p>这个团队副本一共有10个boss，掉落的装备的物品等级为187（随机），200（普通），213（英雄），226（史诗），其中最终boss德纳修斯大帝掉落的装备物品等级在基础上要高7个装等。</p>
<br />
<h1>10.	新的赛季，挑战钥石秘境</h1>
<p>在暗影国度正式上线后的第三周将会开启新的大秘境赛季，新的赛季词缀——傲慢将会加入到游戏中。</p>
<p>同时，部分轮换词缀发生了变化，新的词缀风雷、鼓舞和怨毒加入到游戏中，而无常和繁盛词缀移除。</p>
<br />
<h1>附：词缀说明</h1>
<p>傲慢：玩家击败非首领敌人会产生傲慢，最终形成一个傲慢具象，击败它可以获得增益效果(30%增伤+60%移速+每秒回蓝5%，持续1分钟)。</p>
<p>风雷：战斗中的敌人会周期性的召唤伤害性旋风。 </p>
<p>鼓舞：部分非首领敌人会鼓舞并强化他们的盟友。 </p>
<p>怨毒：恶鬼从非首领敌人的尸体中爬出并随机追逐玩家。</p>
    ]]

}
