var {Given} = require('cucumber');
var {When} = require('cucumber');
var {Then} = require('cucumber');
var {expect} = require('chai');

Given('I go to losestudiantes home screen', () => {
  browser.url('/');
  if($('button=Cerrar').isDisplayed()) {
    $('button=Cerrar').click();
  }
});

When('I open the login screen', () => {
    const btnIngresar = $('button=Ingresar');
    btnIngresar.waitForExist(5000);
    btnIngresar.waitForDisplayed(5000);
    browser.waitUntil(() => btnIngresar.isClickable());
    btnIngresar.click();
});

When(/^I fill with (.*) and (.*)$/ , (email, password) => {
    var cajaLogIn = $('.cajaLogIn');
  
   var mailInput = cajaLogIn.$('input[name="correo"]');
   mailInput.click();
   mailInput.keys(email);
  
   var passwordInput = cajaLogIn.$('input[name="password"]');
   passwordInput.click();
   passwordInput.keys(password)
});

When('I try to login', () => {
  var cajaLogIn = $('.cajaLogIn');
  cajaLogIn.$('button=Ingresar').click();
});

When(/^I fill with (.*), (.*), (.*), (.*), (.*), (.*), (.*), (.*), (.*)$/ , (nombre, apellido, correo, idUniversidad, checkbox, idDepartamento, idPrograma, password, acepta) => {
    var cajaSignUp = $('.cajaSignUp');
    cajaSignUp.waitForExist(9000);
    cajaSignUp.waitForDisplayed(9000);

    var nombreInput = cajaSignUp.$('input[name="nombre"]');
    nombreInput.click();
    nombreInput.keys(nombre);

    var apellidoInput = cajaSignUp.$('input[name="apellido"]');
    apellidoInput.click();
    apellidoInput.keys(apellido);
    
    var correoInput = cajaSignUp.$('input[name="correo"]');
    correoInput.click();
    correoInput.keys(correo);

    var idUniversidadsel = cajaSignUp.$('select[name="idUniversidad"]');
    idUniversidadsel.click();
    idUniversidadsel.keys(idUniversidad);
    idUniversidadsel.click();
    
    if(checkbox){
        var checkboxsel = cajaSignUp.$('input[type="checkbox"]');
        checkboxsel.click();
    }
    
    if(idDepartamento){
      var idDepartamentosel = cajaSignUp.$('select[name="idDepartamento"]');
      idDepartamentosel.waitForExist(5000);
      idDepartamentosel.click();
      idDepartamentosel.keys(idDepartamento);
    }
    
    if(idPrograma){
      var idProgramasel = cajaSignUp.$('select[name="idPrograma"]');
      idProgramasel.waitForExist(5000);
      idProgramasel.click();
      idProgramasel.keys(idPrograma);
    }    
    
    var passwordInput = cajaSignUp.$('input[name="password"]');
    passwordInput.click();
    passwordInput.keys(password);

    if(acepta){
        var acepta = cajaSignUp.$('input[name="acepta"]');
        acepta.click();
    }
});

When('I try to register', () => {
    var cajaSignUp = $('.cajaSignUp');
    cajaSignUp.waitForExist(5000);
    cajaSignUp.$('button=Registrarse').click();
  });
  
Then('I expect to see {string}', error => {
   $('.aviso.alert.alert-danger').waitForDisplayed(8000);
   var alertText = browser.$('.aviso.alert.alert-danger').getText();
   expect(alertText).to.include(error);
});

Then('I expect to log in', () => {
    const btnAccunt = $("#cuenta");
    btnAccunt.waitForExist(10000);
 });

 Then('I expect to sign up', () => {
    $('.sweet-alert').waitForDisplayed(10000);
   var alertText = browser.$('.text-muted.lead').getText();
   expect(alertText).to.include('Verifica tu correo y activa tu cuenta');   
 });