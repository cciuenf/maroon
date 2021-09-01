open UserTypes

module Head = Next.Head

GlobalStyles.addStyles()

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
        <header> <h1> {`FIX ME`->React.string} </h1> </header>
        <main> children </main>
        <footer> <h1> {`FIX ME`->React.string} </h1> </footer>
      </UserProvider>
    </ReactQuery.Provider>
  </>
}
