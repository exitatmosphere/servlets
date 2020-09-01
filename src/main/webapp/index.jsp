<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Table</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
    <meta charset="utf-8"><!--Кодировка-->
    <meta name="viewport" content="width=device-width, initial-scale=1"><!--Для разных девайсов-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!--Подкл Будстрапа-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script><!--Подкл разного всего-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!--Подкл разного всего-->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <!--Подкл разного всего-->

</head>
<body class="bg-info">
<div class="container">
    <br>
    <h1 class="text-warning">Таблица машин</h1>
    <br>
</div>
<section>
    <div class="container">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-center">
            <form id="form" action="add-tutor">
                <input type="text"  placeholder="Марка" id="name">
                <input type="text"  placeholder="Цвет" id="color">
                <input type="text" placeholder="Модель" id="data">
                <input type="text"  placeholder="Цена" id="number">
                <input type="text"  placeholder="Страна" id="country">
                <button class="btn btn-primary btn-lg" type="submit">Добавить</button>
            </form>
        </nav>
    </div>
</section>
    <div class="container">
        <div class="row">
            <div style="width: 100px">
            </div>
            <div>
                <div>

                   <div id="updateDialog" class="modal container">
                        <form id="updateForm" class="modal-content container" action="update-tutor">
                            <br>
                            <input type="text" class="form-control col-lg" placeholder="Марка" id="firstNameUpdate" name="name">
                            <br>
                            <input type="text" class="form-control col-lg" placeholder="Цвет" id="lastNameUpdate" name="color">
                            <br>
                            <input type="text" class="form-control col-lg" placeholder="Модель" id="disciplineUpdate" name="data">
                            <br>
                            <input type="text" class="form-control col-lg" placeholder="Цена" id="costUpdate" name="number">
                            <br>
                            <input type="text" class="form-control col-lg" placeholder="Страна" id="countUpdate" name="country">
                            <br>
                            <button class="btn btn-primary btn-lg" type="submit" id="saveBtn">Сохранить</button>
                            <br>
                        </form>
                    </div>

                    <!--<form id="form" action="add-tutor">
                        <input type="text" class="form-control col-lg" placeholder="Имя" id="name">

                        <input type="text" class="form-control col-lg" placeholder="Фамилия" id="color">

                        <input type="text" class="form-control col-lg" placeholder="Предмет" id="data">

                        <input type="text" class="form-control col-lg" placeholder="Стоимость (руб)" id="number">

                        <input type="text" class="form-control col-lg" placeholder="Количество занятий" id="country">

                        <button class="btn btn-dark btn-lg" type="submit">Добавить объект</button>
                    </form>-->
                </div>
                <div>
                    <table class="table table-dark" id="tutorsTable">
                        <tr>
                            <th scope="col">Марка</th>
                            <th scope="col">Цвет</th>
                            <th scope="col">Модель</th>
                            <th scope="col">Цена</th>
                            <th scope="col">Страна</th>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="update-tutor.js"></script>
<script src="remove-tutor.js"></script>
<script src="fetch-tutors.js"></script>
<script src="add-tutor.js"></script>
</body>
</html>


