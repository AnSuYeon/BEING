$(function() {
                
                //datepicker 한국어로 사용하기 위한 언어설정
                $.datepicker.setDefaults($.datepicker.regional['ko']); 
                
                // 시작일(dateStart)은 종료일(dateDone) 이후 날짜 선택 불가
                // 종료일(dateDone)은 시작일(dateStart) 이전 날짜 선택 불가

                //시작일.
                $('#dateStart').datepicker({
                    showOn: "both",                     // 달력을 표시할 타이밍 (both: focus or button)
                    buttonImage: "<%=request.getContextPath()%>/resources/img/calendar.gif", // 버튼 이미지
                    buttonImageOnly : true,             // 버튼 이미지만 표시할지 여부
                    buttonText: "날짜선택",             // 버튼의 대체 텍스트
                    dateFormat: "yy-mm-dd",             // 날짜의 형식
                    changeMonth: true,                  // 월을 이동하기 위한 선택상자 표시여부
                    minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
                    onClose: function( selectedDate ) {    
                        // 시작일(dateStart) datepicker가 닫힐때
                        // 종료일(dateDone)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                        $("#dateDone").datepicker( "option", "minDate", selectedDate );
                    }                
                });

                //종료일
                $('#dateDone').datepicker({
                    showOn: "both", 
                    buttonImage: "<%=request.getContextPath()%>/resources/img/calendar.gif", 
                    buttonImageOnly : true,
                    buttonText: "날짜선택",
                    dateFormat: "yy-mm-dd",
                    changeMonth: true,
                    minDate: 0, // 오늘 이전 날짜 선택 불가
                    onClose: function( selectedDate ) {
                        // 종료일(dateDone) datepicker가 닫힐때
                        // 시작일(dateStart)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
                        $("#dateStart").datepicker( "option", "maxDate", selectedDate );
                    }                
                });
            });