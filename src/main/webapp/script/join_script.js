function checkBox(f) {

	if (f.agree.checked == false) {
		alert('동의하지 않으면 다음으로 이동할수 없습니다.');
		return false;
	}
	return true;

}
