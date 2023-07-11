</div>
<div class="footer_">
    <div class="wrapper">	
        <div class="section footer_group">
                <div class="footer_1">
                        <h4>WinX</h4>
                        <ul>
                            <li><p>WinX là doanh nghiệp chuyên cung cấp thiết bị, giải pháp về máy tính, thiết bị chơi game, thiết bị công nghệ cao cấp hàng đầu Việt Nam</p></li>
                            <li><p>Hãy kết nối với chúng tôi</p></li>
                        </ul>
                    </div>
                <div >
                    <h4>HỆ THỐNG CỬA HÀNG</h4>
                        <ul>
                            <li><p>52 An Dương Vương , P.12 , Q.5 , TP.HCM</p></li>
                            <li><p>283 Lê Văn Sỹ , P.10 , Q.3 , TP.HCM</p></li>
                            <li><p>696 Lạc Long Quân , P.2 , Q.11 , TP.HCM</p></li>
                        </ul>
                </div>
                <div >
                    <h4>HỆ THỐNG TỔNG ĐÀI</h4>
                        <ul>
                            <li><p>Gọi mua hàng : 1900 9999</p></li>
                            <li><p>Gọi tư vấn : 1900 7572</p></li>
                            <li><p>Gọi đánh giá : 1900 3321</p></li>
                        </ul>
                </div>
            </div>
            <div class="copy_right">
                <p>Nhập môn công nhệ phần mềm &amp; HKII-2022 </p>
        </div>
    </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function() {
            /*
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
            };
            */
            
            $().UItoTop({ easingType: 'easeOutQuart' });
            
        });
    </script>
    <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
    <link href="css/flexslider.css" rel='stylesheet' type='text/css' />
    <script defer src="js/jquery.flexslider.js"></script>
    <script type="text/javascript">
        $(function(){
        SyntaxHighlighter.all();
        });
        $(window).load(function(){
        $('.flexslider').flexslider({
            animation: "slide",
            start: function(slider){
            $('body').removeClass('loading');
            }
        });
        });
    </script>
</body>
</html>
