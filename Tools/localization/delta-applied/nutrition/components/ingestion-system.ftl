# TODO[新增] 值
-edible-satiated = { $satiated ->
    [true] {" "}你感觉自己已经吃不下任何东西了。
  *[false] {""}
}

# TODO[改动] 值
edible-nom = 嚼嚼。{$flavors}{ -edible-satiated(satiated: $satiated, verb: "eat") }

# TODO[改动] 值
edible-slurp = 吸溜。{$flavors}{ -edible-satiated(satiated: $satiated, verb: "drink") }

# TODO[改动] 值
edible-swallow = 你吞下了 { THE($food) }。{ -edible-satiated(satiated: $satiated, verb: "swallow") }

# TODO[改动] 值
edible-force-feed-success = {CAPITALIZE(THE($user))}强迫你{$verb}了某样东西！{$flavors}{ -edible-satiated(satiated: $satiated, verb: $verb) }
