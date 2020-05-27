<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="layoutAuthentication">
    <div id="layoutAuthentication_content">
        <main>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-12">
                        <div class="card shadow-lg border-0 rounded-lg mt-5">
                            <div class="card-header">
                                <h3 class="text-center font-weight-light my-4">Thông tin Bài viết</h3>
                            </div>
                            <div class="card-body">
                                <h4>${message}${param.message}</h4>
                                <form:form action="/manager/news/edit" modelAttribute="news" method="post"
                                    enctype="multipart/form-data">
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            <label class="small mb-1" for="inputServiceName">
                                            	Tiêu đề bài viết
                                            </label>
                                            	<form:input path="id" type="hidden" />
                                               	<form:input path="timePost" type="hidden" />
                                               	<form:input path="account.id" type="hidden" />
                                                <form:input path="title" class="form-control py-4" id="inputServiceName"
                                                    type="text" placeholder="Enter title" />
                                                <form:errors path="title" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="small mb-1" for="inputImage">Hình ảnh</label>
                                            <input name="news_photo" class="form-control" id="inputImage" type="file" />
											<img style="height:200px;width:200px;" src="<c:url value='/static/images/news/${news.image}'/>" />
											<form:input type="hidden" path="image" />
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
                                            <label>Danh mục </label>
                                            <div class="form-control">
                                                <form:select path="newsCategory.id">
                                                	<form:options items="${cats}" itemLabel="name" itemValue="id"/>
                                                </form:select>
                                            </div>

                                        </div>

                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-12">
                                            <div class="form-group"><label class="small mb-1" for="inputIntro">Tag</label>
                                                <form:input path="tag" class="form-control py-4" id="inputIntro"
                                                    type="text" placeholder="Enter tag" />
                                                <form:errors path="tag" />
                                            </div>
                                        </div>
                                    </div>

                            </div>

                            <div class="form-group mt-4 mb-0"><button class="btn btn-primary btn-block"
                                    type="submit">Chỉnh sửa bài viết</button></div>
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