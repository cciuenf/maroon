module Option = Belt.Option

type env = {
  @as("NEXT_PUBLIC_FUSCHIA_HOST")
  fushciaHost: string,
  @as("NEXT_PUBLIC_API_KEY")
  apiKey: string,
}

@val @scope("process") external env: env = "env"

let apiHost = env.fushciaHost

let apiKey = env.apiKey
