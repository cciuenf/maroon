type signinError = InvalidLogin | UnexpectedError

type hookResult = {
  form: Signin_Form.api,
  isLoading: bool,
  error: option<signinError>,
}

type response = SigninCodec.response

module Router = Next.Router

let handleFetch = (payload: SigninCodec.request) => {
  open Promise

  QueryClient.post(~url="/login", Some(payload))->thenResolve(json => json->Jzon.decodeWith(SigninCodec.response))
}

let useSignin = (router) => {
  let (error, setError) = React.useState(_ => None)

  let handleSuccess = (result, _, _) => {
    open Promise

    switch result {
      | Ok({data}: response) =>
      Storage.set(#token, data.user.token)
      ->then(_ => {
        Router.push(router, "/app/profile")
        resolve()
      })
      ->ignore

    | Error(_) => setError(_ => Some(UnexpectedError))
    }

    Promise.resolve()
  }

  let handleError = (_, _, _) => {
    setError(_ => Some(InvalidLogin))
    Promise.resolve()
  }

  let {mutate: signinMutation, isLoading} = ReactQuery.useMutation(
    ReactQuery.mutationOptions(
      ~onSuccess=handleSuccess,
      ~onError=handleError,
      ~mutationKey="signin",
      ~mutationFn=handleFetch,
      (),
    ),
  )

  let onSubmit = ({state}: Signin_Form.onSubmitAPI) => {
    setError(_ => None)
    signinMutation(. {cpf: state.values.cpf, password: state.values.password}, None)

    None
  }

  let form = Signin_Form.useForm(
    ~validationStrategy=OnChange,
    ~onSubmit,
    ~initialState=Signin_Form.initialState,
    ~schema={
      open Signin_Form.Validation

      Schema(
        nonEmpty(~error="CPF is required", Cpf) +
        nonEmpty(~error="Password is required", Password) +
        string(~min=8, Password),
      )
    },
    (),
  )

  React.useEffect0(() => {
    open Promise

    Storage.get(#token)
    ->thenResolve(token =>
      switch token {
      | Some(_) => Router.push(router, "/app/profile")
      | None => ()
      }
    )
    ->ignore
    None
  })

  {form: form, isLoading: isLoading, error: error}
}