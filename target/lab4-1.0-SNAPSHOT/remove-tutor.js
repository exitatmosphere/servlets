function removeTutor(tutorId) {
    const request = new XMLHttpRequest();
    request.open("POST", "remove-tutor", true);
    request.setRequestHeader('Content-type', 'application/json; charset=UTF-8');
    request.send(JSON.stringify({ tutorId }));
    request.onload = function () {
        if (request.status !== 200) {
            alert('Ошибка');
        } else {
            formData.reset();
        }
    };
}
