<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="layoutAuthentication">
    <div id="layoutAuthentication_content">
        <main>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-12">
                        <div class="card shadow-lg border-0 rounded-lg mt-5">
                            <div class="card-header">
                                <h3 class="text-center font-weight-light my-4">Thông tin dịch vụ</h3>
                            </div>
                            <div class="card-body">
                                <h4>${message}</h4>
                                <form:form action="/manager/services/edit" modelAttribute="service" method="post"
                                    enctype="multipart/form-data">
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <div class="form-group"><label class="small mb-1" for="inputServiceName">Tên
                                                    dịch vụ</label>
                                                <form:input path="id" type="hidden"  />
                                                <form:input path="name" class="form-control py-4" id="inputServiceName"
                                                    type="text" placeholder="Enter service name" />
                                                <form:errors path="name" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputImage">Hình ảnh</label>
                                            <input name="photo_file" class="form-control" id="inputImage" type="file" />
                                            <img style="height: 100px; width: 80px;" src="<c:url value='/static/images/services/${service.image}' />" >
											<form:input type="hidden" path="image" value="${service.image}" />
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-12">
                                            <div class="form-group"><label class="small mb-1" for="inputIntro">Giới
                                                    thiệu</label>
                                                <form:input path="introduce" class="form-control py-4" id="inputIntro"
                                                    type="text" placeholder="Enter introduce" />
                                                <form:errors path="introduce" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-12">
                                            <div class="form-group"><label class="small mb-1" for="inputDes">Mô tả chi
                                                    tiết</label>
                                                <form:textarea path="description" class="form-control py-4"
                                                    id="inputDes" placeholder="Enter full description" rows="5" />
                                                <form:errors path="description" />
                                            </div>
                                        </div>


                                    </div>
                                    <div class="form-row">
                                        <div class="form-group">
                                            <label>Dịch vụ nổi bật ? </label>
                                            <div class="form-control">
                                                <form:radiobutton checked="${service.special == true ? 'checked':''}" path="special" value="true" label="Có" />
                                                <form:radiobutton checked="${service.special == false ? 'checked':''}" path="special" value="false" label="Không" />
                                            </div>

                                        </div>

                                    </div>

                            </div>

                            <div class="form-group mt-4 mb-0"><button class="btn btn-primary btn-block"
                                    type="submit">Cập nhật dịch vụ</button></div>
                            </form:form>
                        </div>

                    </div>
                </div>
            </div>
    </div>
    </main>
</div>
<script type="text/javascript">
    //<![CDATA[
    bkLib.onDomLoaded(function () { nicEditors.allTextAreas() });
</script>