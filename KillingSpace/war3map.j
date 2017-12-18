globals
//globals from YDWEBase:
constant boolean LIBRARY_YDWEBase=true
//ȫ�ֹ�ϣ�� 
hashtable YDHT= null
string bj_AllString=".................................!.#$%&'()*+,-./0123456789:;<=>.@ABCDEFGHIJKLMNOPQRSTUVWXYZ[.]^_`abcdefghijklmnopqrstuvwxyz{|}~................................................................................................................................"
//全局系统变量
unit bj_lastAbilityCastingUnit=null
unit bj_lastAbilityTargetUnit=null
unit bj_lastPoolAbstractedUnit=null
unitpool bj_lastCreatedUnitPool=null
item bj_lastPoolAbstractedItem=null
itempool bj_lastCreatedItemPool=null
attacktype bj_lastSetAttackType= ATTACK_TYPE_NORMAL
damagetype bj_lastSetDamageType= DAMAGE_TYPE_NORMAL
weapontype bj_lastSetWeaponType= WEAPON_TYPE_WHOKNOWS
real yd_MapMaxX= 0
real yd_MapMinX= 0
real yd_MapMaxY= 0
real yd_MapMinY= 0
trigger array YDWEBase___AbilityCastingOverEventQueue
integer array YDWEBase___AbilityCastingOverEventType
integer YDWEBase___AbilityCastingOverEventNumber= 0
//endglobals from YDWEBase
//globals from YDWETriggerEvent:
constant boolean LIBRARY_YDWETriggerEvent=true
trigger yd_DamageEventTrigger= null
trigger array YDWETriggerEvent__DamageEventQueue
integer YDWETriggerEvent__DamageEventNumber= 0
	
item bj_lastMovedItemInItemSlot= null
	
trigger YDWETriggerEvent__MoveItemEventTrigger= null
trigger array YDWETriggerEvent__MoveItemEventQueue
integer YDWETriggerEvent__MoveItemEventNumber= 0
//endglobals from YDWETriggerEvent
//globals from YDWETriggerRegisterEnterRectSimpleNull:
constant boolean LIBRARY_YDWETriggerRegisterEnterRectSimpleNull=true
//endglobals from YDWETriggerRegisterEnterRectSimpleNull
//globals from YDWETriggerRegisterLeaveRectSimpleNull:
constant boolean LIBRARY_YDWETriggerRegisterLeaveRectSimpleNull=true
region yd_NullTempRegion
//endglobals from YDWETriggerRegisterLeaveRectSimpleNull
//globals from YDWEJumpTimer:
constant boolean LIBRARY_YDWEJumpTimer=true
//��Ծϵͳ���ȼ�
integer MoveMoreLevel_JumpTimer=3
//endglobals from YDWEJumpTimer
    // User-defined
boolean array udg_camera
unit array udg_hero
unit array udg_techlive
rect array udg_orirct
integer array udg_oriseq
integer udg_oriid= 0
unit array udg_portrait
integer udg_mtu= 0
integer udg_maxm= 0
integer udg_mti= 0

    // Generated
rect gg_rct_techunit= null
rect gg_rct_origin1= null
rect gg_rct_origin3= null
rect gg_rct_origin2= null
rect gg_rct_origin0= null
trigger gg_trg_initialize= null
trigger gg_trg_camera= null
trigger gg_trg_bordercontrol= null
trigger gg_trg_EnemyBugSystem= null
trigger gg_trg_EnemyBugSystem2= null
trigger gg_trg_cantmove= null
trigger gg_trg_DeathEffect= null
trigger gg_trg_EnemyAbilityDisplay= null
trigger gg_trg_UpDialog= null
trigger gg_trg_Lose= null
trigger gg_trg_Win= null
trigger gg_trg_Leave= null
trigger gg_trg_leap= null
trigger gg_trg_energy= null
trigger gg_trg____________________003= null
trigger gg_trg____________________002= null

integer gk=- 1
hashtable ht= null
integer kbuldir
integer kbullif
integer kbuldam
integer kbuldamran
integer kbulraneff
integer kbulspe
integer kbulsou
integer kbulsiz
integer kbulgro
integer kbulris
integer kbullet
integer ranger='A00A'
integer meeler='A00B'
integer ktrgcon
real offrad=0.7854
real minrad=0.3927
integer kshoottrg
integer kst
integer kshootu
integer kstand
integer kshootdir
integer kshootnum
integer krecris
integer kautonum
integer kfirrat
integer krecoil
integer kmagsiz
integer krembul
integer krecover
integer kweapon
integer kleapx
integer kleapy
trigger leaptrg
integer itemcount
integer itemid
integer ddrop
integer kdiid
integer kdinum
integer kdirec
integer droene
integer kdimax
trigger gausetrg
trigger gausctrg
integer nade='A005'
integer knadeu
integer nadeu='e001'
rect turec=gg_rct_techunit
integer kegycsu
trigger egytrg
group egygro
integer ninelife='A007'
group revgro
trigger revtrg
integer revive='A008'
integer laydown='A00I'
integer laydown2='B002'
integer kll
trigger lltrg
group llgro
trigger lifelowtrg
trigger eltrg
integer elability
integer elability2
integer elbuff
real gjsdf=0.2
integer kjsdu
integer kjsdv
integer kjsddir
integer kmt
integer kmu
integer kmc
integer kmris
integer mid='e003'
real minx
real maxx
real miny
real maxy
trigger aitrg
timer appt
timer attt
group appgro
group attgro
trigger astrg
trigger saitrg
integer poibuff1='A00D'
integer poibuff2='B001'
integer kpoisec
integer kpoidam
integer kpoit
integer kpoiu
trigger poitrg
integer speed='R005'
integer stamina='R001'
integer energy='R002'
dialog array td
button array upenergy
button array upstamina
button array upspeed
button array cancel
trigger uptrg
string egylbl="能量升级+20 "
string stmlbl="耐久升级+30 "
string spelbl="机动增强+8  "
string food="进化点"
string failmsg="|cffff0000没有足够的进化点数！|r"
trigger exptrg
integer kexp

trigger l__library_init

//JASSHelper struct globals:

endglobals


//library YDWEBase:


//===========================================================================
//HashTable
//===========================================================================

//===========================================================================
//Return bug
//===========================================================================
function YDWEH2I takes handle h returns integer
    return GetHandleId(h)
endfunction


//���
function YDWEFlushAllData takes nothing returns nothing
    call FlushParentHashtable(YDHT)
endfunction

function YDWEFlushMissionByInteger takes integer i returns nothing
    call FlushChildHashtable(YDHT, i)
endfunction

function YDWEFlushMissionByString takes string s returns nothing
    call FlushChildHashtable(YDHT, StringHash(s))
endfunction

function YDWEFlushStoredIntegerByInteger takes integer i,integer j returns nothing
    call RemoveSavedInteger(YDHT, i, j)
endfunction

function YDWEFlushStoredIntegerByString takes string s1,string s2 returns nothing
    call RemoveSavedInteger(YDHT, StringHash(s1), StringHash(s2))
endfunction

function YDWEHaveSavedIntegerByInteger takes integer i,integer j returns boolean
    return HaveSavedInteger(YDHT, i, j)
endfunction

function YDWEHaveSavedIntegerByString takes string s1,string s2 returns boolean
    return HaveSavedInteger(YDHT, StringHash(s1), StringHash(s2))
endfunction

//store and get integer
function YDWESaveIntegerByInteger takes integer pTable,integer pKey,integer i returns nothing
    call SaveInteger(YDHT, pTable, pKey, i)
endfunction

function YDWESaveIntegerByString takes string pTable,string pKey,integer i returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), i)
endfunction

function YDWEGetIntegerByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction

function YDWEGetIntegerByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//store and get real
function YDWESaveRealByInteger takes integer pTable,integer pKey,real r returns nothing
    call SaveReal(YDHT, pTable, pKey, r)
endfunction

function YDWESaveRealByString takes string pTable,string pKey,real r returns nothing
    call SaveReal(YDHT, StringHash(pTable), StringHash(pKey), r)
endfunction

function YDWEGetRealByInteger takes integer pTable,integer pKey returns real
    return LoadReal(YDHT, pTable, pKey)
endfunction

function YDWEGetRealByString takes string pTable,string pKey returns real
    return LoadReal(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//store and get string
function YDWESaveStringByInteger takes integer pTable,integer pKey,string s returns nothing
    call SaveStr(YDHT, pTable, pKey, s)
endfunction

function YDWESaveStringByString takes string pTable,string pKey,string s returns nothing
    call SaveStr(YDHT, StringHash(pTable), StringHash(pKey), s)
endfunction

function YDWEGetStringByInteger takes integer pTable,integer pKey returns string
    return LoadStr(YDHT, pTable, pKey)
endfunction

function YDWEGetStringByString takes string pTable,string pKey returns string
    return LoadStr(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//store and get boolean
function YDWESaveBooleanByInteger takes integer pTable,integer pKey,boolean b returns nothing
    call SaveBoolean(YDHT, pTable, pKey, b)
endfunction

function YDWESaveBooleanByString takes string pTable,string pKey,boolean b returns nothing
    call SaveBoolean(YDHT, StringHash(pTable), StringHash(pKey), b)
endfunction

function YDWEGetBooleanByInteger takes integer pTable,integer pKey returns boolean
    return LoadBoolean(YDHT, pTable, pKey)
endfunction

function YDWEGetBooleanByString takes string pTable,string pKey returns boolean
    return LoadBoolean(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Unit
function YDWESaveUnitByInteger takes integer pTable,integer pKey,unit u returns nothing
    call SaveUnitHandle(YDHT, pTable, pKey, u)
endfunction

function YDWESaveUnitByString takes string pTable,string pKey,unit u returns nothing
    call SaveUnitHandle(YDHT, StringHash(pTable), StringHash(pKey), u)
endfunction

function YDWEGetUnitByInteger takes integer pTable,integer pKey returns unit
    return LoadUnitHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetUnitByString takes string pTable,string pKey returns unit
    return LoadUnitHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert UnitID
function YDWESaveUnitIDByInteger takes integer pTable,integer pKey,integer uid returns nothing
    call SaveInteger(YDHT, pTable, pKey, uid)
endfunction

function YDWESaveUnitIDByString takes string pTable,string pKey,integer uid returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), uid)
endfunction

function YDWEGetUnitIDByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction

function YDWEGetUnitIDByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert AbilityID
function YDWESaveAbilityIDByInteger takes integer pTable,integer pKey,integer abid returns nothing
    call SaveInteger(YDHT, pTable, pKey, abid)
endfunction

function YDWESaveAbilityIDByString takes string pTable,string pKey,integer abid returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), abid)
endfunction

function YDWEGetAbilityIDByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction

function YDWEGetAbilityIDByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Player
function YDWESavePlayerByInteger takes integer pTable,integer pKey,player p returns nothing
    call SavePlayerHandle(YDHT, pTable, pKey, p)
endfunction

function YDWESavePlayerByString takes string pTable,string pKey,player p returns nothing
    call SavePlayerHandle(YDHT, StringHash(pTable), StringHash(pKey), p)
endfunction

function YDWEGetPlayerByInteger takes integer pTable,integer pKey returns player
    return LoadPlayerHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetPlayerByString takes string pTable,string pKey returns player
    return LoadPlayerHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Item
function YDWESaveItemByInteger takes integer pTable,integer pKey,item it returns nothing
    call SaveItemHandle(YDHT, pTable, pKey, it)
endfunction

function YDWESaveItemByString takes string pTable,string pKey,item it returns nothing
    call SaveItemHandle(YDHT, StringHash(pTable), StringHash(pKey), it)
endfunction

function YDWEGetItemByInteger takes integer pTable,integer pKey returns item
    return LoadItemHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetItemByString takes string pTable,string pKey returns item
    return LoadItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert ItemID
function YDWESaveItemIDByInteger takes integer pTable,integer pKey,integer itid returns nothing
    call SaveInteger(YDHT, pTable, pKey, itid)
endfunction

function YDWESaveItemIDByString takes string pTable,string pKey,integer itid returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), itid)
endfunction

function YDWEGetItemIDByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction

function YDWEGetItemIDByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Timer
function YDWESaveTimerByInteger takes integer pTable,integer pKey,timer t returns nothing
    call SaveTimerHandle(YDHT, pTable, pKey, t)
endfunction

function YDWESaveTimerByString takes string pTable,string pKey,timer t returns nothing
    call SaveTimerHandle(YDHT, StringHash(pTable), StringHash(pKey), t)
endfunction

function YDWEGetTimerByInteger takes integer pTable,integer pKey returns timer
    return LoadTimerHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTimerByString takes string pTable,string pKey returns timer
    return LoadTimerHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Trigger
function YDWESaveTriggerByInteger takes integer pTable,integer pKey,trigger trg returns nothing
    call SaveTriggerHandle(YDHT, pTable, pKey, trg)
endfunction

function YDWESaveTriggerByString takes string pTable,string pKey,trigger trg returns nothing
    call SaveTriggerHandle(YDHT, StringHash(pTable), StringHash(pKey), trg)
endfunction

function YDWEGetTriggerByInteger takes integer pTable,integer pKey returns trigger
    return LoadTriggerHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTriggerByString takes string pTable,string pKey returns trigger
    return LoadTriggerHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Location
function YDWESaveLocationByInteger takes integer pTable,integer pKey,location pt returns nothing
    call SaveLocationHandle(YDHT, pTable, pKey, pt)
endfunction

function YDWESaveLocationByString takes string pTable,string pKey,location pt returns nothing
    call SaveLocationHandle(YDHT, StringHash(pTable), StringHash(pKey), pt)
endfunction

function YDWEGetLocationByInteger takes integer pTable,integer pKey returns location
    return LoadLocationHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetLocationByString takes string pTable,string pKey returns location
    return LoadLocationHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Group
function YDWESaveGroupByInteger takes integer pTable,integer pKey,group g returns nothing
    call SaveGroupHandle(YDHT, pTable, pKey, g)
endfunction

function YDWESaveGroupByString takes string pTable,string pKey,group g returns nothing
    call SaveGroupHandle(YDHT, StringHash(pTable), StringHash(pKey), g)
endfunction

function YDWEGetGroupByInteger takes integer pTable,integer pKey returns group
    return LoadGroupHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetGroupByString takes string pTable,string pKey returns group
    return LoadGroupHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Multiboard
function YDWESaveMultiboardByInteger takes integer pTable,integer pKey,multiboard m returns nothing
    call SaveMultiboardHandle(YDHT, pTable, pKey, m)
endfunction

function YDWESaveMultiboardByString takes string pTable,string pKey,multiboard m returns nothing
    call SaveMultiboardHandle(YDHT, StringHash(pTable), StringHash(pKey), m)
endfunction

function YDWEGetMultiboardByInteger takes integer pTable,integer pKey returns multiboard
    return LoadMultiboardHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetMultiboardByString takes string pTable,string pKey returns multiboard
    return LoadMultiboardHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert MultiboardItem
function YDWESaveMultiboardItemByInteger takes integer pTable,integer pKey,multiboarditem mt returns nothing
    call SaveMultiboardItemHandle(YDHT, pTable, pKey, mt)
endfunction

function YDWESaveMultiboardItemByString takes string pTable,string pKey,multiboarditem mt returns nothing
    call SaveMultiboardItemHandle(YDHT, StringHash(pTable), StringHash(pKey), mt)
endfunction

function YDWEGetMultiboardItemByInteger takes integer pTable,integer pKey returns multiboarditem
    return LoadMultiboardItemHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetMultiboardItemByString takes string pTable,string pKey returns multiboarditem
    return LoadMultiboardItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert TextTag
function YDWESaveTextTagByInteger takes integer pTable,integer pKey,texttag tt returns nothing
    call SaveTextTagHandle(YDHT, pTable, pKey, tt)
endfunction

function YDWESaveTextTagByString takes string pTable,string pKey,texttag tt returns nothing
    call SaveTextTagHandle(YDHT, StringHash(pTable), StringHash(pKey), tt)
endfunction

function YDWEGetTextTagByInteger takes integer pTable,integer pKey returns texttag
    return LoadTextTagHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTextTagByString takes string pTable,string pKey returns texttag
    return LoadTextTagHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Lightning
function YDWESaveLightningByInteger takes integer pTable,integer pKey,lightning ln returns nothing
    call SaveLightningHandle(YDHT, pTable, pKey, ln)
endfunction

function YDWESaveLightningByString takes string pTable,string pKey,lightning ln returns nothing
    call SaveLightningHandle(YDHT, StringHash(pTable), StringHash(pKey), ln)
endfunction

function YDWEGetLightningByInteger takes integer pTable,integer pKey returns lightning
    return LoadLightningHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetLightningByString takes string pTable,string pKey returns lightning
    return LoadLightningHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Region
function YDWESaveRegionByInteger takes integer pTable,integer pKey,region rn returns nothing
    call SaveRegionHandle(YDHT, pTable, pKey, rn)
endfunction

function YDWESaveRegionByString takes string pTable,string pKey,region rt returns nothing
    call SaveRegionHandle(YDHT, StringHash(pTable), StringHash(pKey), rt)
endfunction

function YDWEGetRegionByInteger takes integer pTable,integer pKey returns region
    return LoadRegionHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetRegionByString takes string pTable,string pKey returns region
    return LoadRegionHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Rect
function YDWESaveRectByInteger takes integer pTable,integer pKey,rect rn returns nothing
    call SaveRectHandle(YDHT, pTable, pKey, rn)
endfunction

function YDWESaveRectByString takes string pTable,string pKey,rect rt returns nothing
    call SaveRectHandle(YDHT, StringHash(pTable), StringHash(pKey), rt)
endfunction

function YDWEGetRectByInteger takes integer pTable,integer pKey returns rect
    return LoadRectHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetRectByString takes string pTable,string pKey returns rect
    return LoadRectHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Leaderboard
function YDWESaveLeaderboardByInteger takes integer pTable,integer pKey,leaderboard lb returns nothing
    call SaveLeaderboardHandle(YDHT, pTable, pKey, lb)
endfunction

function YDWESaveLeaderboardByString takes string pTable,string pKey,leaderboard lb returns nothing
    call SaveLeaderboardHandle(YDHT, StringHash(pTable), StringHash(pKey), lb)
endfunction

function YDWEGetLeaderboardByInteger takes integer pTable,integer pKey returns leaderboard
    return LoadLeaderboardHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetLeaderboardByString takes string pTable,string pKey returns leaderboard
    return LoadLeaderboardHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Effect
function YDWESaveEffectByInteger takes integer pTable,integer pKey,effect e returns nothing
    call SaveEffectHandle(YDHT, pTable, pKey, e)
endfunction

function YDWESaveEffectByString takes string pTable,string pKey,effect e returns nothing
    call SaveEffectHandle(YDHT, StringHash(pTable), StringHash(pKey), e)
endfunction

function YDWEGetEffectByInteger takes integer pTable,integer pKey returns effect
    return LoadEffectHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetEffectByString takes string pTable,string pKey returns effect
    return LoadEffectHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert Destructable
function YDWESaveDestructableByInteger takes integer pTable,integer pKey,destructable da returns nothing
    call SaveDestructableHandle(YDHT, pTable, pKey, da)
endfunction

function YDWESaveDestructableByString takes string pTable,string pKey,destructable da returns nothing
    call SaveDestructableHandle(YDHT, StringHash(pTable), StringHash(pKey), da)
endfunction

function YDWEGetDestructableByInteger takes integer pTable,integer pKey returns destructable
    return LoadDestructableHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetDestructableByString takes string pTable,string pKey returns destructable
    return LoadDestructableHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert triggercondition
function YDWESaveTriggerConditionByInteger takes integer pTable,integer pKey,triggercondition tc returns nothing
    call SaveTriggerConditionHandle(YDHT, pTable, pKey, tc)
endfunction

function YDWESaveTriggerConditionByString takes string pTable,string pKey,triggercondition tc returns nothing
    call SaveTriggerConditionHandle(YDHT, StringHash(pTable), StringHash(pKey), tc)
endfunction

function YDWEGetTriggerConditionByInteger takes integer pTable,integer pKey returns triggercondition
    return LoadTriggerConditionHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTriggerConditionByString takes string pTable,string pKey returns triggercondition
    return LoadTriggerConditionHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert triggeraction
function YDWESaveTriggerActionByInteger takes integer pTable,integer pKey,triggeraction ta returns nothing
    call SaveTriggerActionHandle(YDHT, pTable, pKey, ta)
endfunction

function YDWESaveTriggerActionByString takes string pTable,string pKey,triggeraction ta returns nothing
    call SaveTriggerActionHandle(YDHT, StringHash(pTable), StringHash(pKey), ta)
endfunction

function YDWEGetTriggerActionByInteger takes integer pTable,integer pKey returns triggeraction
    return LoadTriggerActionHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTriggerActionByString takes string pTable,string pKey returns triggeraction
    return LoadTriggerActionHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert event
function YDWESaveTriggerEventByInteger takes integer pTable,integer pKey,event et returns nothing
    call SaveTriggerEventHandle(YDHT, pTable, pKey, et)
endfunction

function YDWESaveTriggerEventByString takes string pTable,string pKey,event et returns nothing
    call SaveTriggerEventHandle(YDHT, StringHash(pTable), StringHash(pKey), et)
endfunction

function YDWEGetTriggerEventByInteger takes integer pTable,integer pKey returns event
    return LoadTriggerEventHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTriggerEventByString takes string pTable,string pKey returns event
    return LoadTriggerEventHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert force
function YDWESaveForceByInteger takes integer pTable,integer pKey,force fc returns nothing
    call SaveForceHandle(YDHT, pTable, pKey, fc)
endfunction

function YDWESaveForceByString takes string pTable,string pKey,force fc returns nothing
    call SaveForceHandle(YDHT, StringHash(pTable), StringHash(pKey), fc)
endfunction

function YDWEGetForceByInteger takes integer pTable,integer pKey returns force
    return LoadForceHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetForceByString takes string pTable,string pKey returns force
    return LoadForceHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert boolexpr
function YDWESaveBoolexprByInteger takes integer pTable,integer pKey,boolexpr be returns nothing
    call SaveBooleanExprHandle(YDHT, pTable, pKey, be)
endfunction

function YDWESaveBoolexprByString takes string pTable,string pKey,boolexpr be returns nothing
    call SaveBooleanExprHandle(YDHT, StringHash(pTable), StringHash(pKey), be)
endfunction

function YDWEGetBoolexprByInteger takes integer pTable,integer pKey returns boolexpr
    return LoadBooleanExprHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetBoolexprByString takes string pTable,string pKey returns boolexpr
    return LoadBooleanExprHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert sound
function YDWESaveSoundByInteger takes integer pTable,integer pKey,sound sd returns nothing
    call SaveSoundHandle(YDHT, pTable, pKey, sd)
endfunction

function YDWESaveSoundByString takes string pTable,string pKey,sound sd returns nothing
    call SaveSoundHandle(YDHT, StringHash(pTable), StringHash(pKey), sd)
endfunction

function YDWEGetSoundByInteger takes integer pTable,integer pKey returns sound
    return LoadSoundHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetSoundByString takes string pTable,string pKey returns sound
    return LoadSoundHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert timerdialog
function YDWESaveTimerDialogByInteger takes integer pTable,integer pKey,timerdialog l__td returns nothing
    call SaveTimerDialogHandle(YDHT, pTable, pKey, l__td)
endfunction

function YDWESaveTimerDialogByString takes string pTable,string pKey,timerdialog l__td returns nothing
    call SaveTimerDialogHandle(YDHT, StringHash(pTable), StringHash(pKey), l__td)
endfunction

function YDWEGetTimerDialogByInteger takes integer pTable,integer pKey returns timerdialog
    return LoadTimerDialogHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTimerDialogByString takes string pTable,string pKey returns timerdialog
    return LoadTimerDialogHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert trackable
function YDWESaveTrackableByInteger takes integer pTable,integer pKey,trackable ta returns nothing
    call SaveTrackableHandle(YDHT, pTable, pKey, ta)
endfunction

function YDWESaveTrackableByString takes string pTable,string pKey,trackable ta returns nothing
    call SaveTrackableHandle(YDHT, StringHash(pTable), StringHash(pKey), ta)
endfunction

function YDWEGetTrackableByInteger takes integer pTable,integer pKey returns trackable
    return LoadTrackableHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetTrackableByString takes string pTable,string pKey returns trackable
    return LoadTrackableHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert dialog
function YDWESaveDialogByInteger takes integer pTable,integer pKey,dialog d returns nothing
    call SaveDialogHandle(YDHT, pTable, pKey, d)
endfunction

function YDWESaveDialogByString takes string pTable,string pKey,dialog d returns nothing
    call SaveDialogHandle(YDHT, StringHash(pTable), StringHash(pKey), d)
endfunction

function YDWEGetDialogByInteger takes integer pTable,integer pKey returns dialog
    return LoadDialogHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetDialogByString takes string pTable,string pKey returns dialog
    return LoadDialogHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert button
function YDWESaveButtonByInteger takes integer pTable,integer pKey,button bt returns nothing
    call SaveButtonHandle(YDHT, pTable, pKey, bt)
endfunction

function YDWESaveButtonByString takes string pTable,string pKey,button bt returns nothing
    call SaveButtonHandle(YDHT, StringHash(pTable), StringHash(pKey), bt)
endfunction

function YDWEGetButtonByInteger takes integer pTable,integer pKey returns button
    return LoadButtonHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetButtonByString takes string pTable,string pKey returns button
    return LoadButtonHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert quest
function YDWESaveQuestByInteger takes integer pTable,integer pKey,quest qt returns nothing
    call SaveQuestHandle(YDHT, pTable, pKey, qt)
endfunction

function YDWESaveQuestByString takes string pTable,string pKey,quest qt returns nothing
    call SaveQuestHandle(YDHT, StringHash(pTable), StringHash(pKey), qt)
endfunction

function YDWEGetQuestByInteger takes integer pTable,integer pKey returns quest
    return LoadQuestHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetQuestByString takes string pTable,string pKey returns quest
    return LoadQuestHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

//Covert questitem
function YDWESaveQuestItemByInteger takes integer pTable,integer pKey,questitem qi returns nothing
    call SaveQuestItemHandle(YDHT, pTable, pKey, qi)
endfunction

function YDWESaveQuestItemByString takes string pTable,string pKey,questitem qi returns nothing
    call SaveQuestItemHandle(YDHT, StringHash(pTable), StringHash(pKey), qi)
endfunction

function YDWEGetQuestItemByInteger takes integer pTable,integer pKey returns questitem
    return LoadQuestItemHandle(YDHT, pTable, pKey)
endfunction

function YDWEGetQuestItemByString takes string pTable,string pKey returns questitem
    return LoadQuestItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction

function YDWES2I takes string s returns integer
    return StringHash(s)
endfunction


function YDWESaveAbilityHandleBJ takes integer AbilityID,integer key,integer missionKey,hashtable table returns nothing
    call SaveInteger(table, missionKey, key, AbilityID)
endfunction

function YDWESaveAbilityHandle takes hashtable table,integer parentKey,integer childKey,integer AbilityID returns nothing
    call SaveInteger(table, parentKey, childKey, AbilityID)
endfunction

function YDWELoadAbilityHandleBJ takes integer key,integer missionKey,hashtable table returns integer
    return LoadInteger(table, missionKey, key)
endfunction

function YDWELoadAbilityHandle takes hashtable table,integer parentKey,integer childKey returns integer
    return LoadInteger(table, parentKey, childKey)
endfunction


//===========================================================================
//返回参数
//===========================================================================
//地图边界判断
function YDWECoordinateX takes real x returns real
    return RMinBJ(RMaxBJ(x, yd_MapMinX), yd_MapMaxX)
endfunction

function YDWECoordinateY takes real y returns real
    return RMinBJ(RMaxBJ(y, yd_MapMinY), yd_MapMaxY)
endfunction
//两个单位之间的距离
function YDWEDistanceBetweenUnits takes unit a,unit b returns real
    return SquareRoot(( GetUnitX(a) - GetUnitX(b) ) * ( GetUnitX(a) - GetUnitX(b) ) + ( GetUnitY(a) - GetUnitY(b) ) * ( GetUnitY(a) - GetUnitY(b) ))
endfunction
//两个单位之间的角度
function YDWEAngleBetweenUnits takes unit fromUnit,unit toUnit returns real
    return bj_RADTODEG * Atan2(GetUnitY(toUnit) - GetUnitY(fromUnit), GetUnitX(toUnit) - GetUnitX(fromUnit))
endfunction
//生成区域
function YDWEGetRect takes real x,real y,real width,real height returns rect
    return Rect(x - width * 0.5, y - height * 0.5, x + width * 0.5, y + height * 0.5)
endfunction

//===========================================================================
//设置单位可以飞行
//===========================================================================
function YDWEFlyEnable takes unit u returns nothing
    call UnitAddAbility(u, 'Amrf')
    call UnitRemoveAbility(u, 'Amrf')
endfunction

//===========================================================================
//字符窜与ID转换
//===========================================================================
function YDWEId2S takes integer value returns string
    local string charMap=bj_AllString
    local string result= ""
    local integer remainingValue= value
    local integer charValue
    local integer byteno
    set byteno=0
    loop
        set charValue=ModuloInteger(remainingValue, 256)
        set remainingValue=remainingValue / 256
        set result=SubString(charMap, charValue, charValue + 1) + result
        set byteno=byteno + 1
        exitwhen byteno == 4
    endloop
    return result
endfunction

function YDWES2Id takes string targetstr returns integer
    local string originstr=bj_AllString
    local integer strlength=StringLength(targetstr)
    local integer a=0
    local integer b=0
    local integer numx=1
    local integer result=0
    loop
    exitwhen b > strlength - 1
        set numx=R2I(Pow(256, strlength - 1 - b))
        set a=1
        loop
            exitwhen a > 255
            if SubString(targetstr, b, b + 1) == SubString(originstr, a, a + 1) then
                set result=result + a * numx
                set a=256
            endif
            set a=a + 1
        endloop
        set b=b + 1
    endloop
    return result
endfunction

function YDWES2UnitId takes string targetstr returns integer
    return YDWES2Id(targetstr)
endfunction

function YDWES2ItemId takes string targetstr returns integer
    return YDWES2Id(targetstr)
endfunction

function GetLastAbilityCastingUnit takes nothing returns unit
    return bj_lastAbilityCastingUnit
endfunction

function GetLastAbilityTargetUnit takes nothing returns unit
    return bj_lastAbilityTargetUnit
endfunction

function YDWESetMapLimitCoordinate takes real MinX,real MaxX,real MinY,real MaxY returns nothing
    set yd_MapMaxX=MaxX
    set yd_MapMinX=MinX
    set yd_MapMaxY=MaxY
    set yd_MapMinY=MinY
endfunction

//===========================================================================
//===========================================================================
//地图初始化
//===========================================================================


//YDWE特殊技能结束事件 

function YDWESyStemAbilityCastingOverTriggerAction takes unit hero,integer index returns nothing
 local integer i= 0
    loop
        exitwhen i >= YDWEBase___AbilityCastingOverEventNumber
        if YDWEBase___AbilityCastingOverEventType[i] == index then
            set bj_lastAbilityCastingUnit=hero
			if YDWEBase___AbilityCastingOverEventQueue[i] != null and TriggerEvaluate(YDWEBase___AbilityCastingOverEventQueue[i]) and IsTriggerEnabled(YDWEBase___AbilityCastingOverEventQueue[i]) then
				call TriggerExecute(YDWEBase___AbilityCastingOverEventQueue[i])
			endif
		endif
        set i=i + 1
    endloop
endfunction

//===========================================================================  
//YDWE技能捕捉事件 
//===========================================================================  
function YDWESyStemAbilityCastingOverRegistTrigger takes trigger trg,integer index returns nothing
	set YDWEBase___AbilityCastingOverEventQueue[YDWEBase___AbilityCastingOverEventNumber]=trg
	set YDWEBase___AbilityCastingOverEventType[YDWEBase___AbilityCastingOverEventNumber]=index
	set YDWEBase___AbilityCastingOverEventNumber=YDWEBase___AbilityCastingOverEventNumber + 1
endfunction 

//===========================================================================
//系统函数完善
//===========================================================================
function YDWECreateUnitPool takes nothing returns nothing
    set bj_lastCreatedUnitPool=CreateUnitPool()
endfunction

function YDWEPlaceRandomUnit takes unitpool up,player p,real x,real y,real face returns nothing
    set bj_lastPoolAbstractedUnit=PlaceRandomUnit(up, p, x, y, face)
endfunction

function YDWEGetLastUnitPool takes nothing returns unitpool
    return bj_lastCreatedUnitPool
endfunction

function YDWEGetLastPoolAbstractedUnit takes nothing returns unit
    return bj_lastPoolAbstractedUnit
endfunction

function YDWECreateItemPool takes nothing returns nothing
    set bj_lastCreatedItemPool=CreateItemPool()
endfunction

function YDWEPlaceRandomItem takes itempool ip,real x,real y returns nothing
    set bj_lastPoolAbstractedItem=PlaceRandomItem(ip, x, y)
endfunction

function YDWEGetLastItemPool takes nothing returns itempool
    return bj_lastCreatedItemPool
endfunction

function YDWEGetLastPoolAbstractedItem takes nothing returns item
    return bj_lastPoolAbstractedItem
endfunction

function YDWESetAttackDamageWeaponType takes attacktype at,damagetype dt,weapontype wt returns nothing
    set bj_lastSetAttackType=at
    set bj_lastSetDamageType=dt
    set bj_lastSetWeaponType=wt
endfunction
//unitpool bj_lastCreatedPool=null
//unit bj_lastPoolAbstractedUnit=null

//===========================================================================
//===========================================================================
//系统函数补充
//===========================================================================
//===========================================================================
function YDWEGetUnitItemSoftId takes unit hero,item it returns integer
    local integer i= 0
    loop
         exitwhen i > 5
         if UnitItemInSlot(hero, i) == it then
            return i + 1
         endif
         set i=i + 1
    endloop
    return 0
endfunction
//===========================================================================
//===========================================================================
//地图初始化
//===========================================================================
//===========================================================================

//显示版本
function YDWEVersion_Display takes nothing returns boolean
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "|cFF1E90FF当前编辑器版本为： |r|cFF00FF00YDWE 1.23.8.1456")
    return false
endfunction

function YDWEVersion_Init takes nothing returns nothing
    local trigger t= CreateTrigger()
    local integer i= 0
    loop
        exitwhen i == 12
        call TriggerRegisterPlayerChatEvent(t, Player(i), "YDWE Version", true)
        set i=i + 1
    endloop
    call TriggerAddCondition(t, Condition(function YDWEVersion_Display))
    set t=null
endfunction

function InitializeYD takes nothing returns nothing
     set YDHT=InitHashtable()

	//=================设置变量=====================
	set yd_MapMinX=GetCameraBoundMinX() - GetCameraMargin(CAMERA_MARGIN_LEFT)
	set yd_MapMinY=GetCameraBoundMinY() - GetCameraMargin(CAMERA_MARGIN_BOTTOM)
	set yd_MapMaxX=GetCameraBoundMaxX() + GetCameraMargin(CAMERA_MARGIN_RIGHT)
	set yd_MapMaxY=GetCameraBoundMaxY() + GetCameraMargin(CAMERA_MARGIN_TOP)
    //=================显示版本=====================
    call YDWEVersion_Init()
endfunction


//library YDWEBase ends
//library YDWETriggerEvent:

	
//===========================================================================  
//���ⵥλ�˺��¼� 
//===========================================================================
function YDWEAnyUnitDamagedTriggerAction takes nothing returns nothing
    local integer i= 0
    
    loop
        exitwhen i >= YDWETriggerEvent__DamageEventNumber
        if YDWETriggerEvent__DamageEventQueue[i] != null and IsTriggerEnabled(YDWETriggerEvent__DamageEventQueue[i]) and TriggerEvaluate(YDWETriggerEvent__DamageEventQueue[i]) then
            call TriggerExecute(YDWETriggerEvent__DamageEventQueue[i])
        endif
        set i=i + 1
    endloop
endfunction

function YDWEAnyUnitDamagedFilter takes nothing returns boolean
    if GetUnitAbilityLevel(GetFilterUnit(), 'Aloc') <= 0 then
        call TriggerRegisterUnitEvent(yd_DamageEventTrigger, GetFilterUnit(), EVENT_UNIT_DAMAGED)
    endif
    return false
endfunction

function YDWEAnyUnitDamagedEnumUnit takes nothing returns nothing
    local trigger t= CreateTrigger()
    local region r= CreateRegion()
    local group g= CreateGroup()

    call RegionAddRect(r, GetWorldBounds())
    call TriggerRegisterEnterRegion(t, r, Condition(function YDWEAnyUnitDamagedFilter))
    call GroupEnumUnitsInRect(g, GetWorldBounds(), Condition(function YDWEAnyUnitDamagedFilter))

    call DestroyGroup(g)
    set r=null
    set t=null
    set g=null
endfunction
	
function YDWESyStemAnyUnitDamagedRegistTrigger takes trigger trg returns nothing
    if trg == null then
        return
    endif
        
    if YDWETriggerEvent__DamageEventNumber == 0 then
        set yd_DamageEventTrigger=CreateTrigger()
        call TriggerAddAction(yd_DamageEventTrigger, function YDWEAnyUnitDamagedTriggerAction)
        call YDWEAnyUnitDamagedEnumUnit()
    endif
    
    set YDWETriggerEvent__DamageEventQueue[YDWETriggerEvent__DamageEventNumber]=trg
    set YDWETriggerEvent__DamageEventNumber=YDWETriggerEvent__DamageEventNumber + 1
endfunction

//===========================================================================  
//�ƶ���Ʒ�¼� 
//===========================================================================  
function YDWESyStemItemUnmovableTriggerAction takes nothing returns nothing
    local integer i= 0
    
    if GetIssuedOrderId() >= 852002 and GetIssuedOrderId() <= 852007 then
		set bj_lastMovedItemInItemSlot=GetOrderTargetItem()
    	loop
        	exitwhen i >= YDWETriggerEvent__MoveItemEventNumber
        	if YDWETriggerEvent__MoveItemEventQueue[i] != null and IsTriggerEnabled(YDWETriggerEvent__MoveItemEventQueue[i]) and TriggerEvaluate(YDWETriggerEvent__MoveItemEventQueue[i]) then
        	    call TriggerExecute(YDWETriggerEvent__MoveItemEventQueue[i])
        	endif
        	set i=i + 1
    	endloop
	endif
endfunction

function YDWESyStemItemUnmovableRegistTrigger takes trigger trg returns nothing
    if trg == null then
        return
    endif
        
    if YDWETriggerEvent__MoveItemEventNumber == 0 then
        set YDWETriggerEvent__MoveItemEventTrigger=CreateTrigger()
        call TriggerAddAction(YDWETriggerEvent__MoveItemEventTrigger, function YDWESyStemItemUnmovableTriggerAction)
        call TriggerRegisterAnyUnitEventBJ(YDWETriggerEvent__MoveItemEventTrigger, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    endif
    
    set YDWETriggerEvent__MoveItemEventQueue[YDWETriggerEvent__MoveItemEventNumber]=trg
    set YDWETriggerEvent__MoveItemEventNumber=YDWETriggerEvent__MoveItemEventNumber + 1
endfunction

function GetLastMovedItemInItemSlot takes nothing returns item
    return bj_lastMovedItemInItemSlot
endfunction


//library YDWETriggerEvent ends
//library YDWETriggerRegisterEnterRectSimpleNull:


function YDWETriggerRegisterEnterRectSimpleNull takes trigger trig,rect r returns event
    local region rectRegion= CreateRegion()
    call RegionAddRect(rectRegion, r)
    set yd_NullTempRegion=rectRegion
    set rectRegion=null
    return TriggerRegisterEnterRegion(trig, yd_NullTempRegion, null)
endfunction


//library YDWETriggerRegisterEnterRectSimpleNull ends
//library YDWETriggerRegisterLeaveRectSimpleNull:


function YDWETriggerRegisterLeaveRectSimpleNull takes trigger trig,rect r returns event
    local region rectRegion= CreateRegion()
    call RegionAddRect(rectRegion, r)
    set yd_NullTempRegion=rectRegion
    set rectRegion=null
    return TriggerRegisterLeaveRegion(trig, yd_NullTempRegion, null)
endfunction


//library YDWETriggerRegisterLeaveRectSimpleNull ends
//library YDWEJumpTimer:


function YDWEJumpTimerLoop takes nothing returns nothing
    local timer t=GetExpiredTimer()
    local unit hero=( (LoadUnitHandle(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "Hero")))) ) // INLINED!!
    local real angle=(LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "Angle")))) // INLINED!!
    local integer steeps=(LoadInteger(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "steeps")))) // INLINED!!
    local integer steepsMax=(LoadInteger(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "steepsMax")))) // INLINED!!
    local real heightMax=(LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "heightMax")))) // INLINED!!
    local real dist=(LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "dist")))) // INLINED!!
    local real dheig=(LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "dheig")))) // INLINED!!
    local real OriginHeight=(LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "OriginHeight")))) // INLINED!!
    local real x=(LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "X")))) // INLINED!!
    local real y=(LoadReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "Y")))) // INLINED!!
    local real x1=0
    local real y1=0
    local real height=0
    local integer lvJumpTimer=MoveMoreLevel_JumpTimer
    local integer lvUnitMove=(LoadInteger(YDHT, StringHash((I2S((GetHandleId((hero)))) )), StringHash(( "lvUnitMove")))) // INLINED!!
    if steeps < steepsMax and lvJumpTimer >= lvUnitMove then
        set x1=x + steeps * dist * Cos(angle * 3.14159 / 180.0)
        set y1=y + steeps * dist * Sin(angle * 3.14159 / 180.0)
        set x1=(RMinBJ(RMaxBJ(((x1)*1.0), yd_MapMinX), yd_MapMaxX)) // INLINED!!
        set y1=(RMinBJ(RMaxBJ(((y1)*1.0), yd_MapMinY), yd_MapMaxY)) // INLINED!!
        call SetUnitX(hero, x1)
        call SetUnitY(hero, y1)
        set steeps=steeps + 1
        call SaveInteger(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "steeps" )), ( steeps)) // INLINED!!
        set height=( - ( 2 * I2R(steeps) * dheig - 1 ) * ( 2 * I2R(steeps) * dheig - 1 ) + 1 ) * heightMax + OriginHeight
        call SetUnitFlyHeight(hero, height, 99999)
        call SetUnitFacing(hero, angle)
      else
        call SetUnitFlyHeight(hero, OriginHeight, 99999)
        call SetUnitPathing(hero, true)
        call DestroyTimer(t)
        call FlushChildHashtable(YDHT, StringHash((I2S((GetHandleId((t))))))) // INLINED!!
        call SaveInteger(YDHT, StringHash((I2S((GetHandleId((hero)))) )), StringHash(( "lvUnitMove" )), ( 0)) // INLINED!!
        call YDWESyStemAbilityCastingOverTriggerAction(hero , 2)
    endif
    set t=null
    set hero=null
endfunction
                            

function YDWEJumpTimer takes unit hero,real angle,real distance,real lasttime,real timeout,real heightMax returns nothing
    local timer t=null
    local real x=GetUnitX(hero)
    local real y=GetUnitY(hero)
    local integer steepsMax=R2I(lasttime / timeout)
    local integer steeps=0
    local real dist=distance / steepsMax
    local real dheig=1.0 / steepsMax
    local real OriginHeight=GetUnitFlyHeight(hero)
    local integer lvUnitMove=(LoadInteger(YDHT, StringHash((I2S((GetHandleId((hero)))) )), StringHash(( "lvUnitMove")))) // INLINED!!
    if MoveMoreLevel_JumpTimer <= lvUnitMove then
        return
    endif
    set t=CreateTimer()
    call SaveInteger(YDHT, StringHash((I2S((GetHandleId((hero)))) )), StringHash(( "lvUnitMove" )), ( MoveMoreLevel_JumpTimer)) // INLINED!!
    call YDWEFlyEnable(hero)
    call SetUnitPathing(hero, false)
    call SaveUnitHandle(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "Hero" )), ( hero)) // INLINED!!
    call SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "OriginHeight" )), (( OriginHeight)*1.0)) // INLINED!!
    call SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "Angle" )), (( angle)*1.0)) // INLINED!!
    call SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "dist" )), (( dist)*1.0)) // INLINED!!
    call SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "heightMax" )), (( heightMax)*1.0)) // INLINED!!
    call SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "dheig" )), (( dheig)*1.0)) // INLINED!!
    call SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "X" )), (( x)*1.0)) // INLINED!!
    call SaveReal(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "Y" )), (( y)*1.0)) // INLINED!!
    call SaveInteger(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "steeps" )), ( steeps)) // INLINED!!
    call SaveInteger(YDHT, StringHash((I2S((GetHandleId((t)))) )), StringHash(( "steepsMax" )), ( steepsMax)) // INLINED!!
    call TimerStart(t, timeout, true, function YDWEJumpTimerLoop)
    set t=null
endfunction

//library YDWEJumpTimer ends








//===========================================================================
// 
// 杀戮空间v1.0 测试版
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Sun Nov 03 14:55:10 2013
//   Map Author: 术士阿吉
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************






//#  ifdef DEBUG
//#    include <YDTrigger/LeakMonitor.j>
//#  endif
//#  include <YDTrigger/LeakMonitorMacro.h>


function InitGlobals takes nothing returns nothing
    local integer i= 0
    set i=0
    loop
        exitwhen ( i > 4 )
        set udg_camera[i]=false
        set i=i + 1
    endloop

    set i=0
    loop
        exitwhen ( i > 7200 )
        set udg_oriseq[i]=0
        set i=i + 1
    endloop

    set udg_oriid=0
    set udg_mtu=100
    set udg_maxm=60
    set udg_mti=300
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'ncop', - 2048.0, 2048.0, 270.000)
    set u=CreateUnit(p, 'ncop', 2048.0, 2048.0, 270.000)
    set u=CreateUnit(p, 'ncop', 2048.0, - 2560.0, 270.000)
    set u=CreateUnit(p, 'ncop', - 2048.0, - 2560.0, 270.000)
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings()
    call CreatePlayerBuildings()
    call CreatePlayerUnits()
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_techunit=Rect(- 3296.0, - 3552.0, - 2912.0, - 3296.0)
    set gg_rct_origin1=Rect(224.0, - 32.0, 288.0, 32.0)
    set gg_rct_origin3=Rect(224.0, - 544.0, 288.0, - 480.0)
    set gg_rct_origin2=Rect(- 288.0, - 544.0, - 224.0, - 480.0)
    set gg_rct_origin0=Rect(- 288.0, - 32.0, - 224.0, 32.0)
endfunction

//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************
//TESH.scrollpos=1044
//TESH.alwaysfold=0

function InitHashtables takes nothing returns nothing
    call FlushParentHashtable(ht)
    set ht=InitHashtable()
endfunction

function haveEnemyInRange takes unit source,real radius returns boolean
    local group ydl_group
    local unit ydl_unit
    set ydl_group=CreateGroup()
    call GroupEnumUnitsInRange(ydl_group, GetUnitX(source), GetUnitY(source), radius, null)
        loop
        set ydl_unit=FirstOfGroup(ydl_group)
        exitwhen ydl_unit == null
        call GroupRemoveUnit(ydl_group, ydl_unit)
        if ( ( IsUnitAliveBJ(ydl_unit) == true ) and ( IsUnitEnemy(ydl_unit, GetOwningPlayer(source)) == true ) ) then
          return true
        endif
        endloop
    call DestroyGroup(ydl_group)
    set ydl_group=null
    set ydl_unit=null
    return false
endfunction
function GetFirstEnemyInRange takes unit source,real radius returns unit
    local group ydl_group
    local unit ydl_unit
    set ydl_group=CreateGroup()
    call GroupEnumUnitsInRange(ydl_group, GetUnitX(source), GetUnitY(source), radius, null)
        loop
        set ydl_unit=FirstOfGroup(ydl_group)
        exitwhen ydl_unit == null
        call GroupRemoveUnit(ydl_group, ydl_unit)
        if ( ( IsUnitAliveBJ(ydl_unit) == true ) and ( IsUnitEnemy(ydl_unit, GetOwningPlayer(source)) == true ) ) then
          return ydl_unit
        endif
        endloop
    call DestroyGroup(ydl_group)
    set ydl_group=null
    set ydl_unit=null
    return null
endfunction
function haveEnemyInRangeXY takes unit source,real x,real y,real radius returns boolean
    local group ydl_group
    local unit ydl_unit
    set ydl_group=CreateGroup()
    call GroupEnumUnitsInRange(ydl_group, x, y, radius, null)
        loop
        set ydl_unit=FirstOfGroup(ydl_group)
        exitwhen ydl_unit == null
        call GroupRemoveUnit(ydl_group, ydl_unit)
        if ( ( IsUnitAliveBJ(ydl_unit) == true ) and ( IsUnitEnemy(ydl_unit, GetOwningPlayer(source)) == true ) ) then
          return true
        endif
        endloop
    call DestroyGroup(ydl_group)
    set ydl_group=null
    set ydl_unit=null
    return false
endfunction



function ChaosDamage takes unit su,unit tu,real d returns nothing
    call UnitDamageTarget(su, tu, d, true, false, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_ENHANCED, WEAPON_TYPE_WHOKNOWS)
endfunction
function rangeChaosDamage takes unit source,real x,real y,real radius,real damage,string efs returns nothing
    local group ydl_group
    local unit ydl_unit
    set ydl_group=CreateGroup()
    call GroupEnumUnitsInRange(ydl_group, x, y, radius, null)
        loop
        set ydl_unit=FirstOfGroup(ydl_group)
        exitwhen ydl_unit == null
        call GroupRemoveUnit(ydl_group, ydl_unit)
        if IsUnitAliveBJ(ydl_unit) == true and IsUnitEnemy(ydl_unit, GetOwningPlayer(source)) == true then
            call UnitDamageTarget((source ), ( ydl_unit ), (( damage)*1.0), true, false, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_ENHANCED, WEAPON_TYPE_WHOKNOWS) // INLINED!!
        endif
        endloop
    call DestroyEffect(AddSpecialEffect(efs, x, y))
    call DestroyGroup(ydl_group)
    set ydl_group=null
    set ydl_unit=null
endfunction


function InitBulletSystem takes integer l__gk returns integer
        set kbuldir=l__gk + 1
        set kbullif=l__gk + 2
        set kbuldam=l__gk + 3
        set kbuldamran=l__gk + 4
        set kbulraneff=l__gk + 5
        set kbulspe=l__gk + 6
        set kbulsou=l__gk + 7
        set kbulsiz=l__gk + 8
        set kbullet=l__gk + 9
        set kbulgro=l__gk + 10
        set kbulris=l__gk + 11
        return kbulris
endfunction
function rangeOneTimeChaosRisDamage takes unit source,real x,real y,real radius,real damage,string efs,group gro,integer life returns integer
    local group ydl_group
    local unit ydl_unit
    local integer ris
    set ydl_group=CreateGroup()
    call GroupEnumUnitsInRange(ydl_group, x, y, radius, null)
        loop
        set ydl_unit=FirstOfGroup(ydl_group)
        exitwhen ydl_unit == null
        call GroupRemoveUnit(ydl_group, ydl_unit)
        if IsUnitAliveBJ(ydl_unit) and IsUnitEnemy(ydl_unit, GetOwningPlayer(source)) and ( not IsUnitInGroup(ydl_unit, gro) ) then
            call UnitDamageTarget((source ), ( ydl_unit ), (( damage)*1.0), true, false, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_ENHANCED, WEAPON_TYPE_WHOKNOWS) // INLINED!!
            call GroupAddUnit(gro, ydl_unit)
            set ris=LoadInteger(ht, GetUnitTypeId(ydl_unit), kbulris)
            set life=life - ris
        endif
        endloop
    call DestroyEffect(AddSpecialEffect(efs, x, y))
    call DestroyGroup(ydl_group)
    set ydl_group=null
    set ydl_unit=null
    return life
endfunction
function BulletMoveLoop takes nothing returns nothing
      local timer t= GetExpiredTimer()
      local unit bullet=LoadUnitHandle(ht, GetHandleId(t), kbullet)
      local integer buldec=GetHandleId(bullet)
      local real ux
      local real uy
      local real tx
      local real ty
      local real dir
      local real spe
      local integer life= LoadInteger(ht, buldec, kbullif)
      local unit source
      local real size=LoadReal(ht, buldec, kbulsiz)
      local real dam
      local group gro
      local real ran
      if life > 0 then
         set ux=GetUnitX(bullet)
         set uy=GetUnitY(bullet)
         if haveEnemyInRange(bullet , size) then
            set ran=LoadReal(ht, buldec, kbuldamran)
            set source=LoadUnitHandle(ht, buldec, kbulsou)
            set dam=LoadReal(ht, buldec, kbuldam)
            set gro=LoadGroupHandle(ht, buldec, kbulgro)
            set life=rangeOneTimeChaosRisDamage(source , ux , uy , ran , dam , "Objects\\Spawnmodels\\Critters\\Albatross\\CritterBloodAlbatross.mdl" , gro , life)
         endif
         set dir=LoadReal(ht, buldec, kbuldir)
         set spe=LoadReal(ht, buldec, kbulspe)
         set life=life - 1
         call SaveInteger(ht, buldec, kbullif, life)
         set tx=ux + spe * Cos(dir)
         set ty=uy + spe * Sin(dir)
         call SetUnitX(bullet, tx)
         call SetUnitY(bullet, ty)
      else
            call DestroyGroup(LoadGroupHandle(ht, buldec, kbulgro))
            call FlushChildHashtable(ht, GetHandleId(t))
            call FlushChildHashtable(ht, buldec)
            call RemoveUnit(bullet)
            call DestroyTimer(t)
      endif
      set t=null
      set bullet=null
      set source=null
      set gro=null
endfunction
function Bullet takes unit source,integer bulletid,real dir,real dam,real size,real damran,string raneff,real l__speed,integer life returns nothing
    local timer t=CreateTimer()
    local unit bullet=CreateUnit(GetOwningPlayer(source), bulletid, GetUnitX(source), GetUnitY(source), dir)
    local integer buldec=GetHandleId(bullet)
    set life=R2I(I2R(life) * GetRandomReal(0.9, 1.1))
    call SaveReal(ht, buldec, kbuldir, dir)
    call SaveReal(ht, buldec, kbuldam, dam)
    call SaveReal(ht, buldec, kbulsiz, size)
    call SaveReal(ht, buldec, kbuldamran, damran)
    call SaveStr(ht, buldec, kbulraneff, raneff)
    call SaveReal(ht, buldec, kbulspe, l__speed)
    call SaveInteger(ht, buldec, kbullif, life)
    call SaveUnitHandle(ht, buldec, kbulsou, source)
    call SaveGroupHandle(ht, buldec, kbulgro, CreateGroup())
    call SaveUnitHandle(ht, GetHandleId(t), kbullet, bullet)
    call TimerStart(t, 0.03, true, function BulletMoveLoop)
    set t=null
    set bullet=null
endfunction
function RifleBullet takes unit source,real dir returns nothing
    call Bullet(source , 'e000' , dir , 50 , 75 , 75 , "" , 50 , 33)
endfunction 

function Change takes nothing returns nothing
    local unit u
    if GetSpellAbilityId() == ranger then
        set u=GetTriggerUnit()
        call IssueImmediateOrderById(u, 851972)
        call UnitRemoveAbility(u, ranger)
        call UnitAddAbility(u, meeler)
    elseif GetSpellAbilityId() == meeler then
        set u=GetTriggerUnit()
        call IssueImmediateOrderById(u, 851972)
        call UnitRemoveAbility(u, meeler)
        call UnitAddAbility(u, ranger)
    endif
    set u=null
endfunction
function InitChangeSystem takes nothing returns integer
    call TriggerAddCondition(gausctrg, Condition(function Change))
    return gk
endfunction

function InitDestroyTriggerAll takes integer l__gk returns integer
    set ktrgcon=l__gk + 1
    return ktrgcon
endfunction
function DestroyTriggerAll takes trigger trg returns nothing
         local integer dec=GetHandleId(trg)
         call TriggerRemoveCondition(trg, LoadTriggerConditionHandle(ht, dec, ktrgcon))
         call DestroyTrigger(trg)
         call FlushChildHashtable(ht, dec)
endfunction

function RifleTimerAction takes nothing returns nothing
    local timer t=GetExpiredTimer()
    local integer tdec=GetHandleId(t)
    local unit u=LoadUnitHandle(ht, tdec, kshootu)
    local integer udec=GetHandleId(u)
    local real dir
    local integer n=LoadInteger(ht, udec, kshootnum)
    if LoadBoolean(ht, udec, kstand) then
        set dir=LoadReal(ht, udec, kshootdir)
        call SetUnitAnimationByIndex(u, 2)
        call SetUnitFacing(u, dir * bj_RADTODEG)
        set dir=dir + 0.3 * ( GetRandomReal(0, offrad) - minrad )
        call Bullet((u ) , 'e000' , (( dir)*1.0) , 50 , 75 , 75 , "" , 50 , 33) // INLINED!!
        set n=n - 1
        call SaveInteger(ht, udec, kshootnum, n)
        if n <= 0 then
            call RemoveSavedHandle(ht, udec, kst)
            call FlushChildHashtable(ht, tdec)
            call DestroyTimer(t)
        endif
    else
        call FlushChildHashtable(ht, tdec)
        call DestroyTimer(t)
        call RemoveSavedHandle(ht, udec, kst)
    endif
    set t=null
    set u=null
endfunction
function RifleShoot takes unit u,real dir returns nothing
    local timer t
    local integer dec
    local integer udec
    local integer i
    set udec=GetHandleId(u)
    if HaveSavedHandle(ht, udec, kst) then
        call SaveReal(ht, udec, kshootdir, dir)
        call SaveInteger(ht, udec, kshootnum, LoadInteger(ht, udec, kshootnum) + 4)
    else
        set t=CreateTimer()
        set dec=GetHandleId(t)
        call SaveReal(ht, udec, kshootdir, dir)
        call SaveUnitHandle(ht, dec, kshootu, u)
        call SaveInteger(ht, udec, kshootnum, 4)
        call TimerStart(t, 0.15, true, function RifleTimerAction)
        call SaveTimerHandle(ht, udec, kst, t)
    endif
    set t=null
endfunction
function ShootCondition takes nothing returns nothing
    local unit u
    local real dir
    local real ux
    local real uy
    local real ox
    local real oy
    local integer dec
    local real recris
    set u=GetTriggerUnit()
    set dec=GetHandleId(u)
    if GetIssuedOrderIdBJ() == String2OrderIdBJ("smart") then
        set ux=GetUnitX(u)
        set uy=GetUnitY(u)
        set ox=GetOrderPointX()
        set oy=GetOrderPointY()
        if GetUnitAbilityLevel(u, meeler) > 0 and GetUnitAbilityLevel(u, revive) == 0 then
            call IssueImmediateOrderById(u, 851972)
            call PauseUnit(u, true)
            call PauseUnit(u, false)
            set dir=Atan2(oy - uy, ox - ux)
            call SaveBoolean(ht, dec, kstand, true)
            call RifleShoot(u , dir)
        else
            call SaveBoolean(ht, dec, kstand, false)
        endif
    else
        call SaveBoolean(ht, dec, kstand, false)
    endif
    set u=null
endfunction
function RegisterShootSystem takes unit u returns nothing
    local trigger trg=CreateTrigger()
    call SaveTriggerHandle(ht, GetHandleId(u), kshoottrg, trg)
    call SaveTriggerConditionHandle(ht, GetHandleId(trg), ktrgcon, TriggerAddCondition(trg, Condition(function ShootCondition)))
    call TriggerRegisterUnitEvent(trg, u, EVENT_UNIT_ISSUED_POINT_ORDER)
    call TriggerRegisterUnitEvent(trg, u, EVENT_UNIT_ISSUED_ORDER)
    call TriggerRegisterUnitEvent(trg, u, EVENT_UNIT_ISSUED_TARGET_ORDER)
    set trg=null
endfunction
function InitRightClickShootSystem takes integer l__gk returns integer
    set kst=l__gk + 1
    set krecover=l__gk + 2
    set kweapon=l__gk + 3
    set kshootu=l__gk + 4
    set kshootdir=l__gk + 5
    set kshootnum=l__gk + 6
    set krecris=l__gk + 7
    set kautonum=l__gk + 8
    set kfirrat=l__gk + 9
    set krecoil=l__gk + 10
    set kmagsiz=l__gk + 11
    set krembul=l__gk + 12
    set kshoottrg=l__gk + 13
    set kstand=l__gk + 14
    return kstand
endfunction 

function RegisterLeapRecoder takes unit u returns nothing
    call TriggerRegisterUnitEvent(leaptrg, u, EVENT_UNIT_ISSUED_POINT_ORDER)
    call TriggerRegisterUnitEvent(leaptrg, u, EVENT_UNIT_ISSUED_TARGET_ORDER)
endfunction
function RecordLeap takes nothing returns nothing
    local unit u
    local integer dec
    if GetIssuedOrderIdBJ() == String2OrderIdBJ("smart") then
        set u=GetTriggerUnit()
        set dec=GetHandleId(u)
        call SaveReal(ht, dec, kleapx, GetOrderPointX())
        call SaveReal(ht, dec, kleapy, GetOrderPointY())
    endif
    set u=null
endfunction
function InitLeapSystem takes integer l__gk returns integer
    set leaptrg=CreateTrigger()
    call TriggerAddCondition(leaptrg, Condition(function RecordLeap))
    set kleapx=l__gk + 1
    set kleapy=l__gk + 2
    return kleapy
endfunction

function RandomXInRect takes rect rec returns real
    return GetRandomReal(GetRectMinX(rec), GetRectMaxX(rec))
endfunction
function RandomYInRect takes rect rec returns real
    return GetRandomReal(GetRectMinY(rec), GetRectMaxY(rec))
endfunction

function CountItemsAction takes nothing returns nothing
    if GetItemTypeId(GetEnumItem()) == itemid then
        set itemcount=itemcount + 1
    endif
endfunction
function CountItemsInRect takes rect rec,integer id returns integer
    set itemcount=0
    set itemid=id
    call EnumItemsInRectBJ(rec, function CountItemsAction)
    return itemcount
endfunction
function InitCountItemsSystem takes integer l__gk returns integer
    return l__gk
endfunction

function CreateItemsInRect takes rect rec,integer itmType,integer number returns nothing
    local integer i
    set i=1
    loop
        exitwhen i > number
        call CreateItem(itmType, RandomXInRect(rec), RandomXInRect(rec))
        set i=i + 1
    endloop
endfunction
function DropAction takes nothing returns nothing
    local timer t=GetExpiredTimer()
    local integer dec=GetHandleId(t)
    local integer max=LoadInteger(ht, dec, kdimax)
    local rect rec=LoadRectHandle(ht, dec, kdirec)
    local integer num=LoadInteger(ht, dec, kdinum)
    local integer iid=LoadInteger(ht, dec, kdiid)
    if CountItemsInRect(rec , iid) < max then
        call CreateItemsInRect(rec , iid , num)
    endif
    set t=null
endfunction
function DropItem takes integer id,integer l__itemid,real rate,integer num,rect rec,integer max returns nothing
    local timer t
    local integer dec
    if HaveSavedHandle(ht, ddrop, id) == false then
        set t=CreateTimer()
        set dec=GetHandleId(t)
        call SaveInteger(ht, dec, kdiid, l__itemid)
        call SaveRectHandle(ht, dec, kdirec, rec)
        call SaveInteger(ht, dec, kdinum, num)
        call SaveInteger(ht, dec, kdimax, max)
        call TimerStart(t, rate, true, function DropAction)
        call SaveTimerHandle(ht, ddrop, id, t)
    endif
    set t=null
endfunction
function StopDrop takes integer id returns nothing
    local timer t
    if HaveSavedHandle(ht, ddrop, id) then
        set t=LoadTimerHandle(ht, ddrop, id)
        call FlushChildHashtable(ht, GetHandleId(t))
        call DestroyTimer(t)
    endif
    set t=null
endfunction
function InitDropSystem takes integer l__gk returns integer
    set ddrop='H001'
    set kdiid=l__gk + 1
    set kdinum=l__gk + 2
    set kdirec=l__gk + 3
    set kdimax=l__gk + 4
    set droene=1
    return kdimax
endfunction




function InitAnyUnitSpellEffect takes nothing returns nothing
        set gausetrg=CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(gausetrg, EVENT_PLAYER_UNIT_SPELL_EFFECT)
endfunction
function InitAnyUnitSpellChannel takes nothing returns nothing
        set gausctrg=CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(gausctrg, EVENT_PLAYER_UNIT_SPELL_CHANNEL)
endfunction

function BloomDead takes player p,real x,real y returns nothing
    local group ydl_group
    local unit ydl_unit
    local real ux
    local real uy
    local real dir
    local real d
    set ydl_group=CreateGroup()
    call GroupEnumUnitsInRange(ydl_group, x, y, 300, null)
        loop
        set ydl_unit=FirstOfGroup(ydl_group)
        exitwhen ydl_unit == null
        call GroupRemoveUnit(ydl_group, ydl_unit)
        if IsUnitAliveBJ(ydl_unit) == false and IsUnitEnemy(ydl_unit, p) == true then
            set ux=GetUnitX(ydl_unit)
            set uy=GetUnitY(ydl_unit)
            set d=GetRandomReal(400, 800)
            set dir=Atan2(uy - y, ux - x)
            call YDWEJumpTimer(ydl_unit , dir * bj_RADTODEG , d , 2 , 0.03 , 500)
            if d < 600 then
                call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\HumanLargeDeathExplode\\HumanLargeDeathExplode.mdl", ux, uy))
            endif
        endif
        endloop
    call DestroyGroup(ydl_group)
    set ydl_group=null
    set ydl_unit=null
endfunction

function NadeBloom takes nothing returns nothing
    local timer t=GetExpiredTimer()
    local integer dec=GetHandleId(t)
    local unit u=LoadUnitHandle(ht, dec, knadeu)
    local real x=GetUnitX(u)
    local real y=GetUnitY(u)
    call rangeChaosDamage(udg_hero[GetPlayerId(GetOwningPlayer(u))] , x , y , 300 , 250 , "Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl")
    call KillUnit(u)
    call BloomDead(GetOwningPlayer(u) , x , y)
    set t=null
    set u=null
endfunction
function Nade takes nothing returns nothing
    local unit u
    local timer t
    local real x
    local real y
    local real dis
    local real dir
    local real tx
    local real ty
    local unit n
    if GetSpellAbilityId() == nade then
        set u=GetTriggerUnit()
        set t=CreateTimer()
        set x=GetUnitX(u)
        set y=GetUnitY(u)
        set tx=GetSpellTargetX()
        set ty=GetSpellTargetY()
        set dir=Atan2(ty - y, tx - x)
        set dis=SquareRoot(Pow(ty - y, 2) + Pow(tx - x, 2))
        set n=CreateUnit(GetOwningPlayer(u), nadeu, x, y, dir * bj_RADTODEG)
        call YDWEJumpTimer(n , dir * bj_RADTODEG , dis , 1 , 0.03 , 300)
        call SaveUnitHandle(ht, GetHandleId(t), knadeu, n)
        call TimerStart(t, 1, false, function NadeBloom)
        set u=null
        set t=null
        set n=null
    endif
endfunction
function InitNade takes integer l__gk returns integer
    set knadeu=l__gk + 1
    call TriggerAddCondition(gausetrg, Condition(function Nade))
    return knadeu
endfunction

function CloseLiveTechForPlayer takes player p returns nothing
    call RemoveUnit(udg_techlive[GetPlayerId(p)])
endfunction
function OpenLiveTechForPlayer takes player p returns nothing
    call RemoveUnit(udg_techlive[GetPlayerId((p))]) // INLINED!!
    set udg_techlive[GetPlayerId(p)]=CreateUnit(p, 'e002', GetRectCenterX(turec), GetRectCenterY(turec), 0)
endfunction
function InitTechUnitSystem takes integer l__gk returns integer
    return l__gk
endfunction



function HealMana takes unit u,real d returns nothing
    call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) + d)
endfunction
function LostMana takes unit u,real d returns nothing
    call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) - d)
endfunction
function Heal takes unit u,real d returns nothing
    call SetUnitState(u, UNIT_STATE_LIFE, GetUnitState(u, UNIT_STATE_LIFE) + d)
endfunction
function Lost takes unit u,real d returns nothing
    if UnitHasBuffBJ(u, laydown2) == false then
        call SetUnitState(u, UNIT_STATE_LIFE, GetUnitState(u, UNIT_STATE_LIFE) - d)
    endif
endfunction




function SetEC takes unit u,real r returns nothing
    call SaveReal(ht, GetHandleId(u), kegycsu, r)
endfunction
function RegisterEnergyConsume takes unit u returns nothing
    call SaveReal(ht, GetHandleId(u), kegycsu, 1)
    call GroupAddUnit(egygro, u)
endfunction
function ECGA takes nothing returns nothing
    local unit u=GetEnumUnit()
    local integer dec=GetHandleId(u)
    call LostMana(u , LoadReal(ht, dec, kegycsu))
    set u=null
endfunction
function EnergyConsume takes nothing returns nothing
    call ForGroup(egygro, function ECGA)
endfunction
function InitEnergySystem takes integer l__gk returns integer
    set kegycsu=l__gk + 1
    set egygro=CreateGroup()
    set egytrg=CreateTrigger()
    call TriggerAddCondition(egytrg, Condition(function EnergyConsume))
    call TriggerRegisterTimerEventPeriodic(egytrg, 1.00)
    return kegycsu
endfunction




function RemoveLayDowmState takes unit u returns nothing
    call UnitRemoveAbility(u, laydown)
    call UnitRemoveAbility(u, laydown2)
endfunction
function AddLayDownState takes unit u returns nothing
    call UnitAddAbility(u, laydown)
endfunction
function LayDownSelf takes unit u returns nothing
    call UnitAddAbility(u, 'Avul')
    call UnitAddAbility(u, revive)
    call UnitAddAbility((u), laydown) // INLINED!!
    call SaveReal(ht, GetHandleId((u )), kegycsu, (( 0.5)*1.0)) // INLINED!!
    call RemoveUnit(udg_techlive[GetPlayerId((GetOwningPlayer(u)))]) // INLINED!!
    call PauseUnit(u, true)
    call SetUnitAnimationByIndex(u, 3)
    call PauseUnit(u, false)
endfunction
function LayDown takes nothing returns nothing
    local real dam=GetEventDamage()
    local unit u=GetTriggerUnit()
    local real l= GetUnitStateSwap(UNIT_STATE_LIFE, u)
    if dam > l then
        set l=dam + 1
        call UnitAddAbilityBJ(ninelife, u)
        call SetUnitLifeBJ(u, l)
        call GroupAddUnitSimple(u, revgro)
        call EnableTrigger(revtrg)
    endif
    set u=null
endfunction
function RegisterReviveSystem takes unit u returns nothing
    local trigger trg=CreateTrigger()
    call TriggerRegisterUnitEvent(trg, u, EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(trg, Condition(function LayDown))
    set trg=null
endfunction
function RemoveNineLifeGroupAction takes nothing returns nothing
    local unit u=GetEnumUnit()
    local real l= GetUnitStateSwap(UNIT_STATE_LIFE, u)
    call UnitRemoveAbilityBJ(ninelife, u)
    call SetUnitLifeBJ(u, l)
    call GroupRemoveUnitSimple(u, revgro)
    //call LayDownSelf(u)
    set u=null
endfunction
function RemoveNineLife takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call ForGroupBJ(revgro, function RemoveNineLifeGroupAction)
endfunction
function Revive takes nothing returns nothing
    local unit u
    if GetSpellAbilityId() == revive then
        set u=GetTriggerUnit()
        call UnitRemoveAbility(u, 'Avul')
        call OpenLiveTechForPlayer(GetOwningPlayer(u))
        call UnitRemoveAbility(u, revive)
        call SaveReal(ht, GetHandleId((u )), kegycsu, (( 1)*1.0)) // INLINED!!
        call Heal(u , 50)
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitX(u), GetUnitY(u)))
        call RemoveLayDowmState(u)
    endif
    set u=null
endfunction
function InitReviveSystem takes integer l__gk returns integer
    set revgro=CreateGroup()
    set revtrg=CreateTrigger()
    call TriggerAddAction(revtrg, function RemoveNineLife)
    call TriggerRegisterTimerEventPeriodic(revtrg, 0.00)
    call TriggerAddCondition(gausetrg, Condition(function Revive))
    return l__gk
endfunction

function LostNotDie takes unit u,real d returns nothing
    call SetUnitState(u, UNIT_STATE_LIFE, RMaxBJ(GetUnitState(u, UNIT_STATE_LIFE) - d, 1))
endfunction



function SetLL takes unit u,real r returns nothing
    call SaveReal(ht, GetHandleId(u), kll, r)
endfunction
function RegisterLostLife takes unit u returns nothing
    call SaveReal(ht, GetHandleId(u), kll, 0)
    call GroupAddUnit(llgro, u)
endfunction
function LLGA takes nothing returns nothing
    local unit u=GetEnumUnit()
    local integer dec=GetHandleId(u)
    call LostNotDie(u , LoadReal(ht, dec, kll))
    set u=null
endfunction
function LostLife takes nothing returns nothing
    call ForGroup(llgro, function LLGA)
endfunction
function InitLostLifeSystem takes integer l__gk returns integer
    set kll=l__gk + 1
    set llgro=CreateGroup()
    set lltrg=CreateTrigger()
    call TriggerAddCondition(lltrg, Condition(function LostLife))
    call TriggerRegisterTimerEventPeriodic(lltrg, 1.00)
    return kll
endfunction


function RegisterLifeLow takes unit u returns nothing
    call TriggerRegisterUnitLifeEvent(lifelowtrg, u, LESS_THAN, 2)
endfunction
function LifeLow takes nothing returns nothing
    call LayDownSelf(GetTriggerUnit())
endfunction
function InitLifeLowSystem takes integer l__gk returns integer
    set lifelowtrg=CreateTrigger()
    call TriggerAddCondition(lifelowtrg, Condition(function LifeLow))
    return l__gk
endfunction

function RegisterEnergyLow takes unit u returns nothing
    call TriggerRegisterUnitManaEvent(eltrg, u, LESS_THAN, 0)
    call TriggerRegisterUnitManaEvent(eltrg, u, GREATER_THAN, 0.1)
endfunction
function EnergyLow takes nothing returns nothing
    local unit u=GetTriggerUnit()
    if IsUnitAliveBJ(u) then
        if GetUnitState(u, UNIT_STATE_MANA) == 0 then
            call UnitAddAbility(u, elability)
            call SaveReal(ht, GetHandleId((u )), kll, (( 5)*1.0)) // INLINED!!
        else
            call UnitRemoveAbility(u, elability)
            call UnitRemoveAbility(u, elbuff)
            call SaveReal(ht, GetHandleId((u )), kll, (( 0)*1.0)) // INLINED!!
        endif
    endif
    set u=null
endfunction
function InitEnergyLowSystem takes integer l__gk returns integer
    set eltrg=CreateTrigger()
    set elability='A003'
    set elability2='A004'
    set elbuff='B000'
    call TriggerAddCondition(eltrg, Condition(function EnergyLow))
    return l__gk
endfunction

function Speed takes nothing returns nothing
    local timer t=GetExpiredTimer()
    local integer id=GetHandleId(t)
    local real v=LoadReal(ht, id, kjsdv)
    local real dir
    local unit u
    if v <= 0 then
        call FlushChildHashtable(ht, id)
        call DestroyTimer(t)
    else
        set u=LoadUnitHandle(ht, id, kjsdu)
        set dir=LoadReal(ht, id, kjsddir)
        call SetUnitX(u, GetUnitX(u) + v * Cos(dir))
        call SetUnitY(u, GetUnitY(u) + v * Sin(dir))
        call SaveReal(ht, id, kjsdv, v - gjsdf)
    endif
    set t=null
    set u=null
endfunction
function AddSpeed takes unit u,real dir,real v returns nothing
    local timer t=CreateTimer()
    local integer id=GetHandleId(t)
    call SaveUnitHandle(ht, id, kjsdu, u)
    call SaveReal(ht, id, kjsddir, dir)
    call SaveReal(ht, id, kjsdv, v)
    call TimerStart(t, 0.02, true, function Speed)
    set t=null
endfunction
function InitJiaSuDuSystem takes integer l__gk returns integer
    set kjsdu=l__gk + 1
    set kjsdv=l__gk + 2
    set kjsddir=l__gk + 3
    return kjsddir
endfunction
function RangeJiTui takes player p,real x,real y,real r,real v returns nothing
    local group ydl_group
    local unit ydl_unit
    set ydl_group=CreateGroup()
    call GroupEnumUnitsInRange(ydl_group, x, y, r, null)
        loop
        set ydl_unit=FirstOfGroup(ydl_group)
        exitwhen ydl_unit == null
        call GroupRemoveUnit(ydl_group, ydl_unit)
        if ( ( ( IsUnitType(ydl_unit, UNIT_TYPE_MAGIC_IMMUNE) == false ) and ( ( IsUnitAliveBJ(ydl_unit) == true ) and ( IsUnitEnemy(ydl_unit, p) == true ) ) ) ) then
            call AddSpeed(ydl_unit , Atan2(GetUnitY(ydl_unit) - y, GetUnitX(ydl_unit) - x) , v - LoadReal(ht, GetUnitTypeId(ydl_unit), kmris))
        endif
        endloop
    call DestroyGroup(ydl_group)
    set ydl_group=null
    set ydl_unit=null
endfunction

function BloodyChaosDamage takes unit source,real x,real y,real dir,real radius,real damage,string efs returns nothing
    local group ydl_group
    local unit ydl_unit
    set ydl_group=CreateGroup()
    call GroupEnumUnitsInRange(ydl_group, x, y, radius, null)
        loop
        set ydl_unit=FirstOfGroup(ydl_group)
        exitwhen ydl_unit == null
        call GroupRemoveUnit(ydl_group, ydl_unit)
        if IsUnitAliveBJ(ydl_unit) == true and IsUnitEnemy(ydl_unit, GetOwningPlayer(source)) == true then
            call UnitDamageTarget((source ), ( ydl_unit ), (( damage)*1.0), true, false, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_ENHANCED, WEAPON_TYPE_WHOKNOWS) // INLINED!!
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Stampede\\StampedeMissileDeath.mdl", ydl_unit, "chest"))
        endif
        endloop
    call DestroyEffect(AddSpecialEffect(efs, x, y))
    call DestroyGroup(ydl_group)
    set ydl_group=null
    set ydl_unit=null
endfunction
function Strike takes nothing returns nothing
    local timer t=GetExpiredTimer()
    local integer tdec=GetHandleId(t)
    local integer count=LoadInteger(ht, tdec, kmc)
    local unit u=LoadUnitHandle(ht, tdec, kmu)
    local unit tu
    local real ux
    local real uy
    local real x
    local real y
    local real dir
    if count > 100 and GetUnitAbilityLevel(u, ranger) > 0 and IsUnitAliveBJ(u) and GetUnitAbilityLevel(u, revive) == 0 then
        set tu=GetFirstEnemyInRange(u , 300)
        if not ( tu == null ) then
            set ux=GetUnitX(u)
            set uy=GetUnitY(u)
            set dir=Atan2(GetUnitY(tu) - uy, GetUnitX(tu) - ux)
            set x=ux + 100 * Cos(dir)
            set y=uy + 100 * Sin(dir)
            call RangeJiTui(GetOwningPlayer(u) , x , y , 200 , 8)
            call CreateUnit(GetOwningPlayer(u), mid, x, y, dir)
            call BloodyChaosDamage(u , x , y , dir , 200 , 100 , "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl")
            set count=0
        endif
    endif
    set count=count + 1
    call SaveInteger(ht, tdec, kmc, count)
    set u=null
    set t=null
endfunction
function RegisterMelee takes unit u returns nothing
    local timer t
    local integer udec=GetHandleId(u)
    local integer tdec
    if HaveSavedHandle(ht, udec, kmt) == false then
        set t=CreateTimer()
        set tdec=GetHandleId(t)
        call SaveUnitHandle(ht, tdec, kmu, u)
        call SaveInteger(ht, tdec, kmc, 0)
        call TimerStart(t, 0.02, true, function Strike)
    endif
    set t=null
endfunction
function InitMeleeSystem takes integer l__gk returns integer
    set kmt=l__gk + 1
    set kmu=l__gk + 2
    set kmc=l__gk + 3
    set kmris=l__gk + 4
    return kmris
endfunction

function Lose takes nothing returns nothing
    call CustomDefeatBJ(Player(0), "TRIGSTR_145")
    call CustomDefeatBJ(Player(1), "TRIGSTR_145")
    call CustomDefeatBJ(Player(2), "TRIGSTR_145")
    call CustomDefeatBJ(Player(3), "TRIGSTR_145")
endfunction
function Win takes nothing returns nothing
    call CustomVictoryBJ(Player(0), true, true)
    call CustomVictoryBJ(Player(1), true, true)
    call CustomVictoryBJ(Player(2), true, true)
    call CustomVictoryBJ(Player(3), true, true)
endfunction
function LoseCondition takes nothing returns nothing
    local boolean lose=true
    local integer i=0
    loop
    exitwhen i > 3
    if IsUnitAliveBJ(udg_hero[i]) then
        if GetUnitAbilityLevel(udg_hero[i], revive) > 0 and GetUnitState(udg_hero[i], UNIT_STATE_MANA) < 60.00 then
        else
            set lose=false
        endif
    endif
    set i=i + 1
    endloop
    if lose then
        call Lose()
    endif
endfunction
function InitLoseCondition takes nothing returns nothing
    call TriggerAddCondition(gg_trg_Lose, Condition(function LoseCondition))
endfunction

function MonsterTechUp takes nothing returns nothing
    call AddPlayerTechResearched(Player(11), 'R003', 1)
    call AddPlayerTechResearched(Player(11), 'R004', 1)
endfunction
function Spawn takes integer id,integer num returns nothing
    local integer ri
    local real x
    local real y
    local integer n=0
    loop
        exitwhen n >= num
        set n=n + 1
        set ri=GetRandomInt(1, 4)
        if ri == 1 then
            set x=minx
            set y=GetRandomReal(miny, maxy)
        elseif ri == 2 then
            set x=maxx
            set y=GetRandomReal(miny, maxy)
        elseif ri == 3 then
            set x=GetRandomReal(minx, maxy)
            set y=miny
        elseif ri == 4 then
            set x=GetRandomReal(minx, maxy)
            set y=maxy
        endif
        call CreateUnit(Player(11), id, x, y, 0)
    endloop
endfunction
function OriginalSequence takes nothing returns nothing
    if GetPlayerState(Player(11), PLAYER_STATE_RESOURCE_FOOD_USED) < udg_maxm then
        call Spawn(udg_oriseq[udg_oriid * 2] , udg_oriseq[udg_oriid * 2 + 1])
        set udg_oriid=udg_oriid + 1
        if udg_oriid > udg_mtu then
            set udg_mtu=udg_mtu + 100
            set udg_maxm=udg_maxm + 10
        endif
        if udg_oriid > udg_mti then
            set udg_mti=udg_mti + 300
            call MonsterTechUp()
        endif
        if udg_oriid > 1500 then
            call DestroyTimer(GetExpiredTimer())
        endif
    endif
endfunction
function StartOriginalSequence takes nothing returns nothing
    local timer t=CreateTimer()
    call TimerStart(t, 1, true, function OriginalSequence)
    set t=null
endfunction


function SeqAddSimple takes integer i,integer uid,integer n returns integer
    set udg_oriseq[i * 2]=uid
    set udg_oriseq[i * 2 + 1]=n
    return i + 1
endfunction
function SeqRest takes integer i returns integer
    return SeqAddSimple(i , 0 , 0)
endfunction
function InitOriginSequeuce takes nothing returns nothing
    local integer i=0
    local integer j=0
    loop
    exitwhen j > 1
    loop
        exitwhen i > 60 + j * 600
        set i=SeqAddSimple(i , 'u000' , 1)
    endloop
    loop
        exitwhen i > 120 + j * 600
        set i=SeqAddSimple(i , 'u000' , 2)
    endloop
    loop
        exitwhen i > 180 + j * 600
        set i=SeqAddSimple(i , 'u000' , 1)
        set i=SeqAddSimple(i , 'z000' , 1)
    endloop
    loop
        exitwhen i > 240 + j * 600
        set i=SeqAddSimple(i , 'u000' , 2)
        set i=SeqAddSimple(i , 'z000' , 1)
    endloop
    loop
        exitwhen i > 300 + j * 600
        set i=SeqAddSimple(i , 'u000' , 2)
        set i=SeqAddSimple(i , 'z000' , 2)
    endloop
    loop
        exitwhen i > 400 + j * 600
        set i=(SeqAddSimple((i) , 0 , 0)) // INLINED!!
    endloop
    loop
        exitwhen i > 500 + j * 600
        if ModuloInteger(i, 20) < 2 then
            set i=SeqAddSimple(i , 'u001' , 1)
        else
            set i=SeqAddSimple(i , 'u000' , 2)
            set i=SeqAddSimple(i , 'z000' , 2)
        endif
    endloop
    loop
        exitwhen i > 600 + j * 600
        set i=SeqAddSimple(i , 'u000' , 2)
        set i=SeqAddSimple(i , 'z000' , 2)
        set i=SeqAddSimple(i , 'u000' , 2)
        set i=SeqAddSimple(i , 'z000' , 2)
        set i=SeqAddSimple(i , 'u000' , 2)
        set i=SeqAddSimple(i , 'z000' , 2)
        set i=SeqAddSimple(i , 'z001' , 2)
        set i=SeqAddSimple(i , 'u000' , 2)
        set i=SeqAddSimple(i , 'z000' , 2)
        set i=SeqAddSimple(i , 'u000' , 2)
        set i=SeqAddSimple(i , 'z000' , 2)
        set i=SeqAddSimple(i , 'u000' , 2)
        set i=SeqAddSimple(i , 'z000' , 2)
        set i=SeqAddSimple(i , 'z001' , 2)
        set i=SeqAddSimple(i , 'u000' , 2)
        set i=SeqAddSimple(i , 'z000' , 2)
        set i=SeqAddSimple(i , 'u000' , 2)
        set i=SeqAddSimple(i , 'z000' , 2)
        set i=SeqAddSimple(i , 'u000' , 2)
        set i=SeqAddSimple(i , 'u001' , 1)
    endloop
    set j=j + 1
    endloop
    loop
        exitwhen i > 1500
            set i=SeqAddSimple(i , 'u001' , 1)
            set i=SeqAddSimple(i , 'z000' , 2)
            set i=SeqAddSimple(i , 'z001' , 1)
    endloop
    
endfunction
function InitSpawnSystem takes integer l__gk returns integer
    set minx=GetRectMinX(GetPlayableMapRect())
    set maxx=GetRectMaxX(GetPlayableMapRect())
    set miny=GetRectMinY(GetPlayableMapRect())
    set maxy=GetRectMaxY(GetPlayableMapRect())
    return l__gk
endfunction


function GetNearEnemy takes unit u returns unit
    local integer i=0
    local integer r=10
    local real t=99999999
    local real d
    loop
        exitwhen i > 3
        if not ( udg_hero[i] == null ) and IsUnitAliveBJ(udg_hero[i]) and GetUnitAbilityLevel(udg_hero[i], revive) == 0 then
            set d=YDWEDistanceBetweenUnits(u , udg_hero[i])
            if d < t then
                set t=d
                set r=i
            endif
        endif
        set i=i + 1
    endloop
    return udg_hero[r]
endfunction

function ApproachGA takes nothing returns nothing
    local unit u=GetEnumUnit()
    local unit tu=GetNearEnemy(u)
    local real d=YDWEDistanceBetweenUnits(u , tu)
    local real dir
    local real r
    local real x
    local real y
    if d <= 1000 then
        call GroupRemoveUnit(appgro, u)
        call GroupAddUnit(attgro, u)
    else
        set dir=GetRandomReal(0, 3.1416)
        set r=GetRandomReal(0, d / 2)
        set x=GetUnitX(tu) + r * Cos(dir)
        set y=GetUnitY(tu) + r * Sin(dir)
        call IssuePointOrderById(u, 851986, x, y)
    endif
    set u=null
    set tu=null
endfunction
function AIApproach takes nothing returns nothing
    call ForGroupBJ(appgro, function ApproachGA)
endfunction
function AIDispatch takes nothing returns nothing
    local unit u=GetTriggerUnit()
    if IsUnitOwnedByPlayer(u, Player(11)) then
        if IsUnitInGroup(u, appgro) == false then
            call GroupAddUnit(appgro, u)
        endif
    endif
    set u=null
endfunction
function AIAttackGA takes nothing returns nothing
    local unit u=GetEnumUnit()
    local unit tu=GetNearEnemy(u)
    local real r=YDWEDistanceBetweenUnits(u , tu)
    if r > 1000 then
        call GroupRemoveUnit(attgro, u)
        call GroupAddUnit(appgro, u)
    else
        call IssuePointOrderById(u, 851983, GetUnitX(tu), GetUnitY(tu))
    endif
    if IsUnitDeadBJ(u) then
        call GroupRemoveUnit(attgro, u)
        call GroupRemoveUnit(appgro, u)
    endif
    set u=null
    set tu=null
endfunction
function AIAttack takes nothing returns nothing
    call ForGroupBJ(attgro, function AIAttackGA)
endfunction
function InitAI takes integer l__gk returns integer
    set appt=CreateTimer()
    set attt=CreateTimer()
    set appgro=CreateGroup()
    set attgro=CreateGroup()
    set aitrg=CreateTrigger()
    call YDWETriggerRegisterEnterRectSimpleNull(aitrg , GetPlayableMapRect())
    call TimerStart(appt, 5, true, function AIApproach)
    call TimerStart(attt, 5, true, function AIAttack)
    call TriggerAddCondition(aitrg, Condition(function AIDispatch))
    return l__gk
endfunction

function AfterSpell takes nothing returns nothing
    if GetSpellAbilityId() == 'A00C' then
        call IssuePointOrderById(GetTriggerUnit(), 851983, GetSpellTargetX(), GetSpellTargetY())
    endif
endfunction
function InitAfterSpell takes integer l__gk returns integer
    set astrg=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(astrg, Player(11), EVENT_PLAYER_UNIT_SPELL_FINISH)
    call TriggerAddCondition(astrg, Condition(function AfterSpell))
    return l__gk
endfunction

function Dis takes real x,real y,real tx,real ty returns real
    return SquareRoot(Pow(ty - y, 2) + Pow(tx - x, 2))
endfunction

function SpellAI takes nothing returns nothing
    local unit u=GetTriggerUnit()
    if GetUnitTypeId(u) == 'u001' then
        if Dis(GetOrderPointX() , GetOrderPointY() , GetUnitX(u) , GetUnitY(u)) <= 700 then
            call DisableTrigger(GetTriggeringTrigger())
            call IssuePointOrderById(u, 852580, GetOrderPointX(), GetOrderPointY())
            call EnableTrigger(GetTriggeringTrigger())
        endif
    endif
    set u=null
endfunction
function InitSpellAI takes integer l__gk returns integer
    set saitrg=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(saitrg, Player(11), EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
    call TriggerAddCondition(saitrg, Condition(function SpellAI))
    return l__gk
endfunction

function Poison takes nothing returns nothing
    local timer t=GetExpiredTimer()
    local unit u=LoadUnitHandle(ht, GetHandleId(t), kpoiu)
    local integer dec=GetHandleId(u)
    local integer sec=LoadInteger(ht, dec, kpoisec)
    local real dam=LoadReal(ht, dec, kpoidam)
    if sec < 1 then
        call UnitRemoveAbility(u, poibuff1)
        call UnitRemoveAbility(u, poibuff2)
        call DestroyTimer(t)
        call FlushChildHashtable(ht, GetHandleId(t))
        call RemoveSavedHandle(ht, dec, kpoit)
    else
        call LostNotDie(u , dam)
        set sec=sec - 1
        call SaveInteger(ht, dec, kpoisec, sec)
    endif
    set t=null
    set u=null
endfunction
function RemovePoison takes unit u returns nothing
endfunction
function AddPoison takes unit u,integer sec,real dam returns nothing
    local timer t
    local integer udec=GetHandleId(u)
    if HaveSavedHandle(ht, udec, kpoit) then
        call SaveInteger(ht, udec, kpoisec, LoadInteger(ht, udec, kpoisec) + sec)
        call SaveReal(ht, udec, kpoidam, ( LoadReal(ht, udec, kpoidam) + dam ) / 2)
    else
        set t=CreateTimer()
        call SaveInteger(ht, udec, kpoisec, sec)
        call SaveReal(ht, udec, kpoidam, dam)
        call SaveTimerHandle(ht, udec, kpoit, t)
        call SaveUnitHandle(ht, GetHandleId(t), kpoiu, u)
        call TimerStart(t, 1, true, function Poison)
        call UnitAddAbility(u, poibuff1)
    endif
    set t=null
endfunction
function RangeAddPoison takes unit s,real x,real y,real r,integer sec,real dam returns nothing
    local group ydl_group
    local unit ydl_unit
    local timer t
    local integer udec
    set ydl_group=CreateGroup()
    call GroupEnumUnitsInRange(ydl_group, x, y, r, null)
        loop
        set ydl_unit=FirstOfGroup(ydl_group)
        exitwhen ydl_unit == null
        call GroupRemoveUnit(ydl_group, ydl_unit)
        if IsUnitAliveBJ(ydl_unit) == true and IsUnitEnemy(ydl_unit, GetOwningPlayer(s)) == true and UnitHasBuffBJ(ydl_unit, laydown2) == false then
            set udec=GetHandleId(ydl_unit)
            if HaveSavedHandle(ht, udec, kpoit) then
                call SaveInteger(ht, udec, kpoisec, LoadInteger(ht, udec, kpoisec) + sec)
                call SaveReal(ht, udec, kpoidam, ( LoadReal(ht, udec, kpoidam) + dam ) / 2)
            else
                set t=CreateTimer()
                call SaveInteger(ht, udec, kpoisec, sec)
                call SaveReal(ht, udec, kpoidam, dam)
                call SaveTimerHandle(ht, udec, kpoit, t)
                call SaveUnitHandle(ht, GetHandleId(t), kpoiu, ydl_unit)
                call TimerStart(t, 1, true, function Poison)
                call UnitAddAbility(ydl_unit, poibuff1)
            endif
        endif
        endloop
    call DestroyGroup(ydl_group)
    set ydl_group=null
    set ydl_unit=null
    set t=null
endfunction
function InitPoisonBuff takes integer l__gk returns integer
    set kpoisec=l__gk + 1
    set kpoidam=l__gk + 2
    set kpoit=l__gk + 3
    set kpoiu=l__gk + 4
    return kpoiu
endfunction

function PoisonAbility takes nothing returns nothing
    local unit u=GetEventDamageSource()
    if GetUnitTypeId(u) == 'u001' then
        call AddPoison(GetTriggerUnit() , 10 , 2)
    endif
    set u=null
endfunction
function InitPoisonAbility takes nothing returns nothing
    set poitrg=CreateTrigger()
    call YDWESyStemAnyUnitDamagedRegistTrigger(poitrg)
    call TriggerAddCondition(poitrg, Condition(function PoisonAbility))
endfunction

function PoisonBreath takes nothing returns nothing
    local unit u
    local real ux
    local real uy
    local real tx
    local real ty
    local real x
    local real y
    local real dir
    local real d
    if GetSpellAbilityId() == 'A00C' then
        set u=GetTriggerUnit()
        set ux=GetUnitX(u)
        set uy=GetUnitY(u)
        set tx=GetSpellTargetX()
        set ty=GetSpellTargetY()
        set dir=Atan2(ty - uy, tx - ux)
        set d=350
        set x=ux + d * Cos(dir)
        set y=uy + d * Sin(dir)
        call rangeChaosDamage(u , x , y , d , 10 , "")
        call RangeAddPoison(u , x , y , d , 10 , 2)
    endif
    set u=null
endfunction
function InitPoisonBreath takes integer l__gk returns integer
    call TriggerAddCondition(gausetrg, Condition(function PoisonBreath))
    return l__gk
endfunction

function SynState takes nothing returns nothing
endfunction
function CreatePortrait takes player p returns nothing
    local timer t=CreateTimer()
    set udg_portrait[GetPlayerId(p)]=CreateUnit(p, 'H003', 0, 0, 0)
    call TimerStart(t, 0.2, true, function SynState)
    set t=null
endfunction

function RefreshUpDialogLabel takes integer i returns nothing
    local integer e=GetPlayerTechCountSimple(energy, Player(i)) * 20 + 50
    local integer s=GetPlayerTechCountSimple(stamina, Player(i)) * 20 + 50
    local integer p=GetPlayerTechCountSimple(speed, Player(i)) * 20 + 50
    call DialogClear(td[i])
    set upenergy[i]=DialogAddButton(td[i], egylbl + I2S(e) + food, 0)
    set upstamina[i]=DialogAddButton(td[i], stmlbl + I2S(s) + food, 0)
    set upspeed[i]=DialogAddButton(td[i], spelbl + I2S(p) + food, 0)
    set cancel[i]=DialogAddButton(td[i], "取消", 0)
endfunction
function CreateUpDialogLabel takes integer i returns nothing
    local integer e=GetPlayerTechCountSimple(energy, Player(i)) * 20 + 50
    local integer s=GetPlayerTechCountSimple(stamina, Player(i)) * 20 + 50
    local integer p=GetPlayerTechCountSimple(speed, Player(i)) * 20 + 50
    set upenergy[i]=DialogAddButton(td[i], egylbl + I2S(e) + food, 0)
    set upstamina[i]=DialogAddButton(td[i], stmlbl + I2S(s) + food, 0)
    set upspeed[i]=DialogAddButton(td[i], spelbl + I2S(p) + food, 0)
    set cancel[i]=DialogAddButton(td[i], "取消", 0)
endfunction
function TechUp takes nothing returns nothing
    local button b=GetClickedButtonBJ()
    local dialog d=GetClickedDialogBJ()
    local integer i=0
    local integer expned
    loop
        exitwhen td[i] == d or i > 3
        set i=i + 1
    endloop
    if b == upenergy[i] then
        set expned=GetPlayerTechCountSimple(energy, Player(i)) * 20 + 50
        if GetPlayerState(Player(i), PLAYER_STATE_RESOURCE_FOOD_USED) >= expned then
            call AddPlayerTechResearched(Player(i), energy, 1)
            call AdjustPlayerStateBJ(- expned, Player(i), PLAYER_STATE_RESOURCE_FOOD_USED)
            call RefreshUpDialogLabel(i)
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Levelup\\LevelupCaster.mdl", GetUnitX(udg_hero[i]), GetUnitY(udg_hero[i])))
        else
            call DisplayTextToPlayer(Player(i), 0, 0, failmsg)
        endif
    elseif b == upstamina[i] then
        set expned=GetPlayerTechCountSimple(stamina, Player(i)) * 20 + 50
        if GetPlayerState(Player(i), PLAYER_STATE_RESOURCE_FOOD_USED) >= expned then
            call AddPlayerTechResearched(Player(i), stamina, 1)
            call AdjustPlayerStateBJ(- expned, Player(i), PLAYER_STATE_RESOURCE_FOOD_USED)
            call RefreshUpDialogLabel(i)
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Levelup\\LevelupCaster.mdl", GetUnitX(udg_hero[i]), GetUnitY(udg_hero[i])))
        else
            call DisplayTextToPlayer(Player(i), 0, 0, failmsg)
        endif
    elseif b == upspeed[i] then
        set expned=GetPlayerTechCountSimple(speed, Player(i)) * 20 + 50
        if GetPlayerState(Player(i), PLAYER_STATE_RESOURCE_FOOD_USED) >= expned then
            call AddPlayerTechResearched(Player(i), speed, 1)
            call AdjustPlayerStateBJ(- expned, Player(i), PLAYER_STATE_RESOURCE_FOOD_USED)
            call RefreshUpDialogLabel(i)
            call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Levelup\\LevelupCaster.mdl", GetUnitX(udg_hero[i]), GetUnitY(udg_hero[i])))
        else
            call DisplayTextToPlayer(Player(i), 0, 0, failmsg)
        endif
    endif
    call DialogDisplay(Player(i), d, true)
    if b == cancel[i] then
        call DialogDisplay(Player(i), d, false)
    endif
    set d=null
    set b=null
endfunction
function InitTechDialog takes integer l__gk returns integer
    local integer i=0
    set uptrg=CreateTrigger()
    call TriggerAddCondition(uptrg, Condition(function TechUp))
    loop
        exitwhen i > 3
        set td[i]=DialogCreate()
        call CreateUpDialogLabel(i)
        call TriggerRegisterDialogEvent(uptrg, td[i])
        set i=i + 1
    endloop
    return l__gk
endfunction

function RegisterExp takes integer typid,integer exp returns nothing
    call SaveInteger(ht, typid, kexp, exp)
    
endfunction
function RegisterExpSystem takes player p returns nothing
endfunction
function AddExp takes nothing returns nothing
    local unit u=GetTriggerUnit()
    local integer dec=GetUnitTypeId(u)
    local integer exp=LoadInteger(ht, dec, kexp)
    local player p=GetOwningPlayer(GetKillingUnitBJ())
    call AdjustPlayerStateBJ(exp, p, PLAYER_STATE_RESOURCE_FOOD_USED)
    set u=null
    set p=null
endfunction
function InitExpSystem takes integer l__gk returns integer
    set exptrg=CreateTrigger()
    call TriggerAddCondition(exptrg, Condition(function AddExp))
    call TriggerRegisterPlayerUnitEventSimple(exptrg, Player(11), EVENT_PLAYER_UNIT_DEATH)
    set kexp=l__gk + 1
    return kexp
endfunction


    

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: initialize
//===========================================================================
//TESH.scrollpos=21
//TESH.alwaysfold=0
function Trig_initializeActions takes nothing returns nothing
    local integer i=0
    call InitHashtables()
    set gk=InitBulletSystem(gk)
    set gk=InitDestroyTriggerAll(gk)
    set gk=InitRightClickShootSystem(gk)
    set gk=InitLeapSystem(gk)
    set gk=((gk)) // INLINED!!
    set gk=InitDropSystem(gk)
    call DropItem(droene , 'I000' , 10 , 1 , GetPlayableMapRect() , 8)
    set gk=InitEnergyLowSystem(gk)
    call InitAnyUnitSpellEffect()
    call InitAnyUnitSpellChannel()
    set gk=InitNade(gk)
    set gk=InitReviveSystem(gk)
    set gk=((gk)) // INLINED!!
    set gk=InitChangeSystem()
    set gk=InitMeleeSystem(gk)
    set gk=InitJiaSuDuSystem(gk)
    set gk=InitSpawnSystem(gk)
    call InitOriginSequeuce()
    set gk=InitAI(gk)
    set gk=InitSpellAI(gk)
    set gk=InitAfterSpell(gk)
    set gk=InitPoisonBuff(gk)
    //call InitPoisonAbility()
    set gk=InitPoisonBreath(gk)
    set gk=InitTechDialog(gk)
    set gk=InitExpSystem(gk)
    set gk=InitEnergySystem(gk)
    set gk=InitLostLifeSystem(gk)
    set gk=InitLifeLowSystem(gk)
    call TriggerAddCondition(gg_trg_Lose, Condition(function LoseCondition)) // INLINED!!
    
    call CreateFogModifierRectBJ(true, Player(11), FOG_OF_WAR_VISIBLE, GetPlayableMapRect())
    call SaveInteger(ht, 'u000', kbulris, 6)
    call SaveInteger(ht, 'z000', kbulris, 3)
    call SaveInteger(ht, 'z001', kbulris, 10)
    call SaveInteger(ht, 'u001', kbulris, 20)
    call SaveReal(ht, 'u001', kmris, 10)
    call SaveInteger(ht, ('u000' ), kexp, ( 2)) // INLINED!!
    call SaveInteger(ht, ('u001' ), kexp, ( 10)) // INLINED!!
    call SaveInteger(ht, ('z000' ), kexp, ( 2)) // INLINED!!
    call SaveInteger(ht, ('z001' ), kexp, ( 10)) // INLINED!!
    
    set udg_orirct[0]=gg_rct_origin0
    set udg_orirct[1]=gg_rct_origin1
    set udg_orirct[2]=gg_rct_origin2
    set udg_orirct[3]=gg_rct_origin3
    
    loop
    exitwhen i > 3
    if GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING then
        call SetCameraFieldForPlayer(Player(i), CAMERA_FIELD_TARGET_DISTANCE, 2500.00, 0.50)
        call CreateFogModifierRectBJ(true, Player(i), FOG_OF_WAR_VISIBLE, GetPlayableMapRect())
        set udg_hero[i]=CreateUnit(Player(i), 'h000', GetRectCenterX(udg_orirct[i]), GetRectCenterY(udg_orirct[i]), 0)
        call RegisterShootSystem(udg_hero[i])
        call RegisterLeapRecoder(udg_hero[i])
        call RegisterEnergyLow(udg_hero[i])
        call TriggerRegisterUnitLifeEvent(lifelowtrg, (udg_hero[i]), LESS_THAN, 2) // INLINED!!
        call RegisterReviveSystem(udg_hero[i])
        call AddPlayerTechResearched(Player(i), 'R000', 1)
        call OpenLiveTechForPlayer(Player(i))
        call RegisterMelee(udg_hero[i])
        call RegisterExpSystem(Player(i))
        call RegisterEnergyConsume(udg_hero[i])
        call RegisterLostLife(udg_hero[i])
        call TriggerRegisterUnitEvent(gg_trg_cantmove, udg_hero[i], EVENT_UNIT_ISSUED_TARGET_ORDER)
        call TriggerRegisterUnitEvent(gg_trg_cantmove, udg_hero[i], EVENT_UNIT_ISSUED_POINT_ORDER)
    endif
    set i=i + 1
    endloop
    
    call StartOriginalSequence()
    
endfunction

//===========================================================================
function InitTrig_initialize takes nothing returns nothing
    set gg_trg_initialize=CreateTrigger()
    call TriggerAddAction(gg_trg_initialize, function Trig_initializeActions)
endfunction

//===========================================================================
// Trigger: camera
//===========================================================================
function Trig_cameraActions takes nothing returns nothing
    call SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, 2500.00, 0.50)
endfunction

//===========================================================================
function InitTrig_camera takes nothing returns nothing
    set gg_trg_camera=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(gg_trg_camera, Player(0), ".c1", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_camera, Player(1), ".c1", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_camera, Player(2), ".c1", true)
    call TriggerRegisterPlayerChatEvent(gg_trg_camera, Player(3), ".c1", true)
    call TriggerAddAction(gg_trg_camera, function Trig_cameraActions)
endfunction

//===========================================================================
// Trigger: bordercontrol
//===========================================================================
function Trig_bordercontrolActions takes nothing returns nothing
    call RemoveUnit(GetTriggerUnit())
endfunction

//===========================================================================
function InitTrig_bordercontrol takes nothing returns nothing
    set gg_trg_bordercontrol=CreateTrigger()
    call YDWETriggerRegisterLeaveRectSimpleNull(gg_trg_bordercontrol , GetPlayableMapRect())
    call TriggerAddAction(gg_trg_bordercontrol, function Trig_bordercontrolActions)
endfunction

//===========================================================================
// Trigger: EnemyBugSystem2
//===========================================================================
function Trig_EnemyBugSystem2Conditions takes nothing returns boolean
    return ( ( IsUnitEnemy(GetTriggerUnit(), Player(0)) == true ) )
endfunction

function Trig_EnemyBugSystem2Actions takes nothing returns nothing
    call UnitAddAbility(GetTriggerUnit(), 'Aloc')
    call ShowUnitHide(GetTriggerUnit())
    call UnitRemoveAbility(GetTriggerUnit(), 'Aloc')
    call ShowUnitShow(GetTriggerUnit())
endfunction

//===========================================================================
function InitTrig_EnemyBugSystem2 takes nothing returns nothing
    set gg_trg_EnemyBugSystem2=CreateTrigger()
    call YDWETriggerRegisterEnterRectSimpleNull(gg_trg_EnemyBugSystem2 , GetPlayableMapRect())
    call TriggerAddCondition(gg_trg_EnemyBugSystem2, Condition(function Trig_EnemyBugSystem2Conditions))
    call TriggerAddAction(gg_trg_EnemyBugSystem2, function Trig_EnemyBugSystem2Actions)
endfunction

//===========================================================================
// Trigger: cantmove
//===========================================================================
function Trig_cantmoveConditions takes nothing returns boolean
    return ( ( ( GetIssuedOrderIdBJ() == String2OrderIdBJ("smart") ) or ( GetIssuedOrderIdBJ() == String2OrderIdBJ("move") ) or ( GetIssuedOrderIdBJ() == String2OrderIdBJ("patrol") ) ) and ( GetUnitAbilityLevel(GetTriggerUnit(), 'A008') >= 1 ) )
endfunction

function Trig_cantmoveActions takes nothing returns nothing
    call IssueImmediateOrderById(GetTriggerUnit(), 851972)
    call PauseUnit(GetTriggerUnit(), true)
    call PauseUnit(GetTriggerUnit(), false)
endfunction

//===========================================================================
function InitTrig_cantmove takes nothing returns nothing
    set gg_trg_cantmove=CreateTrigger()
    call TriggerAddCondition(gg_trg_cantmove, Condition(function Trig_cantmoveConditions))
    call TriggerAddAction(gg_trg_cantmove, function Trig_cantmoveActions)
endfunction

//===========================================================================
// Trigger: DeathEffect
//===========================================================================
function Trig_DeathEffectActions takes nothing returns nothing
    call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodFootman.mdl", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit())))
endfunction

//===========================================================================
function InitTrig_DeathEffect takes nothing returns nothing
    set gg_trg_DeathEffect=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_DeathEffect, Player(11), EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddAction(gg_trg_DeathEffect, function Trig_DeathEffectActions)
endfunction

//===========================================================================
// Trigger: UpDialog
//===========================================================================
function Trig_UpDialogActions takes nothing returns nothing
    local integer id=GetPlayerId(GetTriggerPlayer())
    call DialogDisplay(GetTriggerPlayer(), td[id], true)
endfunction

//===========================================================================
function InitTrig_UpDialog takes nothing returns nothing
    set gg_trg_UpDialog=CreateTrigger()
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_UpDialog, Player(0))
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_UpDialog, Player(1))
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_UpDialog, Player(2))
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_UpDialog, Player(3))
    call TriggerAddAction(gg_trg_UpDialog, function Trig_UpDialogActions)
endfunction

//===========================================================================
// Trigger: Lose
//===========================================================================
function Trig_LoseActions takes nothing returns nothing
endfunction

//===========================================================================
function InitTrig_Lose takes nothing returns nothing
    set gg_trg_Lose=CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(gg_trg_Lose, 10.00)
    call TriggerAddAction(gg_trg_Lose, function Trig_LoseActions)
endfunction

//===========================================================================
// Trigger: Win
//===========================================================================
function Trig_WinConditions takes nothing returns boolean
    return ( ( GetPlayerState(Player(11), PLAYER_STATE_RESOURCE_FOOD_USED) == 0 ) and ( udg_oriid > 1500 ) )
endfunction

function Trig_WinActions takes nothing returns nothing
    call Win()
endfunction

//===========================================================================
function InitTrig_Win takes nothing returns nothing
    set gg_trg_Win=CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(gg_trg_Win, 10.00)
    call TriggerAddCondition(gg_trg_Win, Condition(function Trig_WinConditions))
    call TriggerAddAction(gg_trg_Win, function Trig_WinActions)
endfunction

//===========================================================================
// Trigger: Leave
//===========================================================================
function Trig_LeaveActions takes nothing returns nothing
    local integer i=0
    local integer id=GetPlayerId(GetTriggerPlayer())
    call RemoveUnit(udg_hero[id])
    loop
    exitwhen i > 3
    call DisplayTextToPlayer(Player(i), 0, 0, GetPlayerName(GetTriggerPlayer()) + " 离开了游戏!")
    set i=i + 1
    endloop
endfunction

//===========================================================================
function InitTrig_Leave takes nothing returns nothing
    set gg_trg_Leave=CreateTrigger()
    call TriggerRegisterPlayerEventLeave(gg_trg_Leave, Player(0))
    call TriggerRegisterPlayerEventLeave(gg_trg_Leave, Player(1))
    call TriggerRegisterPlayerEventLeave(gg_trg_Leave, Player(2))
    call TriggerRegisterPlayerEventLeave(gg_trg_Leave, Player(3))
    call TriggerAddAction(gg_trg_Leave, function Trig_LeaveActions)
endfunction

//===========================================================================
// Trigger: leap
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
function Trig_leapConditions takes nothing returns boolean
    return ( ( GetSpellAbilityId() == 'A000' ) )
endfunction

function Trig_leapActions takes nothing returns nothing
    local unit u=GetTriggerUnit()
    local integer dec=GetHandleId(u)
    local real lx=LoadReal(ht, dec, kleapx)
    local real ly=LoadReal(ht, dec, kleapy)
    local real dir=Atan2(ly - GetUnitY(u), lx - GetUnitX(u))
    call YDWEJumpTimer(u , dir * bj_RADTODEG , 400.00 , 0.50 , 0.03 , 150.00)
    set u=null
endfunction

//===========================================================================
function InitTrig_leap takes nothing returns nothing
    set gg_trg_leap=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_leap, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_leap, Condition(function Trig_leapConditions))
    call TriggerAddAction(gg_trg_leap, function Trig_leapActions)
endfunction

//===========================================================================
// Trigger: energy
//===========================================================================
function Trig_energyConditions takes nothing returns boolean
    return ( ( GetItemTypeId(GetManipulatedItem()) == 'I000' ) )
endfunction

function Trig_energyActions takes nothing returns nothing
    call RemoveItem(GetManipulatedItem())
endfunction

//===========================================================================
function InitTrig_energy takes nothing returns nothing
    set gg_trg_energy=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_energy, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(gg_trg_energy, Condition(function Trig_energyConditions))
    call TriggerAddAction(gg_trg_energy, function Trig_energyActions)
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_initialize()
    call InitTrig_camera()
    call InitTrig_bordercontrol()
    call InitTrig_EnemyBugSystem2()
    call InitTrig_cantmove()
    call InitTrig_DeathEffect()
    call InitTrig_UpDialog()
    call InitTrig_Lose()
    call InitTrig_Win()
    call InitTrig_Leave()
    call InitTrig_leap()
    call InitTrig_energy()
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_initialize)
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call ForcePlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), false)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call ForcePlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(1), false)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)

    // Player 2
    call SetPlayerStartLocation(Player(2), 2)
    call ForcePlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(2), false)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)

    // Player 3
    call SetPlayerStartLocation(Player(3), 3)
    call ForcePlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(3), false)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)

    // Player 11
    call SetPlayerStartLocation(Player(11), 4)
    call SetPlayerColor(Player(11), ConvertPlayerColor(11))
    call SetPlayerRacePreference(Player(11), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(11), false)
    call SetPlayerController(Player(11), MAP_CONTROL_COMPUTER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_072
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerTeam(Player(2), 0)
    call SetPlayerTeam(Player(3), 0)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)

    // Force: TRIGSTR_073
    call SetPlayerTeam(Player(11), 1)

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount(0, 3)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 2, 3, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(1, 3)
    call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 2, 3, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(2, 3)
    call SetStartLocPrio(2, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 2, 3, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(3, 3)
    call SetStartLocPrio(3, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 1, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 2, 2, MAP_LOC_PRIO_HIGH)
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    local weathereffect we
    call SetCameraBounds(- 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCDalaran\\DNCDalaranTerrain\\DNCDalaranTerrain.mdl", "Environment\\DNC\\DNCDalaran\\DNCDalaranUnit\\DNCDalaranUnit.mdl")
    call SetTerrainFogEx(0, 0.0, 10000.0, 0.100, 0.000, 0.000, 0.000)
    set we=AddWeatherEffect(Rect(- 4096.0, - 4096.0, 4096.0, 4096.0), 'RAhr')
    call EnableWeatherEffect(we, true)
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("DalaranDay")
    call SetAmbientNightSound("DalaranNight")
    call SetMapMusic("Music", true, 0)
    call CreateRegions()
    call CreateAllUnits()
    call InitBlizzard()

call ExecuteFunc("InitializeYD")

    call InitGlobals()
    call InitCustomTriggers()
    call ConditionalTriggerExecute(gg_trg_initialize) // INLINED!!

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName("TRIGSTR_010")
    call SetMapDescription("TRIGSTR_012")
    call SetPlayers(5)
    call SetTeams(5)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)

    call DefineStartLocation(0, 0.0, - 256.0)
    call DefineStartLocation(1, 0.0, - 256.0)
    call DefineStartLocation(2, 0.0, - 256.0)
    call DefineStartLocation(3, 0.0, - 256.0)
    call DefineStartLocation(4, 0.0, - 256.0)

    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction










//===========================================================================  
//===========================================================================  
//�Զ����¼� 
//===========================================================================
//===========================================================================   








//===========================================================================
//��Ծϵͳ 
//===========================================================================





//Struct method generated initializers/callers:

