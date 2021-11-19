module FormFields = %lenses(
  type state = {
    oldPwd: string,
    newPwd: string,
    confirmPwd: string,
  }
)

include ReForm.Make(FormFields)

let initialState: FormFields.state = {
  oldPwd: "",
  newPwd: "",
  confirmPwd: "",
}

let default = () => {
  let pwdChange = "/assets/icons/cadeado.svg"
  let inputClassName = "placeholder-blue-300 rounded-full py-5 px-6 w-1/5 text-center"

  <div className="flex flex-col space-y-3 text-blue-700 justify-center items-center">
    <input placeholder="Digite a senha antiga" type_="password" className={inputClassName} />
    <input placeholder="Digite a senha nova" type_="password" className={inputClassName} />
    <input
      placeholder="Digite novamente a senha nova" type_="password" className={inputClassName}
    />
    <Button label="Salvar Senha" onClick={_e => ()} icon={pwdChange} />
  </div>
}
