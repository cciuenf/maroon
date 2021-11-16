module Option = Belt.Option

type env = {
  @as("FUSCHIA_HOST")
  fushciaHost: option<string>,
  @as("API_KEY")
  apiKey: option<string>,
}

@val @scope("process") external env: env = "env"

let apiHost = Option.getExn(env.fushciaHost)

let apiKey = Option.getExn(env.apiKey)
