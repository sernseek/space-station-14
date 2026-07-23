### Interaction Messages

# System

## When trying to ingest without the required utensil... but you gotta hold it
ingestion-you-need-to-hold-utensil = 你需要手持 {$utensil} 才能吃那个！

ingestion-try-use-is-empty = {CAPITALIZE(THE($entity))}是空的！
ingestion-try-use-wrong-utensil = 你不能用 {$utensil} 对 {THE($food)} 进行“{$verb}”！

ingestion-remove-mask = 你需要先摘下 {$entity}。

## Failed Ingestion

ingestion-you-cannot-ingest-any-more = 你不能再{$verb}了！
ingestion-other-cannot-ingest-any-more = {CAPITALIZE($target)}不能再{$verb}了！

ingestion-cant-digest = 你无法消化 {THE($entity)}！
ingestion-cant-digest-other = {CAPITALIZE($target)}无法消化 {THE($entity)}！

## Action Verbs, not to be confused with Verbs

ingestion-verb-food = 吃
ingestion-verb-drink = 喝

# Edible Component

edible-nom = 嚼嚼。{$flavors}
edible-nom-other = 嚼嚼。
edible-slurp = 吸溜。{$flavors}
edible-slurp-other = 吸溜。
edible-swallow = 你吞下了 { THE($food) }
edible-gulp = 咕嘟。{$flavors}
edible-gulp-other = 咕嘟。

edible-has-used-storage = { THE($food) } 里面装着物品，无法{$verb}。

## Nouns

edible-noun-edible = 可食用物
edible-noun-food = 食物
edible-noun-drink = 饮料
edible-noun-pill = 药丸

## Verbs

edible-verb-edible = 食用
edible-verb-food = 吃
edible-verb-drink = 喝
edible-verb-pill = 吞服

## Force feeding

edible-force-feed = {CAPITALIZE(THE($user))}正试图强迫你{$verb}某样东西！
edible-force-feed-success = {CAPITALIZE(THE($user))}强迫你{$verb}了某样东西！{$flavors}
edible-force-feed-success-user = 你成功喂食了 {THE($target)}
