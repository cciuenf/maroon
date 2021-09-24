open UserTypes

let logo = "logo.png"
module Head = Next.Head

let queryClient = ReactQuery.Provider.createClient()

type state = {user: user}

let userReducer = (_, action) => {
  switch action {
  | LoggedIn => {user: Authenticated}
  | LoggedOut => {user: Guest}
  }
}

@react.component
let make = (~children) => {
  let (state, dispatch) = React.useReducer(userReducer, {user: Guest})

  <>
    <Head>
      <meta
        name="viewport"
        content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover"
      />
      <title> {"Kirby"->React.string} </title>
    </Head>
    <ReactQuery.Provider client={queryClient}>
      <UserProvider value=(state.user, dispatch)>
       <Header/>

        <main> children </main>
       
        <Footer />
      </UserProvider>
    </ReactQuery.Provider>
  </>
}
