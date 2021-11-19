type keys = [#token | #user_id]

let set = (key: keys, value) => LocalForage.setItem((key :> string), value)

let get = (key: keys) =>
  LocalForage.getItem((key :> string))->Promise.thenResolve(value => value->Js.Nullable.toOption)
