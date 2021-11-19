type routes =
  | Landing
  | Signin
  | Signup
  | NotFound

let toString = route =>
  switch route {
  | Landing => "/"
  | Signin => "/acessar"
  | Signup => "/app/cadastrar"
  | NotFound => "/not-found"
  }

let routeFromUrl = (router: Next.Router.router) => {
  switch router.pathname {
  | "/" => Landing
  | "/acessar" => Signin
  | "/app/cadastrar" => Signup
  | _ => NotFound
  }
}

let push = (router: Next.Router.router, route: routes) => Next.Router.push(router, toString(route))

let useRouter = Next.Router.useRouter
