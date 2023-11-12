<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diwali Celebration</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: #000;
            overflow: hidden;
            color: #fff;
            text-align: center;
        }

        .diya {
            position: absolute;
            width: 20px;
            height: 20px;
            background-color: #f39c12;
            border-radius: 50%;
            animation: flicker 1s ease-in-out infinite;
        }

        .flower-pot {
            position: absolute;
            width: 15px;
            height: 60px;
            background-color: #e74c3c;
            border-radius: 10% 10% 0 0;
            animation: burst 0.5s linear infinite;
        }

        h1 {
            margin-top: 20%;
            font-size: 2.5em;
        }

        h2 {
            margin-top: 2%;
            font-size: 1.8em;
        }

        @keyframes flicker {
            0%, 100% {
                opacity: 1;
            }
            50% {
                opacity: 0.8;
            }
        }

        @keyframes burst {
            0%, 100% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.5);
            }
        }
    </style>
</head>
<body>
    <!-- Diya animation -->
    <div class="diya" style="top: 50%; left: 50%;"></div>
    <div class="diya" style="top: 20%; left: 80%;"></div>
    <!-- Add more diyas as needed -->

    <!-- Flower Pot animation -->
    <div class="flower-pot" style="top: 80%; left: 30%;"></div>
    <div class="flower-pot" style="top: 40%; left: 70%;"></div>
    <!-- Add more flower pots as needed -->

    <h1>Let the lights of Diwali guide you through the darkness and bring you closer to your dreams.Wishing You a Happy Diwali,  to All</h1>
    <h2>"Embrace the light within you, and let it shine bright. May this Diwali bring joy, prosperity, and success to your life."</h2>
    <h2> "Stay blessed, stay positive, and continue to spread the light of happiness. Happy Diwali!" </h2>
</body>
</html>
