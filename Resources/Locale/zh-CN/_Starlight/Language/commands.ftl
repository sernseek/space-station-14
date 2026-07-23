command-list-langs-desc = 列出当前实体此刻能够说的语言。
command-list-langs-help = 用法：{$command}
command-saylang-desc = 使用指定语言发送消息。你可以用语言名称或语言列表中的位置选择语言。
command-saylang-help = 用法：{$command} <语言 ID> <消息>。示例：{$command} GalacticCommon "Hello World!"。示例：{$command} 1 "Hello World!"
command-language-select-desc = 选择实体当前使用的语言。你可以使用语言名称或其在语言列表中的位置。
command-language-select-help = 用法：{$command} <语言 ID>。示例：{$command} 1。示例：{$command} GalacticCommon
command-language-spoken = 可说：
command-language-understood = 可理解：
command-language-current-entry = {$id}. {$language} - {$name}（当前）
command-language-entry = {$id}. {$language} - {$name}
command-language-invalid-number = 语言编号必须介于 0 和 {$total} 之间。也可改用语言名称。
command-language-invalid-language = 语言 {$id} 不存在，或你无法说这种语言。
# Toolshed

command-description-language-add = 为管道中的实体添加新语言。最后两个参数表示是否可说／可理解。示例：'self language:add "Canilunzt" true true'
command-description-language-rm = 从管道中的实体移除语言。用法与 language:add 类似。示例：'self language:rm "GalacticCommon" true true'。
command-description-language-lsspoken = 列出实体能说的所有语言。示例：'self language:lsspoken'
command-description-language-lsunderstood = 列出实体能理解的所有语言。示例：'self language:lssunderstood'
command-description-translator-addlang = 为管道中的翻译器实体添加新的目标语言。详情参见 language:add。
command-description-translator-rmlang = 从管道中的翻译器实体移除目标语言。详情参见 language:rm。
command-description-translator-addrequired = 为管道中的翻译器实体添加新的必需语言。示例：'ent 1234 translator:addrequired "GalacticCommon"'
command-description-translator-rmrequired = 从管道中的翻译器实体移除必需语言。示例：'ent 1234 translator:rmrequired "GalacticCommon"'
command-description-translator-lsspoken = 列出管道中翻译器实体的所有输出语言。示例：'ent 1234 translator:lsspoken'
command-description-translator-lsunderstood = 列出管道中翻译器实体理解的所有语言。示例：'ent 1234 translator:lsunderstood'
command-description-translator-lsrequired = 列出管道中翻译器实体要求的所有语言。示例：'ent 1234 translator:lsrequired'
command-language-error-this-will-not-work = 这样行不通。
command-language-error-not-a-translator = 实体 {$entity} 不是翻译器。
