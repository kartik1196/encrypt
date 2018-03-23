
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta name="robots" content="noindex, nofollow">
  <meta name="googlebot" content="noindex, nofollow">
  <meta name="viewport" content="width=device-width, initial-scale=1">


  <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
 
  

  

  <style type="text/css">
    
  </style>

  <title></title>

  
    




<script type='text/javascript'>//<![CDATA[
$(window).load(function(){
$('.check').click(function(){
    $("#text").val('');
    $(".check").each(function(){
        if($(this).prop('checked')){
            
            $("#text").val($("#text").val()+$(this).val());
        }
    });
});
});//]]> 

</script>

  
</head>

<body>
  <div align="center">
<b>A<input type="checkbox" name="a" class="check" value="a"></b>
<b>B<input type="checkbox" name="b" class="check" value="b"></b>
<b>B<input type="checkbox" name="c" class="check" value="c"></b>
<b>D<input type="checkbox" name="d" class="check" value="d"></b>
</div>
<table align="center">
<tr>
<td>Text:</td>
<td><input type="text" name="text" id="text"></td>
</tr>
</table>
  


</body>

</html>

