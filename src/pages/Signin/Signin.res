@react.component
let default = () => {
  let router = Router.useRouter()

  let {form, isLoading, error} = Signin_Hooks.useSignin(router)

  let hasInvalidFields = FormHelpers.hasInvalidFields(form.fieldsState)

  <form
    onSubmit={event => {
      ReactEvent.Synthetic.preventDefault(event)
      form.submit()
    }}>
    <input
      value={form.values.cpf}
      onChange={FormHelpers.getInputValue(form.handleChange(Cpf))}
      type_="text"
      placeholder="CPF"
    />
    <input
      placeholder="SENHA"
      onChange={FormHelpers.getInputValue(form.handleChange(Password))}
      value={form.values.password}
      type_="password"
    />
    <button type_="submit" disabled={hasInvalidFields || form.formState === Pristine || isLoading}>
      {`Acessar`->React.string}
    </button>
  </form>
}
