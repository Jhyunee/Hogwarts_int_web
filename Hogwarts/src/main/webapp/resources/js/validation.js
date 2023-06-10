function CheckAddProduct(){
	
	var productId = document.getElementById("productId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("price");
	var unitsInStock = document.getElementById("unitsInStock");
	
	//상품코드 체크
	if(!check(/[a-zA-Z]+[a-zA-Z0-9]+$/, productId,
		"[상품코드]\n영문과 숫자의 조합으로 입력하세요.\n첫글자는 반드시 영문으로 시작하세요."))
		return false;
	
	
	//상품명 체크
	if(name.value.length < 1 || name.value.length > 20){
		alert("[상품명]\n최소 1자에서 20자까지 입력하세요.");
		name.select();
		name.focus();
		return false;
	}
	
	
	//상품가격 체크
	if(unitPrice.value.length == 0 || isNaN(unitPrice.value)){
		alert("[가격]\n숫자만 입력하세요.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}

	if(unitPrice.value < 0){
		alert("[가격]\n음수는 입력할 수 없습니다.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	
	//재고수 체크
	if(isNaN(unitsInStock.value)){
		alert("[재고 수]\n숫자만 입력하세요.");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}
	
	
	function check(regExp, e, msg){
		if(regExp.test(e.value))
			return true;
		
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	document.newProduct.submit();
}