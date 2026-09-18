# TODO[新增] 值
-edible-satiated = { $satiated ->
    [true] {" "}You don't feel like you could { $verb } any more.
  *[false] {""}
}

# TODO[改动] 值
edible-nom = Nom. {$flavors}{ -edible-satiated(satiated: $satiated, verb: "eat") }

# TODO[改动] 值
edible-slurp = Slurp. {$flavors}{ -edible-satiated(satiated: $satiated, verb: "drink") }

# TODO[改动] 值
edible-swallow = You swallow { THE($food) }.{ -edible-satiated(satiated: $satiated, verb: "swallow") }

# TODO[改动] 值
edible-force-feed-success = {CAPITALIZE(THE($user))} forced you to {$verb} something! {$flavors}{ -edible-satiated(satiated: $satiated, verb: $verb) }
