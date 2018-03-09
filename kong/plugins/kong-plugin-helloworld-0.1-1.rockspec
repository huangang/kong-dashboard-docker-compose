package = "kong-plugin-helloworld"
version = "0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
    url = "git://github.com/huangang/kong-dashboard-docker-compose",
    tag = "v0.1-1"
}
description = {
    summary = "Ankama - Kong plugin",
    license = "Apache 2.0",
    homepage = "https://github.com/huangang/kong-dashboard-docker-compose",
    detailed = [[
      Hello World - Kong plugin
  ]],
}
dependencies = {
}
build = {
    type = "builtin",
    modules = {
        ["kong.plugins.helloworld.access"] = "helloworld/access.lua",
        ["kong.plugins.helloworld.handler"] = "helloworld/handler.lua",
        ["kong.plugins.helloworld.schema"] = "helloworld/schema.lua",
    }
}