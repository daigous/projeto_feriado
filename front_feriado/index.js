function fazerLogin(){
    var txtLogin = document.getElementById("txtLogin").value;
    var txtSenha = document.getElementById("txtSenha").value;

    console.log("Digitou: "+txtLogin+"/"+txtSenha);

    // esse aqui é o corpo da mensagem que eu tenho q enviar para o back-end
    var msgBody = {
        racf : txtLogin,
        funcional : txtLogin,
        senha : txtSenha
    };

    // defino o cabeçalho indicando o método post, o corpo da requisição e o tipo JSON para ela
    var cabecalho = {
        method: "POST",
        body : JSON.stringify(msgBody),
        headers : {
            "content-type":"application/json"
        }
    };
    // faço acesso ao BackEnd enviando esse cabeçalho
    fetch("http://localhost:8088/login", cabecalho)
      .then(res => trataStatus(res));
}

function trataStatus(res){
    if (res.status == 200){
        res.json().then(usuario => efetivarLogin(usuario));
        //document.getElementById("resultado").innerHTML = "<h4>Usuario Conectado!</h4>";
    }
    else if (res.status == 404){
        document.getElementById("resultado").innerHTML = '<br><div class="alert alert-danger" role="alert"><b>Usuário não existe</b></div>';
    }
    else if (res.status == 401){
        document.getElementById("resultado").innerHTML = '<br><div class="alert alert-danger" role="alert"><b>Senha inválida</b></div>';
    }
    else{
        document.getElementById("resultado").innerHTML = '<br><div class="alert alert-danger" role="alert"><b>Erro desconhecido</b></div>';
    }
}

function efetivarLogin(usuario){
    // console.log(usuario);
    localStorage.setItem("userSF", JSON.stringify(usuario));
    window.location = "selecao.html";
}