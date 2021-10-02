<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Weather Api</title>
</head>

<body>
	<script type="text/javascript"></script>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>

	<script>
		$.getJSON('https://api.openweathermap.org/data/2.5/weather?q=Seoul&appid=eee038bcc405e706ccb79c12e89fbd81&units=metric',
			function(result) {

		$('.ctemp').append(result.main.temp);
		$('.lowtemp').append(result.main.temp_min);
		$('.hightemp').append(result.main.temp_max);
			var wiconUrl = '<img src="http://openweathermap.org/img/wn/'+result.weather[0].icon+ 
         '.png" alt="' + result.weather[0].description + '">'
		$('.icon').html(wiconUrl);

			var ct = result.dt;

			function convertTime(t) {
				var date = new Date(t * 1000);
                //Tue Apr 06 2021 15:28:58 GMT+0900 (대한민국 표준시)
                var year = date.getFullYear();
                var month = "0" + (date.getUTCMonth() + 1);
                var day = "0" + date.getDate();
                var hour = "0" + date.getHours();
                var minute = "0" + date.getMinutes();
                var second = "0" + date.getSeconds();


                return year + '/' + month.substr(-2) + '/' + day.substr(-2) + ' ' + hour.substr(-2) + ':' +
                    minute.substr(-2) + ':' + second.substr(-2);
            }
            var currentTime = convertTime(ct); //커런트타임은 컨버트타임으로 바꿔준다.파라미터는 웨더데이트
            $('.time').append(currentTime); //thistime을 convertTime으로 형변환한 weatherdate을 붙여준다.



        });
		//년 월 일 시 로 바꾸기 
		
	/*
	
	  function Unix_timestamp(t) {
                    var date = new Date(t * 1000);
                    //Tue Apr 06 2021 15:28:58 GMT+0900 (대한민국 표준시)
                    var year = date.getFullYear();
                    var month = "0" + (date.getUTCMonth() + 1);
                    var day = "0" + date.getDate();
                    var hour = "0" + date.getHours();
                    var minute = "0" + date.getMinutes();
                    var second = "0" + date.getSeconds();


                    return year + '/' + month.substr(-2) + '/' + day.substr(-2) + ' ' + hour.substr(-2) + ':' +
                        minute.substr(-2) + ':' + second.substr(-2);
                }
                var currentTime = Unix_timestamp(ct); //커런트타임은 컨버트타임으로 바꿔준다.파라미터는 웨더데이트
                $('.thistime').append(currentTime); //thistime을 convertTime으로 형변환한 weatherdate을 붙여준다.



            });
	
	*/
		
	</script>
	
	<script>
	//import java.net.URL;
	//import java.net.URLEncoder;
	//import java.io.BufferedReader;
	//import java.io.InputStreamReader;
	//import org.json.simple.JSONArray;
	//import org.json.simple.JSONObject;
	//import org.json.simple.parser.JSONParser;
	
	$.ajax(function(){
		url: "http://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty?sidoName=서울&pageNo=1&numOfRows=100&returnType=JSON&serviceKey=okJR2mnA1Rzmmk7CjZYkoyCo5Rl8TOuU4%2FIbVsOhh%2F6aZSGHZ1TQ%2BcHnM0LxasBAl7RZv5glsiirPyxly%2FjMAA%3D%3D&ver=1.0",
		type: get json,
		contentType:,
		data:,
		dataType:,
		async:,
		success: function(){},
		error: function(){},
	
	});
	
	
	
	$.getJSON("http://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty?sidoName=서울&pageNo=1&numOfRows=100&returnType=JSON&serviceKey=okJR2mnA1Rzmmk7CjZYkoyCo5Rl8TOuU4%2FIbVsOhh%2F6aZSGHZ1TQ%2BcHnM0LxasBAl7RZv5glsiirPyxly%2FjMAA%3D%3D&ver=1.0",
			function(data) {
		$.ajax({
			url: "http://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty?sidoName=서울&pageNo=1&numOfRows=100&returnType=JSON&serviceKey=okJR2mnA1Rzmmk7CjZYkoyCo5Rl8TOuU4%2FIbVsOhh%2F6aZSGHZ1TQ%2BcHnM0LxasBAl7RZv5glsiirPyxly%2FjMAA%3D%3D&ver=1.0",
			method: "post",
			data:{"obj",JSON.stringify(data)},
			success: function(){},
		
		})
		
		
		/*
		
		const item = result.response.body;
		console.log(item);
		var teset = JSON.stringify(result);
		console.log(teset);		
		
		/*
		$('.dTime').append(result.response.body.items.[0].dataTime); //sysdate
		var test = result.response.body.items.[0].dataTime;
		console.log(test);
		$('.sdName').append(result.response.body[1].items.[0].sidoName); //시도
		$('.stName').append(result.response.body.items.[].stationName); //구
		$('.khaiGrade').append(result.response.body.items.[].khaiGrade); //통합대기환경지수
		$('.pm10Grade1h').append(result.response.body.items.[].pm10Grade1h); //미세먼지
		$('.pm25Grade1h').append(result.response.body.items.[].pm25Grade1h); //초미세먼지
			*/
        });
	
	// JSON parser 만들어 문자열 데이터를 객체화해주고
    //JSONParser parser = new JSONParser();
   // JSONObject obj = (JSONObject)parser.parse(result);
    
    // list 아래를 배열형태로
    // 
    //JSONArray parse_listArr = (JSONArray)obj.get("list");
    
    // 객체형태로


        
	</script>


	<h2>날씨 미세먼지</h2>

	<h5>오늘의 날씨</h5>
	<h5 class="icon">
		<img alt="" src="http://openweathermap.org/img/wn/10d.png">
	</h5>

	<h5 class="time">현재 시간 :</h5>
	<h5 class="ctemp">현재 온도 (℃):</h5>
	<h5 class="lowtemp">최저 온도 (℃):</h5>
	<h5 class="hightemp">최고 온도 (℃):</h5>
	
	<br>

	<h2>미세먼지</h2>
	<h5 class="dTime">실시간 :</h5>
	<h5 class="sdName">지역 : </h5>시 <h5 class="stName"> 도</h5>
	<h5 class="khaiGrade">통합 대기 환경 지수 :</h5>
	<h5 class="pm10Grade1h">미세먼지 수치 : (1시간 이내)</h5>
	<h5 class="pm25Grade1h">초미세먼지 수치 : (1시간 이내)</h5>
	<br>
	<h3 class="grade">미세먼지 수치 등급 : 1- 좋음, 2- 보통, 3-나쁨, 4-매우나쁨 </h3>
	
	<br>
	<br>


</body>
</html>