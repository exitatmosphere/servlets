function saveUpdate(car) {
    const request = new XMLHttpRequest();
    request.open("POST", "update-tutor", true);
    request.setRequestHeader('Content-type', 'application/json; charset=UTF-8');
    request.send(JSON.stringify(car));
    request.onload = function () {
        if (request.status !== 200) {
            alert('Ошибка');
        } else {
            formData.reset();
        }
        formData.style.display = "none";
    }
}

function showUpdateForm(car) {
    const updateDialog = document.getElementById('updateDialog');
    updateDialog.style.display = "block";
    document.getElementById('firstNameUpdate').value = car.name;
    document.getElementById('lastNameUpdate').value = car.color;
    document.getElementById('disciplineUpdate').value = car.data;
    document.getElementById('costUpdate').value = car.number;
    document.getElementById('countUpdate').value = car.country;
    const updateForm = document.getElementById('updateForm');
    updateForm.onsubmit = function () {
        const formData = document.getElementById('updateForm');
        const updateTutor = {};
        for (let i = 0; i < formData.length; i++) {
            const input = formData[i];
            if (input.name) {
                if (!input.name) {
                    alert('Заполните все поля');
                    return;
                }
                updateTutor[input.name] = input.value;
            }
        }
        saveUpdate(updateTutor);
    };
}
