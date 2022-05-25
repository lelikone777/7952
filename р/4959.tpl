<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 0;
            margin: 0;
        }
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
        }
        .container {
            width: 100%;
            max-width: 550px;
            margin: 0 auto;
        }
        .player {
            position: relative;
            background-color: #000;
            height: 63vh;
            /*max-height: 360px;*/
            /*max-height: 300px;*/
            max-height: 270px;
        }
        .player img {
            width: 100%;
            height: 100%;
        }
        .player-timeline {
            position: absolute;
            left: 5%;
            right: 5%;
            bottom: 10px;
            height: 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .player-timeline .time {
            font-size: 12px;
            /*margin-right: 20px;*/
            width: 86px;
            color: #ccc;
        }
        .player-timeline .line {
            display: flex;
            width: 65%;
        }
        .player-timeline .line .red {
            width: 10%;
            height: 3px;
            background-color: red;
        }
        .player-timeline .line .circle {
            background-color: red;
            transform: translateY(-2px);
            height: 8px;
            width: 8px;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            border-radius: 50%;
        }
        .player-timeline .line .grey {
            width: 75%;
            height: 3px;
            /*background-color: lightslategray;*/
            background-color: #ccc;
        }
        .fullscreen {
            width: 28px;
        }
        .title {
            display: flex;
            align-items: center;
            position: absolute;
            top: 5%;
            left: 0;
            right: 0;
            height: 40px;
            background-color: #232123;
        }
        .title img {
            width: 30%;
        }
        .title-box {
            display: flex;
            align-items: center;
            justify-content: space-between;
            width: 100%;
            max-width: 90%;
            margin: auto;
        }
        .title img {
            /*margin-left: 20px;*/
        }
        .title-buttons {
            display: flex;
            width: 15%;
            justify-content: space-between;
            align-items: center;
        }
        .title-buttons svg {
            width: 30px;
            fill: white;
        }
        .player-gear {
            position: absolute;
            top: 22%;
            right: 6%;
            width: 5%;
        }
        .player-buttons {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -45%);
            width: 70%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .player-next, .player-prev {
            width: 6%;
        }

        .player-next svg, .player-prev svg {
            width: 100%;
            max-height: 70px;
        }
        .player-play {
            width: 15%;
        }
        .player-prev {
            transform: rotate(180deg);
        }

        .video-descr {
            position: relative;
        }
        .video-descr__title {
            padding: 10px 10px 0 10px;
            max-width: 80%;
            margin-bottom: 5px;
            color: rgb(17, 17, 17);
            font-size: 1.4em;
            font-weight: 400;
        }
        .video-descr__arrow {
            position: absolute;
            width: 1.5em;
            height: 1.5em;
            top: 10px;
            right: 10px;
        }
        .video-descr__views {
            padding: 0 10px 10px;
            color: rgba(17, 17, 17, 0.6);
            font-size: 1em;
            font-weight: 500;
        }
        .video-menu {
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-justify-content: space-around;
            -ms-flex-pack: distribute;
            justify-content: space-around;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -moz-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }
        .video-menu__item {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 10px 0;
            color: rgba(17, 17, 17, 0.6);
        }
        .video-menu__icon {
            /*max-width: 2.5em;*/
            max-width: 2em;
            max-height: 2.5em;
            margin-bottom: 5px;
        }
        .video-menu__text {
            font-size: 12px;
        }
        .video-chanel {
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: justify;
            -webkit-justify-content: space-between;
            -moz-box-pack: justify;
            -ms-flex-pack: justify;
            justify-content: space-between;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -moz-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            border-top: 1px solid rgba(136, 136, 136, 0.4);
            border-bottom: 1px solid rgba(136, 136, 136, 0.4);
        }
        .video-chanel__descr {
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -moz-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-pack: start;
            -webkit-justify-content: flex-start;
            -moz-box-pack: start;
            -ms-flex-pack: start;
            justify-content: flex-start;
            padding: 10px 0 10px 10px;
        }
        .video-chanel__logo {
            font-size: 0;
            margin-right: 10px;
        }
        .video-chanel__logo svg {
            width: 75px;
        }
        .video-chanel__img {
            max-width: 100%;
            font-size: 1rem;
            -webkit-border-radius: 50%;
            border-radius: 50%;
            max-width: 3.5em;
            max-height: 3.5em;
        }
        .video-chanel__text {
            font-size: 1em;
            color: rgba(17, 17, 17, 0.6);
        }
        .video-chanel__button {
            padding-right: 10px;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -moz-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }
        .video-chanel__icon {
            font-size: 0;
        }
        .video-chanel__icon svg {
            font-size: 1rem;
            width: 2.5em;
            fill: rgb(204, 0, 0);
        }
        .video-chanel__btn {
            margin-left: 5px;
            color: rgb(204, 0, 0);
            font-size: 1em;
            font-weight: bold;
            text-transform: uppercase;
        }
        .video-menu__icon svg {
            fill: rgba(17, 17, 17, 0.6);
            width: 100%;
            height: 100%;
        }
        .video-chanel__title {
            margin-bottom: 5px;
            font-size: 1em;
            color: rgb(17, 17, 17);
        }
        .video-chanel__subs {
            font-size: 0.8em;
        }
        .button-menu__title {
            margin-top: 20px;
            text-align: center;
            font-size: 1.2em;
            line-height: 1;
            font-weight: bold;
            color: rgb(17, 17, 17);
        }
        .button-menu__btn {
            display: flex;
            justify-content: center;
            align-items: center;
            /*background-color: red;*/
            background-color: #2e9c08;
            color: #ffffff;
            margin: 20px auto 20px;
            width: 90%;
            height: 75px;
            max-width: 320px;
            text-decoration: none;
            -webkit-border-radius: 50px;
            -moz-border-radius: 50px;
            border-radius: 50px;
            font-size: 1.2em;
            line-height: 1;
            font-weight: bold;
        }


        @media (max-height: 461px) and (orientation: portrait){
            .player {
                max-height: 231px;
            }
        }


    </style>
</head>
<body>

<div class="container">
    <div class="player">
<!--        <img src="data:image/jpeg;base64,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R7AZPeDV3EQZDFaDf/HGj/QP/hDJRResCsrKyi89Ag2HQ2zhiGcBjszyovPE8J/YWIebC8MR7C8AvELwCTwR9IcQmSE/SAAAXgb+fxHLE2Dga8oZSPSO7fc/+LJ8fzEjhfkL9n+RH/oS4QQ7CXwTEIQhCEJhCEIQnSEJ0COm58EeD2j+kP6obOcHP/kn9Cf1p/Xn9KL/AJJP/Wf0PQAR/U4tziDf+s9gvhx/9ILzPyEsUvj8AkcJHCKe0iPBPgnwT4Jx+PQIQhCEIQhCEIQhCEIQhCEIQhCEIQhCEIQhCEIQhMPh1AhBomJmEIQhCEJiEIQhCEITEIQhMwnRCEIQhCEIQhCfRAIQhCEIQhCEIQhCdcITEJiEIQhCEJ9KdE6oQhCEJ0T6cIQmZ1T9FMzohCEJ1wnRCEIQhCfroQhCEITomYQhOmfpZmfShCfq59KdEIQhCYhCEIQhCEITExP0k+hCE6p+zzohCdU+hCZmYQn0ITEIQhCEJ9WE+nOqE6IQhCfu0/QzEIQhCEJ+9whPownRP00xPqQhCEIQhMT6EIQhCEITMzCfoIQnRCZhPV8/WwhCEzCYn6Cfpp+xz97hCfXn6iEIQn7fP3yfrJ+yTM9TT9pnqyf/AIt//9oADAMBAAIAAwAAABDb74b76J76Ib6pabb7ZyABxbyIL777777qIIYYY4444o4IIJLb7777774LZ7YIL7577777ILr6pb6K6r75bgJyzyoD77b77774Ib777777777644IILL777745L5q4LL7777oIZ5aoJ7oY7b6aoITTzgBzjz77z74J77r76665567777744JLL777a5K7qpb5IIIIb6r4ILqr7r6r4p6jzAAThzzzzzgIb6b77b7b6KLLr7777b44rL765qpL7YLIIIa77p7oJ67a7b6TI7hyiAThzzzziABzh77LIIIYJa44pLbL767r4rL767K5KL4r777rJ6oIK7BxxThgThzwAzhzziAAQzzxzyIJZ77577L74qIIJLb47Y5Lb75o7I7b7rJ76oIARQTijySDhzyAThzzgBxzzDAziAR7776Y4745rqIIIIJL67Y4Lb65q5bqZ7776JIyihzBTxACjyhTwzzgAzDAzzAAAzzziSr7rbrbILb15YoJLabK4Jb77YrL777IIADiwDAByShhzATzzzyTyjzyAAATzywxzhAAAAJbCSjCUrb64ILZr4rb77476IIIABSSBywThwCjgBzzzwBzRwAAAxzzzzzjAAAAAAAzwGtPAzb764IL5r4rb77qIIIAADhgTyhyjhByBzzzyByTygARzzzzjAAAAAAAAzihkCp/QNb5rr4LLZq4Lb74IIIABSShTwThySTgTwzzgThygARzzzyAAAAAAAQzziZYwSiwP4BL77r44LZq4Lb4IIIADhyTShzgBRQBzzziBzTgRzzzzyAAAAAxzzzCzhlHrkg1y+gLLb77a5b7aoL4IIIByijxwTzCCjhThzzgSziBTizziAAAAxzTjBzzyx/PF5oCyVgoIJL5r6LK7Y4IIIgTxSzwByyRSSjhzzyBRyAzxTzCAAADzzgxzzzzwyfg3+3Sc6O4IIJL5q4LK7b64KzyzhSTDyQgCySjzzgTigDyTyAAAAzzxBTzziCACqM/j45s3h9Q4IIJa7a4La7b7zzxyjjxTzgCTRRTzgThgByzyAAAQzzhBzziAAAASDKVjt00fWA7oIIJL7r4oLa77zzzxxzxyChRiCjzgTzyhTzzgAABzzhzzzgAADzynKKTW4X0Q+WHIIIIL7774oJL7zzyjxRTxQDCgSjyjzzgTzzwAABzyTzzzgABTzzzPp2j0hVnMmNMIIIKLb7774oJzzzxTzBzhwTTBRTyTxwBzzyAAATyzzjRAAAAzzzjN2QI7ewCZtE8AIIb7757764LzzyhSjjzihRwhxzxSihTzzgAADzzzzygAABDzzyyqi1reloElgDXEY777K77774rzzyhSyzzSBixSTyzxSBzzyAADzjzziAAAABTjz1wk3otJjbYAcdWx76577b7777LzzwDTxTxSzyBRTwSjgDzygABTzRziAAAQwzyjms1uv7PcUI7prxjLb7LrILLIIILzzwDxzzxRRSijyhySgDzygADyBzgAAAxzzzzo1qEwSi4NLx645rAIC457764oIIJzygTijyixShTzwDxyATzygBSjygARzzzzzzwj5IFZ2iZUDThaab7kV57745r44oLzwhTyjSSyzxzTxSjwBTzwADhzATzzzzzDDjgGP01V+ayHyDSy47a4V6oIJLb57b7zwBzxTxQSwDzyhzygByyABRTwRzzhzyzzyraEaMec7a+hDBzzzypapb7774pLar7zwjzjzhhTQTzwDhyADzgA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" alt="">-->
        <div class="title">
            <div class="title-box">
                <img src="data:image/png;base64,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" alt="logo">
                <div class="title-buttons">
                    <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                        <path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z">
                        </path>
                    </svg>
                    <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                        <path d="M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z">
                        </path>
                    </svg>
                </div>
            </div>
        </div>
        <div class="player-gear">
            <?xml version="1.0" ?><svg id="icons" fill="#fff" viewBox="0 0 44 46" xmlns="http://www.w3.org/2000/svg"><title/><g id="Icon"><path d="M22,31.72a8,8,0,1,1,8.05-8A8,8,0,0,1,22,31.72Zm0-12a4,4,0,1,0,4,4A4,4,0,0,0,22,19.72Z"/><path d="M25.33,46H18.18c-2,0-3.18-2.39-3.18-3.69V40.89a20.54,20.54,0,0,1-3.21-1.69L9.9,40.58a3,3,0,0,1-4.29-.75L1,33.47A3.14,3.14,0,0,1,.42,31.7a3,3,0,0,1,1.27-2.51l2-1.39a18.76,18.76,0,0,1-.08-8.87L1.29,17.35a3,3,0,0,1-.75-4.18l4.6-6.55a3,3,0,0,1,4.18-.74l2.2,1.54A27.67,27.67,0,0,1,15,5.57V2a2,2,0,0,1,2-2L27.05,0.17a2,2,0,0,1,1.94,2V5.55a31.7,31.7,0,0,1,3.51,1.77l2.06-1.4a3,3,0,0,1,4.19.72l4.68,6.52a3,3,0,0,1,.37,2.79,3.18,3.18,0,0,1-1.18,1.47l-1.84,1.3a18.69,18.69,0,0,1,0,9l1.65,1.15A3,3,0,0,1,43.18,33l-4.63,6.56a3,3,0,0,1-2,1.23,3.05,3.05,0,0,1-2.28-.5l-1.79-1.21A32.25,32.25,0,0,1,29,40.9v1.41A3.67,3.67,0,0,1,25.33,46ZM19,42h6V38l1.44-.43A15.26,15.26,0,0,0,31.3,35.1l1.16-.89,3.35,2.29,3.49-4.94-3.22-2.24,0.47-1.41a14.78,14.78,0,0,0,0-9.37l-0.46-1.4,3.49-2.47-3.51-4.9-3.61,2.47-1.16-.89a15.3,15.3,0,0,0-4.85-2.45L25,8.46V4H19V8.44l-1.42.44a14.8,14.8,0,0,0-4.8,2.57l-1.19.93L7.86,9.75,4.42,14.64,8.25,17.3,7.81,18.7A14.82,14.82,0,0,0,7.89,28l0.47,1.4-3.52,2.5,3.49,4.87,3.43-2.51L13,35.14a13.91,13.91,0,0,0,4.58,2.41L19,38v4Zm16.25-4.71h0ZM36.59,37h0Zm3.56-21.55h0ZM36.89,9.19l0,0Z"/></g></svg>
        </div>
        <div class="player-buttons">
            <div class="player-prev">
                <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                     width="373.008px"
                     fill="#044237"
                     height="373.008px" viewBox="0 0 373.008 373.008" style="enable-background:new 0 0 373.008 373.008;"
                     xml:space="preserve">
<g>
	<g id="Layer_8_54_">
		<path d="M25.307,2.588C28.295,0.864,31.627,0,34.963,0c3.338,0,6.663,0.864,9.655,2.588l200.384,167.2
			c5.957,3.445,9.65,9.823,9.65,16.719c0,6.895-3.683,13.272-9.65,16.713L44.618,370.427c-5.969,3.441-13.333,3.441-19.306,0
			c-5.973-3.453-9.655-9.833-9.655-16.724V19.305C15.658,12.413,19.335,6.036,25.307,2.588z M278.204,7.924v357.167
			c0,4.263,3.46,7.722,7.723,7.722h63.697c4.268,0,7.727-3.459,7.727-7.722V7.924c0-4.269-3.459-7.727-7.727-7.727h-63.697
			C281.664,0.197,278.204,3.655,278.204,7.924z"/>
	</g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
</svg>
            </div>
            <div class="player-play">
                <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                     viewBox="0 0 11.188 11.188" style="enable-background:new 0 0 11.188 11.188;"  xml:space="preserve">
<g>
	<g>
		<path style="fill:#fff;" d="M1.537,10.851c0-0.001,0-0.002,0-0.003V0.338c0-0.135,0.107-0.257,0.271-0.31
			c0.164-0.054,0.354-0.027,0.483,0.066L9.52,5.349c0.175,0.127,0.175,0.36,0,0.487l-7.193,5.229
			c-0.081,0.074-0.205,0.123-0.344,0.123C1.737,11.188,1.537,11.037,1.537,10.851z"/>
	</g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
</svg>
            </div>
            <div class="player-next">
                <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                     width="373.008px" fill="#fff" height="373.008px" viewBox="0 0 373.008 373.008" style="enable-background:new 0 0 373.008 373.008;"
                     xml:space="preserve">
<g>
	<g id="Layer_8_54_">
		<path d="M25.307,2.588C28.295,0.864,31.627,0,34.963,0c3.338,0,6.663,0.864,9.655,2.588l200.384,167.2
			c5.957,3.445,9.65,9.823,9.65,16.719c0,6.895-3.683,13.272-9.65,16.713L44.618,370.427c-5.969,3.441-13.333,3.441-19.306,0
			c-5.973-3.453-9.655-9.833-9.655-16.724V19.305C15.658,12.413,19.335,6.036,25.307,2.588z M278.204,7.924v357.167
			c0,4.263,3.46,7.722,7.723,7.722h63.697c4.268,0,7.727-3.459,7.727-7.722V7.924c0-4.269-3.459-7.727-7.727-7.727h-63.697
			C281.664,0.197,278.204,3.655,278.204,7.924z"/>
	</g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
                    <g>
</g>
</svg>
            </div>
        </div>
        <div class="player-timeline">
            <div class="time">0:05 / 24:50</div>
            <div class="line">
                <span class="red"></span>
                <span class="circle"></span>
                <span class="grey"></span>
            </div>
            <div class="fullscreen">
                <svg width="1.8rem" height="1.8rem">
                    <rect style="width: 100%; height: 100%; fill: transparent; stroke: #ccc; stroke-width: 0.5rem; stroke-dasharray: 1.25rem 0.55rem; stroke-dashoffset: 35%;">
                    </rect>
                </svg>
            </div>
        </div>
    </div>
</div>

<div class="container">

    <div class="video-descr">
        <div class="video-descr__title">
            <div>Exclusive Video Training Program</div>
            <div class="video-descr__arrow">
                  <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" fill="dimgray">
                    <path d="M16.59 8.59L12 13.17 7.41 8.59 6 10l6 6 6-6z"></path>
                  </svg>
                </div>
        </div>
        <div class="video-descr__views">601K views</div>
    </div>

    <div class="video-menu">
        <div class="video-menu__item">
            <div class="video-menu__icon">
                <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                    <path d="M1 21h4V9H1v12zm22-11c0-1.1-.9-2-2-2h-6.31l.95-4.57.03-.32c0-.41-.17-.79-.44-1.06L14.17 1 7.59 7.59C7.22 7.95 7 8.45 7 9v10c0 1.1.9 2 2 2h9c.83 0 1.54-.5 1.84-1.22l3.02-7.05c.09-.23.14-.47.14-.73v-1.91l-.01-.01L23 10z">
                    </path>
                </svg>
            </div>
            <div class="video-menu__text">133K</div>
        </div>

        <div class="video-menu__item">
            <div class="video-menu__icon">
                <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                    <path d="M15 3H6c-.83 0-1.54.5-1.84 1.22l-3.02 7.05c-.09.23-.14.47-.14.73v1.91l.01.01L1 14c0 1.1.9 2 2 2h6.31l-.95 4.57-.03.32c0 .41.17.79.44 1.06L9.83 23l6.59-6.59c.36-.36.58-.86.58-1.41V5c0-1.1-.9-2-2-2zm4 0v12h4V3h-4z">
                    </path>
                </svg>
            </div>
            <div class="video-menu__text">35K</div>
        </div>

        <div class="video-menu__item">
            <div class="video-menu__icon">
                <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                    <path d="M14 9V5l7 7-7 7v-4.1c-5 0-8.5 1.6-11 5.1 1-5 4-10 11-11z"></path>
                </svg>
            </div>
            <div class="video-menu__text">Share</div>
        </div>

        <div class="video-menu__item">
            <div class="video-menu__icon">
                <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                    <path d="M14 10H2v2h12v-2zm0-4H2v2h12V6zm4 8v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zM2 16h8v-2H2v2z"></path>
                </svg>
            </div>
            <div class="video-menu__text">Save</div>
        </div>

        <div class="video-menu__item">
            <div class="video-menu__icon">
                <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
                    <path d="M14.4 6L14 4H5v17h2v-7h5.6l.4 2h7V6z"></path>
                </svg>
            </div>
            <div class="video-menu__text">Report</div>
        </div>
    </div>

    <div class="video-chanel">
        <div class="video-chanel__descr">
            <div class="video-chanel__logo">

                <svg xmlns="http://www.w3.org/2000/svg" width="145.416" height="22.416" viewBox="0 0 145.416 22.416"><defs><style>.a{fill:#1d1c21;}.b{fill:#f62c84;}</style></defs><g transform="translate(-139.048 -27.48)"><path class="a" d="M67.776-15.7,66.336-8.52h8.928l-.216,1.1H66.12L64.632,0H63.408l3.36-16.8H78l-.24,1.1ZM80.4-12.528h1.2L79.1,0H77.9Zm1.344-3.048a.881.881,0,0,1-.648-.264.853.853,0,0,1-.264-.624,1.036,1.036,0,0,1,.3-.744,1,1,0,0,1,.756-.312.921.921,0,0,1,.66.264.835.835,0,0,1,.276.624,1,1,0,0,1-.312.756A1.066,1.066,0,0,1,81.744-15.576ZM86.352-3.624a4.305,4.305,0,0,0-.1.888q0,1.8,1.92,1.8a3.215,3.215,0,0,0,2.04-.7l.36.888A4.123,4.123,0,0,1,87.888.1a2.952,2.952,0,0,1-2.1-.708,2.549,2.549,0,0,1-.756-1.956,4.651,4.651,0,0,1,.1-.96L86.736-11.5H84.408l.192-1.032h2.328l.552-2.736h1.2l-.552,2.736h3.984L91.92-11.5H87.936Zm15.744-9a4.661,4.661,0,0,1,3.288,1.068,3.812,3.812,0,0,1,1.152,2.94,6.983,6.983,0,0,1-.144,1.368L104.952,0h-1.2l1.44-7.248a5.649,5.649,0,0,0,.12-1.2,2.913,2.913,0,0,0-.9-2.292,3.826,3.826,0,0,0-2.628-.8,5.4,5.4,0,0,0-3.6,1.212,5.915,5.915,0,0,0-1.9,3.516L94.92,0h-1.2l2.5-12.528h1.176l-.48,2.376a5.524,5.524,0,0,1,2.22-1.86A7.016,7.016,0,0,1,102.1-12.624ZM110.928-6q-.048.528-.048.792a4.063,4.063,0,0,0,1.176,3.132,4.908,4.908,0,0,0,3.456,1.092,6.531,6.531,0,0,0,2.436-.444,5.089,5.089,0,0,0,1.86-1.236l.552.84a5.6,5.6,0,0,1-2.148,1.416,7.709,7.709,0,0,1-2.8.5A5.976,5.976,0,0,1,111.228-1.3,4.97,4.97,0,0,1,109.7-5.16a8.132,8.132,0,0,1,.888-3.816,6.767,6.767,0,0,1,2.448-2.676,6.49,6.49,0,0,1,3.5-.972,5.357,5.357,0,0,1,3.888,1.392,5.091,5.091,0,0,1,1.44,3.84A8.208,8.208,0,0,1,121.728-6Zm5.592-5.592A5.209,5.209,0,0,0,113-10.32a5.988,5.988,0,0,0-1.932,3.384h9.648a6.076,6.076,0,0,0,.024-.624,3.842,3.842,0,0,0-1.152-2.964A4.339,4.339,0,0,0,116.52-11.592ZM127.68.1a8.783,8.783,0,0,1-2.8-.444,5.591,5.591,0,0,1-2.076-1.14l.648-.936a4.91,4.91,0,0,0,1.86,1.068,7.586,7.586,0,0,0,2.46.4,5.579,5.579,0,0,0,3.012-.684,2.149,2.149,0,0,0,1.068-1.908,1.446,1.446,0,0,0-.432-1.1,2.763,2.763,0,0,0-1.056-.612q-.624-.2-1.728-.444a15.73,15.73,0,0,1-2.1-.552,3.287,3.287,0,0,1-1.356-.9,2.4,2.4,0,0,1-.552-1.668,3.239,3.239,0,0,1,1.428-2.76,6.359,6.359,0,0,1,3.8-1.032,8.391,8.391,0,0,1,2.328.324,4.746,4.746,0,0,1,1.8.9l-.552.936a4.728,4.728,0,0,0-1.668-.828,7.3,7.3,0,0,0-2-.276,5.107,5.107,0,0,0-2.892.72,2.194,2.194,0,0,0-1.068,1.9,1.516,1.516,0,0,0,.432,1.14,2.776,2.776,0,0,0,1.092.636q.66.216,1.764.456a16.059,16.059,0,0,1,2.076.54A3.259,3.259,0,0,1,132.5-5.3a2.317,2.317,0,0,1,.552,1.632,3.178,3.178,0,0,1-1.464,2.76A6.784,6.784,0,0,1,127.68.1Zm11.472,0a8.783,8.783,0,0,1-2.8-.444,5.591,5.591,0,0,1-2.076-1.14l.648-.936a4.91,4.91,0,0,0,1.86,1.068,7.586,7.586,0,0,0,2.46.4,5.579,5.579,0,0,0,3.012-.684,2.149,2.149,0,0,0,1.068-1.908,1.446,1.446,0,0,0-.432-1.1,2.763,2.763,0,0,0-1.056-.612q-.624-.2-1.728-.444a15.73,15.73,0,0,1-2.1-.552,3.286,3.286,0,0,1-1.356-.9,2.4,2.4,0,0,1-.552-1.668,3.239,3.239,0,0,1,1.428-2.76,6.359,6.359,0,0,1,3.8-1.032,8.391,8.391,0,0,1,2.328.324,4.746,4.746,0,0,1,1.8.9l-.552.936a4.728,4.728,0,0,0-1.668-.828,7.3,7.3,0,0,0-2-.276,5.107,5.107,0,0,0-2.892.72,2.194,2.194,0,0,0-1.068,1.9,1.516,1.516,0,0,0,.432,1.14,2.776,2.776,0,0,0,1.092.636q.66.216,1.764.456a16.059,16.059,0,0,1,2.076.54,3.259,3.259,0,0,1,1.332.876,2.317,2.317,0,0,1,.552,1.632,3.178,3.178,0,0,1-1.464,2.76A6.784,6.784,0,0,1,139.152.1Z" transform="translate(139 45)"/><path class="b" d="M8.112-12.528,7.728-10.56h7.1l-.816,4.08H6.888L6.456-4.272H14.88L14.016,0H.048l3.36-16.8H17.064L16.2-12.528Zm24.96-.6L30.456,0H25.344l.24-1.2A4.93,4.93,0,0,1,22.032.24,5.118,5.118,0,0,1,19.44-.48a5.455,5.455,0,0,1-2.028-2.1,6.5,6.5,0,0,1-.78-3.252,7.85,7.85,0,0,1,.948-3.84,7.133,7.133,0,0,1,2.556-2.712,6.547,6.547,0,0,1,3.48-.984,4.187,4.187,0,0,1,3.744,1.632l.288-1.392ZM22.128-6.1a2.136,2.136,0,0,0,.516,1.5,1.838,1.838,0,0,0,1.428.564,2.1,2.1,0,0,0,1.716-.816,3.371,3.371,0,0,0,.66-2.184,2.136,2.136,0,0,0-.516-1.5A1.838,1.838,0,0,0,24.5-9.1a2.1,2.1,0,0,0-1.716.816A3.371,3.371,0,0,0,22.128-6.1ZM38.3.24A15.806,15.806,0,0,1,35.016-.1,8.29,8.29,0,0,1,32.544-.96l1.872-3.7a7.726,7.726,0,0,0,2.172.888,9.746,9.746,0,0,0,2.388.312q1.608,0,1.608-.624,0-.264-.42-.4a8.633,8.633,0,0,0-1.332-.252,17.328,17.328,0,0,1-2.4-.516A4.052,4.052,0,0,1,34.7-6.3a2.865,2.865,0,0,1-.744-2.1,4.086,4.086,0,0,1,2.064-3.7,10.026,10.026,0,0,1,5.328-1.272,14.886,14.886,0,0,1,2.772.252,10.008,10.008,0,0,1,2.364.732l-1.872,3.7A7.681,7.681,0,0,0,40.7-9.672a3.064,3.064,0,0,0-1.26.192q-.4.192-.4.456t.408.4a11.306,11.306,0,0,0,1.392.3,16.966,16.966,0,0,1,2.364.516,3.973,3.973,0,0,1,1.7,1.056,2.859,2.859,0,0,1,.732,2.076,3.97,3.97,0,0,1-.972,2.7,5.84,5.84,0,0,1-2.64,1.668A11.838,11.838,0,0,1,38.3.24Zm25.1-13.368L55.344.264a13.687,13.687,0,0,1-2.112,2.8,6.2,6.2,0,0,1-2.2,1.416,8.021,8.021,0,0,1-2.724.42,7.625,7.625,0,0,1-2.148-.312,5.117,5.117,0,0,1-1.716-.816L46.8,0a3.18,3.18,0,0,0,1.968.7A1.829,1.829,0,0,0,50.112.144l-2.88-13.272h5.4l1.344,7.056L58.1-13.128Z" transform="translate(139 45)"/></g></svg>
            </div>
            <div class="video-chanel__text">
                <div class="video-chanel__title">Easy fitness</div>
                <div class="video-chanel__subs">114K subscribers</div>
            </div>
        </div>
        <div class="video-chanel__button">
            <div class="video-chanel__btn">subscribe</div>
        </div>
    </div>
</div>

<div class="container">
    <div class="button-menu">
        <div class="button-menu__title">
            Click button below to continue
        </div>
        <a href="{url}" class="button-menu__btn">
            Play
        </a>
    </div>
</div>


</body>
</html>