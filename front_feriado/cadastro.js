function carregainfo(){
    var strUser = localStorage.getItem("userSF");
    if (!strUser){  // se as infos do usuário não existirem no LocalStorage, sinal que não foi logado, volta pro INDEX
        window.location = "index.html";
    }

    var user = JSON.parse(strUser); // só tô convertendo de STRING para OBJETO (pra facilitar)

    var imgUser  = `<img src="${user.linkFoto}" width="100%">`;
    var infoUser = `<h4>${user.nome}</h4>
                    <strong> Funcional: </strong> ${user.funcional} <br>
                    <strong> Email: </strong> ${user.email} <br>
                    <strong> Racf: </strong> ${user.racf}<br>`;

    document.getElementById("fotoUser").innerHTML = imgUser;
    document.getElementById("infoUser").innerHTML = infoUser;

}

function carregainfocadastro(){
    var userStr = localStorage.getItem("userSF");
    if (!userStr){
        window.location = "index.html";
    }

    carregainfo()

    fetch("http://localhost:8088/agencias")
       .then(res => res.json())
       .then(lista => preencheComboBox(lista))
       
}

function preencheComboBox(lista){

    var txtCombo = `<select id="txtAgencia" class="form-control" onfocus="limpaAlerta()">`;

    for (i=0; i<lista.length; i++){
        var agencia = lista[i];
        txtCombo = txtCombo + `<option value=${agencia.id}>${agencia.numero} - ${agencia.nome}</option>`;
    }
    txtCombo = txtCombo + `</select>`;
    document.getElementById("divAgencia").innerHTML = txtCombo;
}

function cadastrarFeriado(){
    var txtAgencia = document.getElementById("txtAgencia").value;
    var txtNome    = document.getElementById("txtNome").value;
    var txtDataIni = document.getElementById("txtDataInicial").value;
    var txtDataFim = document.getElementById("txtDataFim").value;

    if(!(txtAgencia && txtNome && txtDataIni && txtDataFim)){
        document.getElementById("alertaCadastro").innerHTML = `<br><div class="alert alert-danger" role="alert">Por favor, preencha todos os campos.</div>`;
        return;
    }

    var msgBody = {
        nome : txtNome,
        dataInicio : txtDataIni,
        dataFim    : txtDataFim,
        agencia : {
            id : parseInt(txtAgencia)
        }
    };

    var cabecalho = {
        method : "POST",
        body   : JSON.stringify(msgBody),
        headers : {
            "content-type" : "application/json"
        }
    };

    fetch("http://localhost:8088/feriados/novo", cabecalho)
        .then(res => trataResultado(res));
}

function trataResultado(res){
    if (res.status == 201) {
        document.getElementById("alertaCadastro").innerHTML = `<br><div class="alert alert-success" role="alert">Feriado cadastrado com sucesso!</div>`;
    }
    else{
        document.getElementById("alertaCadastro").innerHTML = `<br><div class="alert alert-danger" role="alert">Erro ao cadastrar feriado.</div>`;
    }
}

function logout(){
    localStorage.removeItem("userSF");
    window.location = "index.html";
}

function carregainfo(){
    var strUser = localStorage.getItem("userSF");
    if (!strUser){  // se as infos do usuário não existirem no LocalStorage, sinal que não foi logado, volta pro INDEX
        window.location = "index.html";
    }

    var user = JSON.parse(strUser); // só tô convertendo de STRING para OBJETO (pra facilitar)

    var imgUser  = `<img src="${user.linkFoto}" width="100%">`;
    var infoUser = `<h4>${user.nome}</h4>
                    <strong> Funcional: </strong> ${user.funcional} <br>
                    <strong> Email: </strong> ${user.email} <br>
                    <strong> Racf: </strong> ${user.racf}<br>`;

    document.getElementById("fotoUser").innerHTML = imgUser;
    document.getElementById("infoUser").innerHTML = infoUser;

}

function limpaAlerta(){
    document.getElementById("alertaCadastro").innerHTML = "";
}

