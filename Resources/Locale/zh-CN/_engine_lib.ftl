# 引擎语法函数的 zh-CN 覆盖（引擎侧定义在 RobustToolbox/Resources/Locale/en-US/_engine_lib.ftl）。
# 中文没有冠词和动词变位；这些覆盖保证 zh 消息里残留的语法函数输出自然中文，
# 而回退到 en-US 的消息仍走引擎自带的英文版本。

# THE() 函数内部使用。中文无定冠词，直接输出名称。
zzzz-the = { $ent }

# SUBJECT() 函数内部使用。
zzzz-subject-pronoun = { GENDER($ent) ->
    [male] 他
    [female] 她
    [epicene] TA
   *[neuter] 它
   }

# OBJECT() 函数内部使用。中文宾格与主格同形。
zzzz-object-pronoun = { GENDER($ent) ->
    [male] 他
    [female] 她
    [epicene] TA
   *[neuter] 它
   }

# DAT-OBJ() 函数内部使用。
zzzz-dat-object = { GENDER($ent) ->
    [male] 他
    [female] 她
    [epicene] TA
   *[neuter] 它
   }

# GENITIVE() 函数内部使用。
zzzz-genitive = { GENDER($ent) ->
    [male] 他的
    [female] 她的
    [epicene] TA的
   *[neuter] 它的
   }

# POSS-PRONOUN() 函数内部使用。
zzzz-possessive-pronoun = { GENDER($ent) ->
    [male] 他的
    [female] 她的
    [epicene] TA的
   *[neuter] 它的
   }

# POSS-ADJ() 函数内部使用。
zzzz-possessive-adjective = { GENDER($ent) ->
    [male] 他的
    [female] 她的
    [epicene] TA的
   *[neuter] 它的
   }

# REFLEXIVE() 函数内部使用。
zzzz-reflexive-pronoun = { GENDER($ent) ->
    [male] 他自己
    [female] 她自己
    [epicene] TA自己
   *[neuter] 它自己
   }

# CONJUGATE-BE() 函数内部使用。中文无系动词变位。
zzzz-conjugate-be = 是

# CONJUGATE-HAVE() 函数内部使用。
zzzz-conjugate-have = 有

# CONJUGATE-BASIC() 函数内部使用。中文动词无单复数变化，两个参数应传同一个中文动词。
zzzz-conjugate-basic = { $first }
