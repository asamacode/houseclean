<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div id="layoutAuthentication">
    <div id="layoutAuthentication_content">
        <main>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <div class="card shadow-lg border-0 rounded-lg mt-5">
                            <div class="card-header">
                                <h3 class="text-center font-weight-light my-4">Thông tin danh mục</h3>
                            </div>
                            <div class="card-body">
                                <h4>${message}</h4>
                                <form:form action="/manager/newscategory/add" modelAttribute="cat">
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <div class="form-group"><label class="small mb-1" for="inputServiceName">Tên
                                                    danh mục</label>
                                               
                                                <form:input path="name" class="form-control py-4" id="inputServiceName"
                                                    type="text" placeholder="Enter category name" />
                                                <form:errors path="name" />
                                            </div>
                                        </div>
                                     </div>

                            </div>

                            <div class="form-group mt-4 mb-0"><button class="btn btn-primary btn-block"
                                    type="submit">Thêm danh mục</button></div>
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