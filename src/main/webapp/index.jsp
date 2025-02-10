<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Click the Box Game</title>
    <style>
        body {
            text-align: center;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        h1 {
            color: #333;
        }
        #gameArea {
            position: relative;
            width: 400px;
            height: 400px;
            border: 2px solid black;
            margin: 20px auto;
            overflow: hidden;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        #box {
            position: absolute;
            width: 50px;
            height: 50px;
            background-color: red;
            cursor: pointer;
            border-radius: 5px;
            transition: transform 0.1s;
        }
        #box:hover {
            transform: scale(1.1);
        }
    </style>
</head>
<body>
    <h1>Click the Moving Box</h1>
    <p>Score: <span id="score">0</span></p>
    <div id="gameArea">
        <div id="box"></div>
    </div>
    <script>
        let score = 0;
        const box = document.getElementById("box");
        const scoreDisplay = document.getElementById("score");
        const gameArea = document.getElementById("gameArea");

        function moveBox() {
            let maxX = gameArea.clientWidth - box.clientWidth;
            let maxY = gameArea.clientHeight - box.clientHeight;
            let newX = Math.floor(Math.random() * maxX);
            let newY = Math.floor(Math.random() * maxY);
            box.style.left = `${newX}px`;
            box.style.top = `${newY}px`;
        }

        box.addEventListener("click", function() {
            score++;
            scoreDisplay.textContent = score;
            moveBox();
        });

        moveBox();
    </script>
</body>
</html>
