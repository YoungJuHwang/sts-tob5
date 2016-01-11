<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>

$(function() {
	 AdminBook.init(context+'/admin/book_reg'); 
});

var AdminBook ={
	init : function(url) {
		$.getJSON(url,
		function(data) {
	var table ='<div class="container"><div class="row">'
	+'<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">'
	+'<form role="form"><h2 style="margin-left: 220px;">책 등록</h2><hr class="colorgraph">'
	+'<div class="row"><div class="col-xs-12 col-sm-6 col-md-6"><div class="form-group">'
	+'<input type="text" name="bookId" id="bookId" class="form-control input-lg" placeholder="책 아이디" tabindex="1" style="width: 450px;">'
	+'</div></div>'
	+'<div class="row"><div class="col-xs-12 col-md-6">'
	+'<a href="#" class="btn btn-success btn-block btn-lg" style="width: 100px; float: right; margin-right: 15px;">중복확인</a>'
	+'</div></div></div>'
	+'<div class="form-group">'
	+'<input type="text" name="bookName" id="bookName" class="form-control input-lg" placeholder="책 이름" tabindex="3"></div>'
	+'<div class="form-group">'
	+'<input type="text" name="bookPrice" id="bookPrice" class="form-control input-lg" placeholder="가격" tabindex="4"></div>'
	+'<div class="form-group">'
	+'<input type="text" name="writer" id="writer" class="form-control input-lg" placeholder="작가" tabindex="5"></div>'
	+'<div class="form-group">'
	+'<input type="text" name="grade" id="grade" class="form-control input-lg" placeholder="등급" tabindex="6"></div>'
	+'<div class="form-group">'
	+'<input type="text" name="stockSeq" id="stockSeq" class="form-control input-lg" placeholder="재고량" tabindex="7"></div>'
	+'<label class="radio-inline"><input type="radio"name="option" value="md" /> md </label>'
	+'<label class="radio-inline"><input type="radio"name="option" value="free" /> free </label>'
	+'<label class="radio-inline"><input type="radio"name="option" value="var" /> var </label>'
	+'<label class="radio-inline"><input type="radio"name="option" value="foo" /> foo </label>'
	+'<select name="genre" id="genre">'
	+'<option name="genre" value="">장르</option>'
	+'<option name="genre" value="fiction">fiction</option>'
	+'<option name="genre" value="essay">essay</option>'
	+'<option name="genre" value="it">it</option>'
	+'<option name="genre" value="classic">classic</option>'
	+'<option name="genre" value="poem">poem</option></select>'
	+'<div class="row"><div class="col-xs-4 col-sm-3 col-md-3"><span class="button-checkbox">'
	+'<button type="button" class="btn" data-color="info" tabindex="7">I Agree</button>'
	+'<input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1"></span></div>'
	+'<div class="col-xs-8 col-sm-9 col-md-9">'
	+'<strong class="label label-primary">책 등록</strong>을 하기전에 <a href="#" data-toggle="modal" data-target="#t_and_c_m">규정사항</a>을 확인하십시오. </div></div><hr class="colorgraph">'
	+'<div class="row"><div class="col-xs-12 col-md-6">'
	+'<input type="submit" id="reg_book_btn" value="책 등록" class="btn btn-primary btn-block btn-lg" tabindex="2" style="margin-left: 180px; width: 200px;">'
	+'</div></div></form></div></div>'
	+'<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">'
	+'<div class="modal-dialog modal-lg"><div class="modal-content"><div class="modal-header">'
	+'<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>'
	+'<h4 class="modal-title" id="myModalLabel">규정사항</h4></div><div class="modal-body"><p>규정사항 솰라솰라솰라</p></div>'
	+'<div class="modal-footer"><button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>'
	+'</div></div></div></div></div>'
	
	$('.mainView').html(table);
	
	AdminBook.style();
	
	$("#reg_book_btn").click(function(){
		alert('클릭 버튼');
		var bookId = $("#bookId").val();
		var bookName = $("#bookName").val();
		var bookPrice = $("#bookPrice").val();
		var writer = $("#writer").val();
		var grade = $("#grade").val();
		var bookseq = $("#bookseq").val();
		var optionBook = $("input:radio[name=option]:checked").val();
		var genreId = $("select[name=genre] option:selected").val();
		
		if (bookId === "") {
			alert('공란을 채워주세요.');
		} 
		else if(bookName === "") {
			alert('공란을 채워주세요.');
		} 
		else if(bookPrice === "") {
			alert('공란을 채워주세요.');
		} 
		else if(writer === "") {
			alert('공란을 채워주세요.');
		} 
		else if(grade === "") {
			alert('공란을 채워주세요.');
		}
		else if(stockSeq === "") {
			alert('공란을 채워주세요.');
		} 
		else if(optionBook === "") {
			alert('공란을 채워주세요.');
		} 
		else if(genreId === "") {
			alert('공란을 채워주세요.');
		} else {
			bookReg.join();	
		}
		
	});
	
	var bookReg = {
			
			join : function() {
				alert('join book :join');
				var join_book = {
					"bookId" :$("#bookId").val(),
					"bookName" :$("#bookName").val(),
					"bookPrice" :$("#bookPrice").val(),
					"writer" :$("#writer").val(),
					"grade" :$("#grade").val(),
					"stockSeq" :$("#stockSeq").val(),
					"optionBook" :$("input:radio[name=option]:checked").val(),
					"genreId" :$("select[name=genre] option:selected").val()
				};
				
				$.ajax(context + "/admin/book_join",{
					data : JSON.stringify(join_book),
					dataType : "json",
					type : 'post',
					contentType : "application/json;",
					mimeType: "application/json;",
					async : false,
					success : function(data) {
						if(data.result == "success"){
							alert(data.bookName+"책 등록 완료되었습니다.");
							location.href(context+'/admin/main');
						}
						if(data.result == "fail"){
							alert("책 등록 실패하였습니다. 다시 시도해주세요.");
						}
					},
					error : function(xhr, status, msg) {
					}
					
				});
				
				
			}
	};	
	
	
	
	
	$('.button-checkbox').each(function () {

        // Settings
        var $widget = $(this),
            $button = $widget.find('button'),
            $checkbox = $widget.find('input:checkbox'),
            color = $button.data('color'),
            settings = {
                on: {
                    icon: 'glyphicon glyphicon-check'
                },
                off: {
                    icon: 'glyphicon glyphicon-unchecked'
                }
            };

        // Event Handlers
        $button.on('click', function () {
            $checkbox.prop('checked', !$checkbox.is(':checked'));
            $checkbox.triggerHandler('change');
            updateDisplay();
        });
        $checkbox.on('change', function () {
            updateDisplay();
        });

        // Actions
        function updateDisplay() {
            var isChecked = $checkbox.is(':checked');

            // Set the button's state
            $button.data('state', (isChecked) ? "on" : "off");

            // Set the button's icon
            $button.find('.state-icon')
                .removeClass()
                .addClass('state-icon ' + settings[$button.data('state')].icon);

            // Update the button's color
            if (isChecked) {
                $button
                    .removeClass('btn-default')
                    .addClass('btn-' + color + ' active');
            }
            else {
                $button
                    .removeClass('btn-' + color + ' active')
                    .addClass('btn-default');
            }
        }

        // Initialization
        function init() {

            updateDisplay();

            // Inject the icon if applicable
            if ($button.find('.state-icon').length == 0) {
                $button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i>');
            }
        }
        init();
    });
	});
	},
	style : function() {
		$('.colorgraph').css('height','5px').css('border-top','0')
		.css('background','#c4e17f').css('border-radius','5px')
		.css('background-image','-webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4)')
		.css('background-image','-moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4)')
		.css('background-image','-o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4)')
		.css('background-image','linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4)')	
	}
		
};






</script>




