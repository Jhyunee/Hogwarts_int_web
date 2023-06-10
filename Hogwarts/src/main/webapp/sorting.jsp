<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" ></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@700&display=swap" rel="stylesheet">
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="./resources/css/styles_sorting.css" rel="stylesheet" />
<title>House Sorting</title>
</head>
<body>
<!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
        <div class="container px-4 px-lg-5">
            <a class="navbar-brand" href="./final.jsp">Main Page</a>
        </div>
    </nav>
    
<!-- Page Header-->
    <header class="masthead" style="background-image: url('./resources/html/dorm.jpg')">
        <div class="container position-relative px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <div class="site-heading">
                        <h1>Test your House!</h1><br>
                        <h5>질문에 답하고 당신의 기숙사를 알아보세요.</h5>
                    </div>
                </div>
            </div>
        </div>
    </header>

<!-- Main Content-->
	<form action="./processSorting.jsp" name="question" method="post">
	
    <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-md-10 col-lg-8 col-xl-7">
             
            <!-- Questions -->
            <div class="post-preview">
                <h2 class="post-title">Question 1</h2><br>
                <h4 class="post-subtitle">기회가 주어진다면, 어떠한 마법약을 발명하겠는가?</h4><br>
                <p class="post-meta">
                    <input type="radio" name="q1" value="H"> 사랑 &emsp;&emsp; 
                    <input type="radio" name="q1" value="G"> 영광 &emsp;&emsp;
                    <input type="radio" name="q1" value="R"> 지혜 &emsp;&emsp; 
                    <input type="radio" name="q1" value="S"> 힘 &emsp;&emsp; 
                </p>
            </div><hr class="my-4" />
            
            <div class="post-preview">
                <h2 class="post-title">Question 2</h2><br>
                <h4 class="post-subtitle">당신은 역사에 어떻게 기록되고 싶은가?</h4><br>
                <p class="post-meta">
                    <input type="radio" name="q2" value="H"> 선한 사람 &emsp;&emsp; 
                    <input type="radio" name="q2" value="G"> 용감한 사람 &emsp;&emsp;
                    <input type="radio" name="q2" value="R"> 현명한 사람 &emsp;&emsp; 
                    <input type="radio" name="q2" value="S"> 위대한 사람 &emsp;&emsp; 
                </p>
            </div><hr class="my-4" />
            
            <div class="post-preview">
                <h2 class="post-title">Question 3</h2><br>
                <h4 class="post-subtitle">당신이 가장 끌리는 길은?</h4><br>
                <p class="post-meta">
                    <input type="radio" name="q3" value="H"> 나뭇잎이 흩날리는 오솔길 <br>
                    <input type="radio" name="q3" value="G"> 햇살이 내리쬐는 탁 트인 풀길 <br>
                    <input type="radio" name="q3" value="R"> 오래된 건물이 줄지어있는 거리 <br>
                    <input type="radio" name="q3" value="S"> 전등이 옅게 켜진 어두운 골목 <br> 
                </p>
            </div><hr class="my-4" />
            
            <div class="post-preview">
                <h2 class="post-title">Question 4</h2><br>
                <h4 class="post-subtitle">당신이 가장 견디기 힘든 것은?</h4><br>
                <p class="post-meta">
                    <input type="radio" name="q4" value="H"> 외로움 &emsp;&emsp; 
                    <input type="radio" name="q4" value="G"> 지루함 &emsp;&emsp;
                    <input type="radio" name="q4" value="R"> 부족함 &emsp;&emsp; 
                    <input type="radio" name="q4" value="S"> 무시당함 &emsp;&emsp; 
                </p>
            </div><hr class="my-4" />
            
            <div class="post-preview">
                <h2 class="post-title">Question 5</h2><br>
                <h4 class="post-subtitle">본인에 대해 가장 듣고 싶지 않은 평가는?</h4><br>
                <p class="post-meta">
                    <input type="radio" name="q5" value="H"> 이기적이다 &emsp;&emsp; 
                    <input type="radio" name="q5" value="G"> 비겁하다 &emsp;&emsp;
                    <input type="radio" name="q5" value="R"> 무지하다 &emsp;&emsp; 
                    <input type="radio" name="q5" value="S"> 평범하다 &emsp;&emsp; 
                </p>
            </div><hr class="my-4" />
            
            <div class="post-preview">
                <h2 class="post-title">Question 6</h2><br>
                <h4 class="post-subtitle">호그와트에 입학한다면 가장 기대되는 과목은?</h4><br>
                <p class="post-meta">
                    <input type="radio" name="q6" value="H"> 마법생물 수업 &emsp;&emsp; 
                    <input type="radio" name="q6" value="G"> 비행 수업 &emsp;&emsp;
                    <input type="radio" name="q6" value="R"> 모든 마법 수업 &emsp;&emsp; 
                    <input type="radio" name="q6" value="S"> 저주 주문 수업 &emsp;&emsp; 
                </p>
            </div><hr class="my-4" />
            
            <div class="post-preview">
                <h2 class="post-title">Question 7</h2><br>
                <h4 class="post-subtitle">당신이 능력을 가질 수 있다면, 선택할 것은?</h4><br>
                <p class="post-meta">
                    <input type="radio" name="q7" value="H"> 동물과 이야기할 수 있는 능력 <br>
                    <input type="radio" name="q7" value="G"> 과거를 바꿀 수 있는 능력 <br>
                    <input type="radio" name="q7" value="R"> 마음을 읽을 수 있는 능력 <br>
                    <input type="radio" name="q7" value="S"> 초인적인 힘 <br> 
                </p>
            </div><hr class="my-4" />
            
            <div class="post-preview">
                <h2 class="post-title">Question 8</h2><br>
                <h4 class="post-subtitle">당신에게 편안함을 주는 향은?</h4><br>
                <p class="post-meta">
                    <input type="radio" name="q8" value="H"> 집 냄새 &emsp;&emsp; 
                    <input type="radio" name="q8" value="G"> 모닥불 냄새 &emsp;&emsp;
                    <input type="radio" name="q8" value="R"> 양피지 냄새 &emsp;&emsp; 
                    <input type="radio" name="q8" value="S"> 바다 냄새 &emsp;&emsp; 
                </p>
            </div><hr class="my-4" />
             
            <div class="post-preview">
                <h2 class="post-title">Question 9</h2><br>
                <h4 class="post-subtitle">마지막으로, 어떤 기숙사에 속하고 싶은가?</h4><br>
                <p class="post-meta">
                	<input type="radio" name="q8" value="G"> 그리핀도르 &emsp;&emsp;
                	<input type="radio" name="q8" value="S"> 슬리데린 &emsp;&emsp;
                    <input type="radio" name="q8" value="H"> 후플푸프 &emsp;&emsp; 
                    <input type="radio" name="q8" value="R"> 레번클로 &emsp;&emsp; 
                </p>
            </div>
            <br>
            <p> <input class="btn btn-outline-dark" type="submit" value="SUBMIT">
            <p class="post-meta" style="text-align: right;"> * 해당 테스트는 공식 해리포터 웹사이트 <br>
            <a href="https://www.wizardingworld.com/">PotterMore</a>
            	를 참고하여 만들어졌습니다.
            
            </div>
        </div>
    </div>
        		
	
	
	</form>

</body>
</html>