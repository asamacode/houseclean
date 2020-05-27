<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="">
      <div class="container">
        <div class="row">
          <div class="col-lg-5 align-self-end">
            <img src="static/images/img_transparent.png" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-7 align-self-center mb-5">

            <div class="bg-black  quote-form-wrap wrap text-white">
              <div class="mb-5">
                <h3 class="section-subtitle">Đặt lịch</h3>
                <h2 class="section-title mb-4"><strong>Tư vấn & Khảo sát</strong></h2>
              </div>
              <form action="#" class="quote-form">
                <div class="row">
                  <div class="col-md-12 form-group">
                    <input type="text" class="form-control" placeholder="Tên của bạn">
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 form-group">
                    <input type="text" class="form-control" placeholder="Địa chỉ mail">
                  </div>
                  <div class="col-md-6 form-group">
                    <input type="text" class="form-control" placeholder="Số điện thoại">
                  </div>
                </div>
                
                <div class="row">
                  <div class="col-md-6 form-group date" data-provide="datepicker" data-date-format="dd/mm/yyyy">
				    <input type="text" class="form-control" placeholder="Ngày khảo sát">
				    <div class="input-group-addon">
				        <span class="glyphicon glyphicon-th"></span>
				    </div>
				</div>
                  <div class="col-md-6 form-group">
				    <select class="form-control" id="exampleForm">
				      <option value="none" selected="selected"> -- Chọn khung giờ --</option>	
				      <option>7h-9h</option>
				      <option>9h-11h</option>
				      <option>11h-13h</option>
				      <option>13h-15h</option>
				      <option>15h-17h</option>
				      <option>17h-19h</option>
				      <option>Trong giờ hành chính</option>
				      <option>Ngoài giờ hành chính</option>
				    </select>
				  </div>
                </div>

                <div class="row">
                  <div class="col-md-12 form-group">
                    <textarea name="" class="form-control" id="" placeholder="Nhập nhu cầu của bạn" cols="30" rows="7"></textarea>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-4 form-group align-self-end">
                    <input type="submit" class="btn btn-primary btn-block btn-lg rounded-0" value="Đặt lịch hẹn">
                  </div>
                </div>
                
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script>
        $('#timepicker').timepicker();
    </script>
