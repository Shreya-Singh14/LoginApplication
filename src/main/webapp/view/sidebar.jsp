<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        .sidebar {
            width: 200px;
            height: 100%;
            position: fixed;
            top: 0;
            left: 0;
            background-color: red;
            color: black;
            padding: 20px;
        }
        .sidebar a {
            display: block;
            color: #fff;
            text-decoration: none;
            padding: 10px 15px;
            margin-bottom: 10px;
            transition: background-color 0.3s ease;
        }
        .sidebar a:hover {
            background-color: #555;
        }
        .accordion {
            background-color: #444;
            color: #fff;
            cursor: pointer;
            padding: 10px;
            border: none;
            text-align: left;
            outline: none;
            font-size: 15px;
            width: 100%;
            border-radius: 5px;
            margin-bottom: 5px;
        }
        .active, .accordion:hover {
            background-color: #666;
        }
        .panel {
            display: none;
            overflow: hidden;
            background-color: #333;
            border-radius: 5px;
        }
        .panel a {
            padding: 10px;
            color: #fff;
            text-decoration: none;
            display: block;
            border-bottom: 1px solid #555;
        }
        .panel a:hover {
            background-color: grey;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <button class="accordion">User</button>
        <div class="panel">
            <a href="/signup">Create User</a>
            <a href="/allusers">View All Users</a>
        </div>
        
        <a href="/login">Logout</a>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var acc = document.getElementsByClassName("accordion");
            for (var i = 0; i < acc.length; i++) {
                acc[i].addEventListener("click", function() {
                    this.classList.toggle("active");
                    var panel = this.nextElementSibling;
                    if (panel.style.display === "block") {
                        panel.style.display = "none";
                    } else {
                        panel.style.display = "block";
                    }
                });
            }
        });
    </script>
</body>
</html>
