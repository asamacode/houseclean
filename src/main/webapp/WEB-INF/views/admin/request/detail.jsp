<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>>
<style>
body {
	background: grey;
}
card {
    margin: 120px;
}
@page { size: auto;  margin: 0mm; }
@media print
{
body * { visibility: hidden; }
#printcontent * { visibility: visible; }
#printcontent { position: absolute; top: 40px; left: 30px; }
}
</style>

<div class="toolbar hidden-print">
        <div class="text-right">
            <button id="printInvoice" class="btn btn-info"><i class="fa fa-print"></i> In / Xuất File PDF</button>
        </div>
        <hr>
    </div>

<div class="container" id="printcontent">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body p-0">
                    <div class="row p-5">
                        <div class="col-md-6">
                            <img src="<c:url value='/static/images/logo.png' />" >
                        </div>

                        <div class="col-md-6 text-right">
                            <p class="font-weight-bold mb-1">Lịch hẹn số #${req.id}</p>
                            <p class="text-muted">Ngày <f:formatDate value="${req.date}" pattern="dd/MM/yyyy"/></p>
                        </div>
                    </div>

                    <hr class="my-5">

                    <div class="row pb-5 p-5">
                        <div class="col-md-6">
                            <p class="font-weight-bold mb-4">Thông tin khách hàng</p>
                            <p class="mb-1">${req.name}</p>
                            <p>${req.email}</p>
                            <p class="mb-1">${req.address}</p>
                            <p class="mb-1">${req.phone}</p>
                        </div>

                        <div class="col-md-6 text-right">
                            <p class="font-weight-bold mb-4">Ghi chú:</p>
                            <p class="mb-1">${req.description}</p>
                            <p class="mb-1"><span class="text-muted">Khung giờ: </span> ${req.time}</p>
                        </div>
                    </div>

                    <div class="row p-5">
                        <div class="col-md-12">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="border-0 text-uppercase small font-weight-bold">STT</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Dịch vụ</th>
                                        <th></th>
                                        <th></th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Ngày làm</th>
                                        <th class="border-0 text-uppercase small font-weight-bold">Giá dự kiến</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td> 
                                    </tr>
                                    <tr>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td> 
                                    </tr>
                                    <tr>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td> 
                                    </tr>
                                    <tr>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td> 
                                    </tr>
                                    <tr>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td> 
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="d-flex flex-row-reverse p-4">
                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Tổng cộng</div>
                            <div class="h2 font-weight-light"></div>
                        </div>

                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Giảm giá</div>
                            <div class="h2 font-weight-light"></div>
                        </div>

                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Thanh toán</div>
                            <div class="h2 font-weight-light"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<script>
$('#printInvoice').click(function(){
    Popup($('#printcontent')[0].outerHTML);
    function Popup(data) 
    {
        window.print();
        return true;
    }
});
</script>


