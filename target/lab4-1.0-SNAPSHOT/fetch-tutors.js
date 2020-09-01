function renderTutor(value) {
    const tutors = value.cars;
    const table = document.getElementById('tutorsTable');
    for (let i = 0; i < tutors.length; i++) {
        let trTable = document.createElement('tr');
        table.appendChild(trTable);
        trTable.classList.add("tr-table");

        const firstNameTh = document.createElement('th');
        const lastNameTh = document.createElement('th');
        const disciplineTh = document.createElement('th');
        const costTh = document.createElement('th');
        const countTh = document.createElement('th');

        const updateBtn = document.createElement('button');
        const deleteBtn = document.createElement('button');

        firstNameTh.classList.add('th-table');
        lastNameTh.classList.add('th-table');
        disciplineTh.classList.add('th-table');
        costTh.classList.add('th-table');
        countTh.classList.add('th-table');

        updateBtn.classList.add('btn-success');
        deleteBtn.classList.add('btn-success');

        firstNameTh.textContent = tutors[i].name;
        lastNameTh.textContent = tutors[i].color;
        disciplineTh.textContent = tutors[i].data;
        costTh.textContent = tutors[i].number;
        countTh.textContent = tutors[i].country;

        updateBtn.textContent = 'upd';
        deleteBtn.textContent = 'del';

        deleteBtn.onclick = function () {
            removeTutor(tutors[i].name);
        };
        updateBtn.onclick = function () {
            showUpdateForm(tutors[i]);
        };

        trTable.appendChild(firstNameTh);
        trTable.appendChild(lastNameTh);
        trTable.appendChild(disciplineTh);
        trTable.appendChild(costTh);
        trTable.appendChild(countTh);

        trTable.appendChild(updateBtn);
        trTable.appendChild(deleteBtn);

    }
}

const request = new XMLHttpRequest();
request.open('GET', "get-tutors", true);
request.responseType = 'json';
request.send();
request.onload = function () {
    if (request.status !== 200) {
        alert('Ошибка');
    } else {
        const responseObj = request.response;
        renderTutor(responseObj);
    }
};
