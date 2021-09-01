// Define the type of the value we will put in context - pair of user and dispatch
type dispatch = UserTypes.userAction => unit
type contextValue = (UserTypes.user, dispatch)

let initValue: contextValue = (Guest, _ => ignore())

// Create the context that will hold the value
let context = React.createContext(initValue)

// Create hooks for ease of access to the context value
let useUser = () => React.useContext(context)

let handleStateChange = (authState: string, dispatchUserAction: dispatch) => {
  switch authState {
  | "signIn" => dispatchUserAction(UserTypes.LoggedOut)
  | "signedIn" => dispatchUserAction(UserTypes.LoggedIn)
  | _ => ()
  }
}
