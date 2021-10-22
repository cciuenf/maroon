module FormFields = %lenses(
  type state = {
    password: string,
    cpf: string,
  }
)
module UserForm = ReForm.Make(FormFields)

let onSubmit = ({state}: UserForm.onSubmitAPI) => {
  Js.log(state.values)
  None
}

let initialState: FormFields.state = {
  password: "",
  cpf: "",
}

@react.component
let default = () => {
  let form: UserForm.api = UserForm.use(
    ~validationStrategy=OnChange,
    ~onSubmit,
    ~initialState,
    
    ~schema={
      open UserForm.Validation
      Schema(nonEmpty(Cpf) + nonEmpty(Password))
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
            onChange={ReForm.Helpers.handleChange(form.handleChange(FormFields.Cpf))}
            type_="text"
            placeholder="CPF"
          />
          <input
            placeholder="SENHA"
            onChange={ReForm.Helpers.handleChange(form.handleChange(FormFields.Password))}
            value={form.values.password}
            type_="password"
          />
          <button type_="submit" disabled={form.formState === Submitting}>
            {`Acessar`->React.string}
          </button>
        </form>
      </div>
    </div>
  </form>
}
