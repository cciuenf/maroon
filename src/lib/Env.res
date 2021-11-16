type env = {
  @as("FUSCHIA_HOST")
  fushciaHost: option<string>
}

@val @scope("process") external env: env = "env"

let apiHost = env.fushciaHost
