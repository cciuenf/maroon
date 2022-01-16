exception QueryClientError(Fetch.Response.t)

let validateRequestError = res => {
  switch res->Fetch.Response.status {
  | 401 => LocalForage.clear()->ignore
  | _ => ()
  }
  switch res->Fetch.Response.ok {
  | false => Promise.reject(QueryClientError(res))
  | true => Promise.resolve(res)
  }
}

let post = (~url, body) => {
  open Promise

  Storage.get(#token)->then(token =>
    Fetch.fetch(
      `${Env.apiHost}${url}`,
      {
        "method": "POST",
        "body": switch body {
        | Some(body) => Js.Json.stringifyAny(body)
        | None => Some("{}")
        },
        "headers": {
          "content-type": "application/json",
          "x-api-key": Env.apiKey,
          "authorization": switch token {
          | Some(token) => `Bearer ${token}`
          | None => ""
          },
        },
      },
    )
    ->then(validateRequestError)
    ->then(res => Fetch.Response.json(res))
  )
}

let get = (~url) => {
  open Promise

  Storage.get(#token)->then(token =>
    Fetch.fetch(
      `${Env.apiHost}${url}`,
      {
        "method": "GET",
        "headers": {
          "content-type": "application/json",
          "x-api-key": Env.apiKey,
          "authorization": switch token {
          | Some(token) => `Bearer ${token}`
          | None => ""
          },
        },
      },
    )
    ->then(validateRequestError)
    ->then(res => Fetch.Response.json(res))
  )
}
