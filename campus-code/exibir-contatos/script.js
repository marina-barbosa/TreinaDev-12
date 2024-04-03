

let result = document.getElementById('result');

async function printData() {

    let res = await fetch('https://randomuser.me/api/?results=20');

    let { results } = await res.json();

    console.log(results);

    results.forEach(contact => {
        let elemLi = document.createElement('li');

        elemLi.innerHTML = `
            <div>
                <img width="180" src="${contact.picture.large}" alt="Mountain lake">
                <h2>${contact.name.first}</h2>
                <span>${contact.email}</span>
                <p>${contact.location.city} - ${contact.location.state}</p>
                <button>${contact.location.country}</button>
            </div>
        `;

        result.appendChild(elemLi);
    });
}




