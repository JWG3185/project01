//숫자 카운트 애니메이션
$('.nums').each(function () {
    
    const $this = $(this),
        countTo = $this.attr('data-count');

    $({countNum: $this.text()}).animate(
        {countNum: countTo}, 
        {
        duration: 3000,         // 3초
        easing: 'linear',       // 일정한 속도의 애니메이션
        step: function () {
            $this.text(Math.floor(this.countNum));
        },
        complete: function () {
            $this.text(this.countNum);
        }
        }
    );

});
