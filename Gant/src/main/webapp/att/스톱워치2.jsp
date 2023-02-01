<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<title>Insert title here</title>
<script>
$(document).ready(function(){
	let time = 0;
	let watch1 = $("#1");
	let watch2 = $("#2");
	let watch3 = $("#3");
	   
	        // time은 스톱워치의 경우 0으로 두고 time++;
	        // time은 타이머의 경우 남은 시간을 초 단위로 두고 time--;
	        // 차이를 눈으로 보기 위해 (i*100)을 추가했고, 실제로는 표현하려는 시작 시간을 넣으셔야 됩니다.
	        //let time = 0 + (i*100); 
	        startTimer(time, $("#1")); // 각 타이머 생성
	
	/* function setInterval(){
	    // HTML의 name을 기준으로 array 생성
	    let arr = document.getElementsByName("stopWatch");
	   
	    for(let i=0; i<arr.length; i++){
	        // time은 스톱워치의 경우 0으로 두고 time++;
	        // time은 타이머의 경우 남은 시간을 초 단위로 두고 time--;
	        // 차이를 눈으로 보기 위해 (i*100)을 추가했고, 실제로는 표현하려는 시작 시간을 넣으셔야 됩니다.
	        //let time = 0 + (i*100); 
	        let time = 0;
 	        startTimer(time, arr[i]); // 각 타이머 생성
	    }
	} */
	
	
	function startTimer(time, obj){
	    var hour, min, sec;

	    var timer = setInterval(function(){
	        time++; // 1초마다 증가, 타이머의 경우 time--;

	        min = Math.floor(time/60);
	        hour = Math.floor(min/60);
	        sec = time%60;
	        min = min%60;

	        var th = hour;
	        var tm = min;
	        var ts = sec;
	        
	        // 한자리일 경우 처리
	        if(th < 10){
	            th = "0" + hour;
	        }
	        if(tm < 10){
	            tm = "0" + min;
	        }
	        if(ts < 10){
	            ts = "0" + sec;
	        }

	        // 함수 호출 당시 받은 object의 html 교체
	        obj.innerHTML = th + ":" + tm + ":" + ts;
	    }
	, 1000);
	}

});

</script>
</head>
<body>
	<div> 남은시간 : <p id="1" > 00:00:00 </p></div>
	<div> 남은시간 : <p id="2"> 00:00:00 </p></div>
	<div> 남은시간 : <p id="3" > 00:00:00 </p></div>
	<button type="button" id="start">시작</button>
</body>
</html>