# Tea-of-Pig
a mod named Tea of pig for DST


# Learning
https://cn-dst-developer.github.io/  

https://atjiu.github.io/dstmod-tutorial/#/

### bat files

|bat|description|remarks|
---|---|---
init.bat|init a mod project
compile.bat|
debug.bat|
c_prefabs.bat|faster to create a prefab

### structure
|path|description|remarks|
---|---|---
exported|all of animations. ps: things on the floot that is an animation as well.|create an animation is tedious, we talk them later.
images|all of icons(PNG).
languages|
scripts/prefabs|all of prefabs.
scripts/recipes|if one prefab is a recipe, create a file to write code.
scripts/assets.lua|load prefabs and other assets.
scripts/ingredient_values.lua|modify ingredients which are things from the orignial game.


# �����ֲ�

From [here](https://github.com/CN-DST-DEVELOPER/DST_Handbook/blob/main/FastHandbook.md)


### MOD�����ļ��нṹ


| ·����                      | ����                                                     |
| :---------------------------- | :--------------------------------------------------------- |
| ./images/                   | һЩ������ͼ                                             |
| ./images/inventoryimages/   | ��Ʒ����ͼ                                               |
| ./images/map_icons/         | С��ͼͼ��                                               |
| ./images/colour_cubes/      | �˾�                                                     |
| ./anim/                     | �����Ķ����ļ�                                         |
| ./export/                   | δ����Ķ����ļ�                                         |
| ./scripts/                  | ���нű�һ�㶼��������                                   |
| ./scripts/brains/           | AI��ش���                                               |
| ./scripts/components/       | �Զ������Ŀ¼                                           |
| ./scripts/prefabs/          | ģ����ӵ�ȫ�����壬���������Ʒ��buff��               |
| ./scripts/stategraphs/      | �Զ���Ķ���ͼ                                           |
| ./scripts/widgets/          | �Զ��崰����ؽű�                                       |
| ./modinfo.lua               | ��Ϸ��ģ����ܼ�ģ�����ö�������                         |
| ./modmain.lua               | ģ��������                                             |
| ./modworldgenmain.lua       | ����MODʱ���У����ȼ���modmain�ߣ�����������޸��������� |
| ./modservercreationmain.lua | ��ʱ��modworldgenmain�������ƣ���ֻ���ڷ���������        |


### ���ùٷ����������

- ȫ�ֺ���


  | ������                     | ����                                                                                                                            |
  | ---------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
  | SpawnPrefab                | ����һ��ʵ�壬���ض����ʵ�������                                                                                              |
  | AddStategraphState         | ��Ӷ���ͼ���Զ����stategraphs��Ҫ��modmain������������Żᱻ����                                                              |
  | modimport                  | ������һ��lua�ļ�������ִ�У��ļ��ڵ�return�������������أ������ص��ļ��뵱ǰ�ļ����û���                                       |
  | CreateEntity               | ���һ��ʵ�壬�����Զ���prefab                                                                                                  |
  | MakeHauntableLaunch        | ����Ʒ���Ա����ֹ�                                                                                                            |
  | AddMinimapAtlas            | ����С��ͼͼ�֮꣬��ſ�����prefab�а�                                                                                        |
  | GetModConfigData           | ��ȡmod����ҳ�����ã�ֻ������modmain����modworldgenmain�е���                                                                   |
  | AddModCharacter            | ��һ��ʵ������Ϊ����                                                                                                            |
  | AddReplicableComponent     | ����һ�����Ϊreplica���������_replica��׺������������ͻ�ͬʱ���ڣ�������׺�����ֻ�������������AddComponentֻ��Ҫ���������� |
  | AddRecipe                  | ���һ���Զ��������䷽                                                                                                          |
  | AddRecipeTab               | ���һ���Զ����䷽��                                                                                                            |
  | SetSharedLootTable         | ���ù��õĵ�����Ʒ��                                                                                                            |
  | GetTime                    | ��ȡ��ǰʱ���                                                                                                                  |
  | AddStategraphActionHandler | ���Զ��嶯��ͼ�붯����                                                                                                        |
  | AddComponentAction         | ����Զ��嶯��                                                                                                                  |
  | SpawnSaveRecord            | ����һ��ʵ�壬����������Ϊ����浵�����е�״̬                                                                                  |
  | dumptable                  | ����һ��table����ӡ                                                                                                             |
  | UserToPlayer               | ��useridתΪplayerʵ��                                                                                                          |
  | AddCookerRecipe            | ����Զ���ʳ��                                                                                                                  |

  ���⣬�ٷ��ṩ�Ĵ󲿷�ģ�麯����```modutil.lua```�ļ��У��ϱ�ȫ������������ѧ��չ��ʽ��```mathutil.lua```�У�ʵ����غ�����```entityscript.lua```�У�ƽ�����ɺ�����```easing.lua```�У�RPC�ຯ����`networkclientrpc.lua`��
- ����������������������ϸ�Ķ�Դ��


  | �����        | ����       | ���ù���                                 |
  | --------------- | ------------ | ------------------------------------------ |
  | health        | Ѫ�����   | ��Ѫ��Ѫ���������������޳ͷ��������˺��� |
  | sanity        | �������   |                                          |
  | hunger        | �������   | ���Ƽ����ٶ�                             |
  | armor         | �������   | ���׷��������;ã��;úľ��Ƿ�����       |
  | weapon        | �������   | ����������������������Ч                 |
  | inventory     | ��Ʒ����� |                                          |
  | inventoryitem | ��Ʒ���   | ʹʵ�����Ϊ��Ʒ������Ʒ����������       |
- <details><summary>�������</summary>
  <table><thead><tr><th><span>�����</span></th><th><span>����</span></th><th><span>���ù���</span></th></tr></thead><tbody><tr><td><span>birdspawner</span></td><td><span>�������ɵ�</span></td><td><span>�޸����ɵ��������͡�Ƶ�ʵ�</span></td></tr><tr><td><span>book</span></td><td><span>�鼮���</span></td><td><span>����Զ����鼮ʱ���ܻ���</span></td></tr><tr><td><span>builder</span></td><td><span>�������</span></td><td><span>����ҿ�������/������Ʒ�������������޸���ʵ��һ�����졢�ظ������</span></td></tr><tr><td><span>burnable</span></td><td><span>��ȼ���</span></td><td><span>������Ʒȼ��ʱ�䣬ð�������</span></td></tr><tr><td><span>childspawner</span></td><td><span>��Ѩ���</span></td><td><span>�󶨵���Ѩ�����Զ�����ʵ�壬�����ˡ�֩��ȣ������޸����������������ٶȡ�ʵ�����ࡢ��Ѩ������ʱ��ĳЩ��������</span></td></tr><tr><td><span>colourcube</span></td><td><span>�˾����</span></td><td><span>�Զ��弾�ڡ�ʱ�䡢���ϵ����˾�</span></td></tr><tr><td><span>combat</span></td><td><span>ս�����</span></td><td><span>���ù����˺�������������������롢����buff���Զ�ѡ��Ŀ���߼�</span></td></tr><tr><td><span>container</span></td><td><span>�������</span></td><td><span>�������Ӹ������ɷ�����Ʒ�жϣ��������Ƿ�ɶѵ��������Ƿ�ɴ�</span></td></tr><tr><td><span>cookable</span></td><td> </td><td><span>ʹһ��ʵ������ڻ������⿣�����������⿲�Ʒ����⿻ص�</span></td></tr><tr><td><span>cooldown</span></td><td><span>cd���</span></td><td><span>����ĳ�ֲ�������ȴʱ�䣬ÿ��ʵ��ͬʱֻ�ɼ���һ��cd</span></td></tr><tr><td><span>debuff</span></td><td><span>buff���</span></td><td><span>�����buff�ϣ�SetAttachedFn����buff��ʩ�ӵ�ʵ��ʱ�Ļص���SetDetachedFn����buff����ص���SetExtendedFn����buffδ����ʱ������һ����ͬbuff�����Ļص�</span></td></tr><tr><td><span>debuffable</span></td><td> </td><td><span>�����ʵ���ϣ�ʹ��ʵ����Ը���buff��Ӱ��</span></td></tr><tr><td><span>deployable</span></td><td> </td><td><span>ʹʵ����Ա���������ػ����������ò����Ƥ���͵�</span></td></tr><tr><td><span>drawable</span></td><td><span>�������</span></td><td><span>ʹһ��ʵ����Ա�"��"����Сľ��</span></td></tr><tr><td><span>drownable</span></td><td><span>��ˮ���</span></td><td> </td></tr><tr><td><span>dynamicmusic</span></td><td><span>�����������</span></td><td><span>��������/�޸Ĳ�ͬ���ڣ���ͬλ�õĻ����������ֻ��벻ͬ������սʱ������</span></td></tr><tr><td><span>eater</span></td><td> </td><td><span>ʹʵ����ԳԶ��������������ܳԵ�ʳƷ���ͣ��Ƿ���ԳԸ���ʳ��Զ���ʱ�Ļص���ϲ���Ե�ʳ������</span></td></tr><tr><td><span>edible</span></td><td> </td><td><span>���ʵ��Ϊ�ɳԣ���������ʳƷ��ά��ʳƷ���ͣ������µ�Ӱ��Ч��������ʱ�Ļص�</span></td></tr><tr><td><span>equippable</span></td><td> </td><td><span>ʹ��Ʒ��װ����������װ���ۣ�����/���µĻص���װ���������٣�����Ч������ˮЧ�������ǻظ�Ч��</span></td></tr><tr><td><span>finiteuses</span></td><td><span>�;����</span></td><td><span>������Ʒ���;ã�����ʹ�������;þ�</span></td></tr><tr><td><span>follower</span></td><td><span>������</span></td><td><span>ʹ������Ը�����������������õ��θ���������ʱ�䣬�Ƿ�������쵼��ս��</span></td></tr><tr><td><span>freezable</span></td><td> </td><td><span>���ñ�������</span></td></tr><tr><td><span>fuel</span></td><td> </td><td><span>ʹ��Ʒ��Ϊȼ�ϣ���������ȼ�����࣬ȼ��ֵ</span></td></tr><tr><td><span>fueled</span></td><td> </td><td><span>ʹʵ�����ȼ��ȼ�ϣ���������ȼ���ٶȣ�����ȼ�ϵ������</span></td></tr><tr><td><span>grogginess</span></td><td><span>�������</span></td><td><span>ʵ�屻����ʱ�����������й�</span></td></tr><tr><td><span>growable</span></td><td><span>�ɳ����</span></td><td><span>��Ҫ������ľ�������������ò�ͬ�����׶ε�����</span></td></tr><tr><td><span>harvestable</span></td><td> </td><td><span>��Ҫ���ڿ��ջ�Ľ���������䡢Ģ��ũ�����������ջ��Ʒ���ͣ�����ʱ��</span></td></tr><tr><td><span>healer</span></td><td> </td><td><span>ʹ��Ʒ�������������ơ���������������</span></td></tr><tr><td><span>healthtrigger</span></td><td> </td><td><span>��ӵ�ʵ���ϣ���ʵ������ֵ�ﵽһ���ٷֱ�ʱ������Ӧ�ص�</span></td></tr><tr><td><span>leader</span></td><td> </td><td><span>��follower�����ϣ�ʵ���쵼��������</span></td></tr><tr><td><span>locomotor</span></td><td><span>�ƶ����</span></td><td><span>ʵ���ƶ����Ǵ��ͣ��������ڴ��������Ҫ�ṩ���ָı����ٵķ���</span></td></tr><tr><td><span>machine</span></td><td> </td><td><span>ʹʵ�����Ϊ��������Ҫ�ṩ����/�رղ���</span></td></tr><tr><td><span>moisture</span></td><td><span>��ʪ���</span></td><td><span>�볱ʪ�����</span></td></tr><tr><td><span>perishable</span></td><td> </td><td><span>ʳ�︯�����</span></td></tr><tr><td><span>pickable</span></td><td> </td><td><span>�ɲ�ժ����Ʒ������ܲ�</span></td></tr><tr><td><span>plantable</span></td><td> </td><td><span>����ֲ����Ʒ�����ɹ�</span></td></tr><tr><td><span>playervision</span></td><td> </td><td><span>�������滻�����Ұ��ҹ�ӵȣ�Ҳ���滻����˾�</span></td></tr><tr><td><span>projectile</span></td><td><span>�������</span></td><td><span>Ͷ��Ʒ��������������</span></td></tr><tr><td><span>reader</span></td><td> </td><td><span>ʹ��ҿ��Զ���</span></td></tr><tr><td><span>rechargeable</span></td><td><span>�������</span></td><td><span>��Ҫ����װ��cd��</span></td></tr><tr><td><span>repairable</span></td><td> </td><td><span>ʹ��Ʒ���������ý�������������</span></td></tr><tr><td><span>repairer</span></td><td> </td><td><span>ʹ��Ʒ��Ϊ����Ʒ�����������Ŀ������</span></td></tr><tr><td><span>resistance</span></td><td> </td><td><span>����������Ǽ׵����˾����õ����</span></td></tr><tr><td><span>rider</span></td><td> </td><td><span>����ҿ�����ţ</span></td></tr><tr><td><span>sanityaura</span></td><td> </td><td><span>�����Ե�����ֵbuff�������ķ������������Χ��С</span></td></tr><tr><td><span>scaler</span></td><td> </td><td><span>����浵����ķŴ���С�����Ĭ��ֻ�������ѣ�ͨ��OnApplyScale�������Զ�����������</span></td></tr><tr><td><span>schoolspawner</span></td><td> </td><td><span>��Ⱥˢ�����</span></td></tr><tr><td><span>spawner</span></td><td> </td><td><span>���������ˢ��boss������ģ����������˵�</span></td></tr><tr><td><span>spellcaster</span></td><td><span>�������</span></td><td><span>ʹ��Ʒ���������ͷŷ������绽�·���</span></td></tr><tr><td><span>stackable</span></td><td><span>�ѵ����</span></td><td> </td></tr><tr><td><span>talker</span></td><td><span>�������</span></td><td><span>ʵ��˵��ʱͷ�ϵ�����С�֣�������ϸ�����ֺš����塢��ɫ��</span></td></tr><tr><td><span>timer</span></td><td><span>��ʱ�����</span></td><td><span>�����������ж������ʱ��ÿ����ʱ����ʱ����Ը��ӵ�ʵ�巢���¼��������ʱ��������浵����;�������＼��cd</span></td></tr><tr><td><span>tool</span></td><td><span>�������</span></td><td><span>��������Ʒ��ӹ��߹��ܣ����翳����</span></td></tr><tr><td><span>tradable</span></td><td> </td><td><span>ʹ��Ʒ�������������ӣ����廻��������������</span></td></tr><tr><td><span>trader</span></td><td><span>�������</span></td><td><span>ʹʵ���������ҽ��ף������þ��彻������</span></td></tr><tr><td><span>upgradeable</span></td><td><span>���������</span></td><td><span>ʹ��Ʒ������������Ʒ����</span></td></tr><tr><td><span>useableitem</span></td><td> </td><td><span>����Ʒ���Ա���ʹ�á������ľ��ñ</span></td></tr><tr><td><span>waterproofer</span></td><td> </td><td><span>ʹװ�����з�ˮЧ��</span></td></tr><tr><td><span>workable</span></td><td> </td><td><span>ʹ��Ʒ���Ա����ҡ�����������</span></td></tr><tr><td><span>writeable</span></td><td> </td><td><span>ʹ��Ʒ���Ա�д����ľ��</span></td></tr></tbody></table>
  </details>

### ���õ�������


| ����                          | ����                                                                                           |
| ------------------------------- | ------------------------------------------------------------------------------------------------ |
| c_godmode()                   | �ϵ�ģʽ/����                                                                                  |
| c_supergodmode()              | ͬc_godmode()������ ���������ά                                                               |
| c_freecrafting()              | ����ȫ���䷽���ϳɲ������                                                                     |
| c_reset()                     | ����(�ͻ���)/�ص����һ�δ浵(��������)                                                        |
| c_regenerateworld()           | ������������                                                                                   |
| c_spawn(prefab,num)           | ����괦����num��prefab                                                                        |
| c_give(prefab,num)            | ����num��ĳprefab                                                                              |
| c_despawn()                   | ��ѡ����                                                                                       |
| c_skip(num)                   | ����num��                                                                                      |
| c_removeall(prefab)           | ɾ��ȫ��prefab                                                                                 |
| c_gonext(prefab)              | ���͵���һ��prefab��                                                                           |
| c_armor()                     | ʹ����100%����                                                                               |
| c_save()                      | �����浵                                                                                       |
| c_select()                    | ѡ�е�ǰ����µ�ʵ���Ե��ԣ�����ֵΪʵ������á��ڿͻ��˵���ʱ�������ڵ��Բ�鿴ʵ��Ķ�����Ϣ |
| c_setmoisture(percent)        | ���ó�ʪ��                                                                                     |
| c_sethealth(percent)          | ����Ѫ��                                                                                       |
| c_setsanity(percent)          | ��������                                                                                       |
| c_sethunger(percent)          | ���ü�����                                                                                     |
| c_setminhealth(num)           | ����Ѫ�����ֵ����Ѫ��                                                                         |
| c_settemperature(num)         | ��������                                                                                       |
| c_connect(ip, port, password) | �ֶ����ӷ�����                                                                                 |

�������̨������`consolecommands.lua`��

### ����ҳ�������ʽ���

![img](assets/images/�����ı���ʽ.png)
