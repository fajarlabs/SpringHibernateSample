<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="<c:url value="/assets/js/jquery.min.js" />"></script>
<script src="<c:url value="/assets/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/assets/js/scripts.js" />"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.0/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript">
	$('#tgl_kdtgn').datepicker();
	$('#tgl_lhr').datepicker();
	$('#tgl_awal').datepicker();
	$('#tgl_akhir').datepicker();
</script>

</body>
</html>