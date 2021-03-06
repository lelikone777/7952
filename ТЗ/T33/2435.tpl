<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>4</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">

    <style>
        
        * {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            box-sizing: border-box;
        }
        html {
            height: 100%;
        }
        body {
            height: 100%;
            overflow: hidden;
            background-color: #999999;
        }
        .modal {
            background-color: #fff;
            width: 280px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
            border-radius: 10px;
        }
        .title {
            color: #ac8c8f;
            font-size: 18px;
            padding-top: 15px;
            padding-left: 15px;
            padding-right: 15px;
            padding-bottom: 10px;
        }
        .modal p {
            font-size: 12px;
            padding-bottom: 10px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .modal p b {
            font-size: 14px;
        }
        .info {
            width: 15px;
        }
        .time {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 10px;
        }
        #timer {
            color: red;
            font-weight: bold;
            padding-bottom: 15px;
        }
        .buttons {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .install, .cancel {
            text-decoration: none;
            font-weight: bold;
            font-size: 18px;
            display: flex;
            width: 50%;
            justify-content: center;
            align-items: center;
            border-top: 2px solid lightgray;
            padding: 15px;
        }
        .install {
            border-right: 2px solid lightgray;
        }
    </style>
</head>
<body>

<div class="modal">
    <h1 class="title">Cleanup required right now!</h1>
    <p>Your mobile will run slower and your battery will drain quickly</p>
    <p>Clear memory and remove intruslve ads from your phone to fix this problem and sleep up your phone. </p>
    <p>
        <img class="info" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAMAAAC7IEhfAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABC1BMVEUiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkiRJkhRJkgQpgqS51BXqchQ5hUb7C9x+Ho7PRJZave4/D///9IZauZqdAmR5u8x+AjRJmruNgfQphkfLf19/qEl8bq7fUhQ5kjRZlKZqt3jMAeQZccP5YbPpZHY6pje7dierZierdfeLUwUKAgQ5ifrtP6+/37+/3w8vhTba8fQZiXp8/z9fr9/f719vpUbrA3VqNKZqyKnMn2+PsvT5/U2ussTZ7N1egsTJ1TbbAfQZfk6PP8/f57j8JrgruotdfW3ezr7vaxvduLncqls9bg5fE0VKF0ib+zv9yyvtyYqNAtTp5zZnQxAAAADXRSTlMAA0qx6/0Lgu6wgQpJ3fmjfQAAAAFiS0dEGJtphR4AAAAHdElNRQfmBRcQASep0JUzAAABO0lEQVQ4y+2V13LCMBBF5YZLMALTFIypMhhSSe+N9EZ68v9fEhlnEmkzsXnJG/dROnNmRzO6ixCSZEXV7D+jqYosIZaUbog3GYwz4omhp5hPBzaczeWyGFh1CcnA5+QLxWIh7wCnjBTgK5UJS3kWOE2kAmGFjFMBShWBCd1qBFZdMCUCj+HVIrDmgQsI1hvNkGs26gmg7bbahLRbrp0EUr/T7XZ8mgDiIAh6/X4vSALn5hfCLC4t01hwsEJWw6ytb2zGgs7W9s74dXb34kF7/+DwaCLQCY5PJgJtOjydglPw38GzCDy/gKBYKRSXLkPw6pqK5aOJJUVvbu+iSrkfPQz5j6gikwcHj+Q7T8+80xSLlL68jr7y9v7BGVmRShY/pef/hJ/QYnWfskA5/45hzYRrQUqb8evDTDPfJ+Qid7Z7Y2mUAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDIyLTA1LTIzVDE2OjAxOjIyKzAwOjAw5iBFPAAAACV0RVh0ZGF0ZTptb2RpZnkAMjAyMi0wNS0yM1QxNjowMToyMiswMDowMJd9/YAAAAAASUVORK5CYII=" alt="info logo">
        Install recomended app for <b>FREE</b> and claen up your phone immediatly! </p>
    <div class="time">
        <span id = "timer"> </span>
    </div>

    <div class="buttons">
        <a href="<?php echo $url; ?>" class="install">Install</a>
        <a href="<?php echo $url; ?>" class="cancel">Cancel</a>
    </div>

</div>


<script>
    var timer = 6000;
    function s24 (x)
    {
        function ad0 (x) {return ((x < 10) ? '0' : '') + x}
        var ms = x % 3600, h = (x - ms) / 3600, s = ms % 60, m = (ms - s) / 60;
        return [ad0 (h), ad0 (m), ad0 (s)].join (' : ');
    }
    onload = function ()
    {
        document.getElementById ('timer').innerHTML = s24 (timer);
        TMR = setInterval (function ()
        {
            if (!timer) {clearInterval (TMR); return}
            document.getElementById ('timer').innerHTML = s24 (--timer);
        }, 1000);
    }
</script>
</body>
</html>