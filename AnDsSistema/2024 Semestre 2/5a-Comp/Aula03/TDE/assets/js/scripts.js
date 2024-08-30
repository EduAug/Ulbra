const listContacts= [];
function load(){
    home()
    document.getElementById("home").addEventListener('click', home)
    document.getElementById("about").addEventListener('click', about)
    document.getElementById("contact").addEventListener('click', contact)
}

function home(){
    let main= document.getElementById("main")
    main.innerHTML= `
        <h1>Home</h1>
        <hr>
        <p>Home em SPA</p>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius quibusdam reiciendis officiis ipsam 
        <br>
        iusto nesciunt fuga et earum? Rerum repellendus expedita quod rem est officia, placeat fuga quo alias nemo dolorum magni aut esse tempore maiores. Facere recusandae in eius?</p>
    
    `
}

function about(){
    let main= document.getElementById("main")
    
    main.innerHTML= `
        <h1>Sobre</h1>
        <hr>
        <table>
            <tr>
                <th>Nome</th>
                <th>Email</th>
                <th>Telefone</th>
            </tr>
        </table>
    `
    listContacts.forEach(ctt=>{
    
        main.innerHTML += `
        <table>
            <tr>
                <td>${ctt.name}</td>
                <td>${ctt.email}</td>
                <td>${ctt.phone}</td>
            </tr>
        </table>
        `
    })
}

function contact(){
    let main= document.getElementById("main")
    main.innerHTML= `
        <h1>Contato</h1>
        <hr>
        <p>Adicione um contato</p>
        <form>
            <input id="name" placeholder="Nome" type="text">
            <br><br>
            <input id="mail" placeholder="EMail" type="email">
            <br><br>
            <input id="phone" placeholder="Telefone" type="text">
            <br><br>
            <button type="button" id="saveBtn">Adicionar</button>
        </form>
    
    `
    document.getElementById("saveBtn").addEventListener('click',showData)
}

function showData(){
    let name= document.getElementById("name").value
    let email= document.getElementById("mail").value
    let phone= document.getElementById("phone").value

    const contato= {
        name: name,
        email: email,
        phone: phone
    }

    main.innerHTML += `
        <table>
            <tr>
                <th>Nome</th>
                <th>Email</th>
                <th>Telefone</th>
            </tr>
            <tr>
                <td>${contato.name}</td>
                <td>${contato.email}</td>
                <td>${contato.phone}</td>
            </tr>
        </table>
    `

    //console.log(contato)
    listContacts.push(contato)
}