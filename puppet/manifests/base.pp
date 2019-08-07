stage { 'first':
    before => Stage['second'],
}

stage { 'second':
    before => Stage['main'],
}

class { "apt_get::update":
    stage  => first,
}

class { 'tools':
    stage => second,
}

include apt_get::update
include tools
include mongodb
