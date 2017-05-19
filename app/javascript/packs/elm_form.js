import Elm from './MyForm'

document.addEventListener('DOMContentLoaded', () => {
  const target = document.getElementById('elm-form-container')

  const element = document.querySelector('meta[name="csrf-token"]');
  const csrfToken = element && element.getAttribute("content");

  Elm.MyForm.embed(target, { csrfToken: csrfToken })
})
