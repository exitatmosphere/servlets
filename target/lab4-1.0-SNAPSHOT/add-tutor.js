const formData = document.getElementById('form');
    formData.onsubmit = function () {
    const newTutor = {};
    for (let i = 0; i < formData.length; i++) {
        const input = formData[i];
        if (input.id) {
            newTutor[input.id] = input.value;
        }
    }
    const request = new XMLHttpRequest();
    request.open("POST", formData.action, true);
    request.setRequestHeader('Content-type', 'application/json; charset=UTF-8');
    request.send(JSON.stringify(newTutor));
    request.onload = function () {
        if (request.status !== 200) {
            alert('Ошибка');
        } else {
            formData.reset();
        }
    }
};

