<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kalkulator Cinta</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #ffe6e6;
        }
        .calculator {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(255,105,180,0.3);
            padding: 20px;
            text-align: center;
        }
        #display {
            width: 100%;
            height: 40px;
            font-size: 20px;
            text-align: right;
            margin-bottom: 10px;
            padding: 5px;
            box-sizing: border-box;
            border: 2px solid #ff69b4;
            border-radius: 5px;
        }
        .buttons {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 5px;
        }
        button {
            width: 100%;
            height: 40px;
            font-size: 18px;
            background-color: #ffb6c1;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #ff69b4;
        }
        #equals {
            background-color: #ff1493;
            color: white;
        }
        #equals:hover {
            background-color: #ff69b4;
        }
        #image-container {
            margin-top: 20px;
            height: 200px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        #love-image {
            max-width: 100%;
            max-height: 100%;
            opacity: 0;
            transition: opacity 0.5s;
        }
    </style>
</head>
<body>
    <div class="calculator">
        <input type="text" id="display" readonly>
        <div class="buttons">
            <button onclick="appendToDisplay('7')">7</button>
            <button onclick="appendToDisplay('8')">8</button>
            <button onclick="appendToDisplay('9')">9</button>
            <button onclick="appendToDisplay('+')">+</button>
            <button onclick="appendToDisplay('4')">4</button>
            <button onclick="appendToDisplay('5')">5</button>
            <button onclick="appendToDisplay('6')">6</button>
            <button onclick="appendToDisplay('-')">-</button>
            <button onclick="appendToDisplay('1')">1</button>
            <button onclick="appendToDisplay('2')">2</button>
            <button onclick="appendToDisplay('3')">3</button>
            <button onclick="appendToDisplay('*')">*</button>
            <button onclick="appendToDisplay('0')">0</button>
            <button onclick="appendToDisplay('.')">.</button>
            <button onclick="clearDisplay()">C</button>
            <button onclick="appendToDisplay('/')">/</button>
            <button onclick="calculate()" id="equals">=</button>
        </div>
        <div id="image-container">
            <img src="Gambar WhatsApp 2024-10-18 pukul 07.02.46_bcb0c2c3.jpg" alt="Love" id="love-image">
        </div>
    </div>

    <script>
        function appendToDisplay(value) {
            document.getElementById('display').value += value;
        }

        function clearDisplay() {
            document.getElementById('display').value = '';
            document.getElementById('love-image').style.opacity = 0;
        }

        function calculate() {
            document.getElementById('display').value = 'I love you';
            const image = document.getElementById('love-image');
            image.style.opacity = 1;
            setTimeout(() => {
                image.style.opacity = 0;
            }, 3000);
        }
    </script>
</body>
</html>
