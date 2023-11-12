<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diwali Celebration</title>
    <style>
        body {
            margin: 0;
            overflow: hidden;
        }

        canvas {
            display: block;
        }

        h1 {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 2.5em;
            color: #fff;
            z-index: 2;
        }

        h2 {
            position: absolute;
            top: 70%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 1.8em;
            color: #fff;
            z-index: 2;
        }
    </style>
</head>
<body>
    <canvas id="fireworksCanvas"></canvas>
    <h1>Wishing You a Happy Diwali, Mahadev! 🎇</h1>
    <h2>"Embrace the light within you, and let it shine bright. May this Diwali bring joy, prosperity, and success to your life."</h2>

    <script>
        // Fireworks logic
        document.addEventListener('DOMContentLoaded', function () {
            const canvas = document.getElementById('fireworksCanvas');
            const ctx = canvas.getContext('2d');
            canvas.width = window.innerWidth;
            canvas.height = window.innerHeight;

            function Firework() {
                this.x = Math.random() * canvas.width;
                this.y = canvas.height;
                this.color = getRandomColor();
                this.radius = 3;
                this.velocity = {
                    x: Math.random() * 6 - 3,
                    y: -Math.random() * 15 - 5
                };
                this.life = false;
            }

            Firework.prototype.draw = function () {
                ctx.beginPath();
                ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2);
                ctx.fillStyle = this.color;
                ctx.fill();
            };

            Firework.prototype.update = function () {
                this.x += this.velocity.x;
                this.y += this.velocity.y;
                this.velocity.y += 0.2;

                if (this.radius > 0.2) {
                    this.radius -= 0.1;
                } else {
                    this.life = true;
                }
            };

            const fireworks = [];

            function getRandomColor() {
                const letters = '0123456789ABCDEF';
                let color = '#';
                for (let i = 0; i < 6; i++) {
                    color += letters[Math.floor(Math.random() * 16)];
                }
                return color;
            }

            function createFirework() {
                const firework = new Firework();
                fireworks.push(firework);
            }

            function animate() {
                ctx.clearRect(0, 0, canvas.width, canvas.height);

                if (Math.random() < 0.03) {
                    createFirework();
                }

                for (let i = fireworks.length - 1; i >= 0; i--) {
                    fireworks[i].draw();
                    fireworks[i].update();

                    if (fireworks[i].life) {
                        fireworks.splice(i, 1);
                    }
                }

                requestAnimationFrame(animate);
            }

            animate();
        });
    </script>
</body>
</html>
