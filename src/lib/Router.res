type routes =
  | Landing
  | Signin
  | Signup
  | Profile(string)
  | NotFound

let toString = route =>
  switch route {
  | Landing => "/"
  | Signin => "/acessar"
  | Signup => "/app/cadastrar"
  | Profile(id) => `/app/perfil/${id}`
  | NotFound => "/not-found"
  }

let routeFromUrl = (router: Next.Router.router) =>
  switch router.pathname {
  | "/" => Landing
  | "/acessar" => Signin
  | "/app/cadastrar" => Signup
  | "/app/perfil" =>
    switch Js.Dict.get(router.query, "pid") {
    | Some(pid) => Profile(pid)
    | None => Profile("")
    }
  | _ => NotFound
  }

let push = (router: Next.Router.router, route: routes) => Next.Router.push(router, toString(route))

let useRouter = Next.Router.useRouter
