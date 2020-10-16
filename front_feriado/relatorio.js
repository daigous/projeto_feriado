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

function carregaInfoRelatorio() {
    var userStr = localStorage.getItem("userSF");
    if (!userStr) {
        window.location = "index.html";
    }

    carregainfo()
    fetch("http://localhost:8088/agencias")
        .then(res => res.json())
        .then(lista => preencheComboBox(lista))
}

function preencheComboBox(lista) {

    var txtCombo = `<select id="txtAgencia" class="form-control">`;
    txtCombo = txtCombo + `<option value="-1"> TODOS OS FERIADOS </option>`;
    for (i = 0; i < lista.length; i++) {
        var agencia = lista[i];
        txtCombo = txtCombo + `<option value=${agencia.id}>${agencia.numero} - ${agencia.nome}</option>`;
    }
    txtCombo = txtCombo + `</select>`;
    document.getElementById("divAgencia").innerHTML = txtCombo;
}


function recuperarRelatorio() {
    var url = "http://localhost:8088/feriados";

    var idAgencia = document.getElementById("txtAgencia").value;
    if (idAgencia > 0) { // filtrei pelo id da agencia  - se for -1 eu recupero todos os feriados (já descrito na url)
        url = url + "/agencia/" + idAgencia;
    }

    fetch(url)
        .then(res => res.json())
        .then(lista => preencheRelatorio(lista));
}

function preencheRelatorio(lista) {

    if (lista.length == 0) {
        document.getElementById("relatorio").innerHTML = '<br><div class="alert alert-warning" role="alert">Nenhum feriado cadastrado para a agência selecionada.</div>';
        return;
    }

    var rel = "";
    var classe = "linhaPar"


    for (i = 0; i < lista.length; i++) {
        var feriado = lista[i];
        if (i % 2 == 0) {
            classe = "linhaPar";
        }
        else {
            classe = "linhaIpar";
        }

        rel = rel + `<div class="row  ${classe}">
                         <div class="col-2"> ${formataData(feriado.dataInicio)} </div>
                         <div class="col-2"> ${formataData(feriado.dataFim)} </div>
                         <div class="col-4"> ${feriado.nome} </div>
                         <div class="col-4"> ${feriado.agencia.numero} - ${feriado.agencia.nome} </div>
                    </div>`;


    }
    document.getElementById("relatorio").innerHTML = rel;
}

function formataData(dataOriginal) {
    var ano = dataOriginal.substr(0, 4);
    var mes = dataOriginal.substr(5, 2);
    var dia = dataOriginal.substr(8, 2);

    // console.log(dia+'/'+mes+'/'+ano);

    return dia + "/" + mes + "/" + ano;
}

function logout(){
    localStorage.removeItem("userSF");
    window.location = "index.html";
}

