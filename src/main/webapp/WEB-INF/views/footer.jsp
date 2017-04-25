<script type="text/javascript">
		var $body = $(document.body);
		var navHeight = $('.navbar').outerHeight(true) + 10;
		$('#sidebar,#comments').affix({
			offset : {
				top : 245,
				bottom : navHeight
			}
		});
		$body.scrollspy({
			target : '#leftCol',
			offset : navHeight
		});
		$body.scrollspy({
			target : '#rightCol',
			offset : navHeight
		});
	</script>

</body>
</html>
