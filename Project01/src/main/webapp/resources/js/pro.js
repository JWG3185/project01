// 휠을 굴렸을 때 스크롤이 되지 않도록 wheel의 기본 이벤트인 scroll를 제거
// 패시브모드를 해제
window.addEventListener("wheel", function(e){
    e.preventDefault();
},{passive : false});

// 참조하는 요소 미리 탐색 및 선언
var $html = $("html");

// 뷰포트에 표시되는 페이지의 번호
var page = 1;

// 마지막 페이지의 번호 
var lastPage = $(".content").length;

// 문서(페이지)가 로드되면 첫 페이지 시작
$html.animate({scrollTop:0},10);


// 휠을 굴리면 다음 페이지, 이전 페이지
// 이벤트 핸들러로 마우스 휠을 굴리면 발생하는 이벤트
$(window).on("wheel", function (e) {
    // 아래에서 호출된 .animate 메서드로 생성된 스크롤 효과가 쌓이지 않도록 스크롤이 진행되는 동안 발생하는 wheel 이벤트는 무시
    if ($html.is(":animated")) return;

    // e(jQuery가 반환) .originalEvent(자바스크립트에서의 원래 이벤트) 
    // .deltaY(마우스 휠을 어느 방향으로 얼만큼을 굴렸는지 → 양수이면 아래쪽으로 굴린 거, 음수이면 위쪽으로 굴린 거다)
    if (e.originalEvent.deltaY > 0) {
        if (page == lastPage) return;       // 마지막 페이지인 경우에는 이벤트 핸들러 종료(스크롤될 것이 없으니 마지막에서 멈춰!!)
        page++;                             // 스크롤을 아래로 했으면 페이지 +1
    } else if (e.originalEvent.deltaY < 0) {
        if (page == 1) return;              // 첫 번째 페이지인 경우에도 이벤트 핸들러 종료(올라갈 곳이 없으니 첫 번째에서 멈춰!!)
        page--;                             // 스크롤을 위로 올렸으면 -1씩 시키기
    }

    var posTop = (page - 1) * $(window).height(); // 이동할 페이지의 번호에 스크롤할 위치 계산

    $html.animate({ scrollTop: posTop }, function () {
        // 스크롤 애니메이션이 완료된 후에 애니메이션 시작
        if (page == 2) {
            // 페이지가 2인 경우에만 숫자 애니메이션 시작
            $('.nums').each(function () {
                const $this = $(this),
                    countTo = $this.attr('data-count');
                $({
                    countNum: $this.text()
                }).animate({
                    countNum: countTo
                }, {
                    duration: 3000,
                    easing: 'linear',
                    step: function () {
                        $this.text(Math.floor(this.countNum));
                    },
                    complete: function () {
                        $this.text(this.countNum);
                    }
                });
            });
        }
    });
});

