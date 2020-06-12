var templateFoto = '<img src="{{FOTO}}" width="100%"> ';
var templateBio  = '<h3> {{NOME}} </h3>'+
                   '<p> '+
                   '<strong>RACF :</strong> {{RACF}} <br>'+
                   '<strong>EMAIL:</strong> {{EMAIL}} <br>'+
                   '<strong>DEPTO:</strong> {{DEPARTAMENTO}}'+
                   '</p>'+
                   '<p> <STRONG> Computador </STRONG>'+
                   'Num Serie {{NUMSERIE}} <br>'+
                   'Descricao: {{DESCRICAO}} <br>'+
                   'Conector REDE: {{CONECTOR}} </p>';


function mostrarPerfil(){
    var userTxt = localStorage.getItem("userVlan");
    if (!userTxt){
        window.location = "login.html";  // não tenho o "token", vou pro index
    }

    var user = JSON.parse(userTxt); // converti o texto para um objeto javascript
    console.log(user);
    // a idéia aqui é preencher as coisas

    // foto
    var strFoto = templateFoto.replace("{{FOTO}}",user.linkFoto);
    document.getElementById("fotoUser").innerHTML = strFoto;

    // bio
    var strBio = templateBio.replace("{{NOME}}", user.nome)
                            .replace("{{RACF}}", user.racf)
                            .replace("{{EMAIL}}", user.email)
                            .replace("{{DEPARTAMENTO}}",user.departamento.nome)
                            .replace("{{NUMSERIE}}",user.computador.numSerie)
                            .replace("{{DESCRICAO}}",user.computador.descricao)
                            .replace("{{CONECTOR}}",user.computador.conectorRede);
                
    document.getElementById("bioUser").innerHTML = strBio;

    var i, arrayLen;
    arrayLen = user.bancoAlteracao.length;
    console.log(arrayLen);
    for(i = 0; i < arrayLen; i++){
      document.getElementById("arrayVlanAntiga").innerHTML += user.bancoAlteracao[i].vlanOld + '<br>';
    }
    for(i = 0; i < arrayLen; i++){
      document.getElementById("arrayVlanNova").innerHTML += user.bancoAlteracao[i].vlanNew + '<br>';
    }

} 

function logout(){
    localStorage.removeItem("userVlan");
    window.location = "login.html";
}
