
module FormFields = %lenses(
  type state = {
    password: string,
    cpf: string,
  }
)
module UserForm = ReForm.Make(FormFields)

@react.component
let default = (~password,~cpf) => {
  let form: UserForm.api = UserForm.use(
    ~validationStrategy=OnChange,
    ~onSubmit={
      state => {
        Js.log(state.state)

        None
      }
    },
    ~initialState={
      password: "",
      cpf:"000",
    },
    ~schema={
      open UserForm.Validation
      Schema(nonEmpty(Password) + cpf(99))
    },
    (),
  )
  <form
    onSubmit={event => {
      ReactEvent.Synthetic.preventDefault(event)
      form.submit()
    }}>
    <div className="login-page">
      <div className="form">
        <form className="login-form">
          <input
            value={form.values.cpf}
            onChange={event => onChange((event->ReactEvent.Form.target)["value"])}
            type_="text"
            placeholder="CPF"
          />
          <input 
          placeholder="SENHA"
          value={form.values.password}
          onChange={evt => onChange((event->ReactEvent.Form.target)["value"])}
          type_="password" />
          
          <button type_="submit" disabled={form.formState === Submitting}>
            {`Acessar`->React.string}
          </button>
        </form>
      </div>
    </div>
  </form>
}
