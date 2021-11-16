module FormFields = %lenses(
  type state = {
    password: string,
    cpf: string,
  }
)

include ReForm.Make(FormFields)

let initialState: FormFields.state = {
  password: "",
  cpf: "",
}

let useForm = use
