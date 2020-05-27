<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

   <div class="intro-section site-blocks-cover innerpage" style="background-image: url('<c:url value="/static/images/news/${news.image}" /> ');">
      <div class="container">
        <div class="row align-items-center text-center border">
          <div class="col-lg-12 mt-5" data-aos="fade-up">
            <h1>${news.title}</h1>
            <p class="text-white text-center">
              <a href="/news/list">Trang chủ</a>
              <span class="mx-2">/</span>
              <span>Bài viết</span>
            </p>
          </div>
        </div>
      </div>
    </div>

    

    <section class="site-section">
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-9 blog-content">
                  <p class="lead">${news.description}</p>
                  <div class="pt-5">
                    <p>Categories:  <a href="#">${news.newsCategory.name}</a>,  Tags: ${news.tag}</p>
                  </div>
      
      
                  <div class="pt-5">
                    <h3 class="mb-5">6 Comments</h3>
                    <ul class="comment-list">
                      <li class="comment">
                        <div class="vcard bio">
                          <img src="images/person_4_sq.jpg" alt="Image placeholder">
                        </div>
                        <div class="comment-body">
                          <h3>Jean Doe</h3>
                          <div class="meta">January 9, 2018 at 2:21pm</div>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                          <p><a href="#" class="reply">Reply</a></p>
                        </div>
                      </li>
      
                      <li class="comment">
                        <div class="vcard bio">
                          <img src="images/person_4_sq.jpg" alt="Image placeholder">
                        </div>
                        <div class="comment-body">
                          <h3>Jean Doe</h3>
                          <div class="meta">January 9, 2018 at 2:21pm</div>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                          <p><a href="#" class="reply">Reply</a></p>
                        </div>
      
                        <ul class="children">
                          <li class="comment">
                            <div class="vcard bio">
                              <img src="images/person_4_sq.jpg" alt="Image placeholder">
                            </div>
                            <div class="comment-body">
                              <h3>Jean Doe</h3>
                              <div class="meta">January 9, 2018 at 2:21pm</div>
                              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                              <p><a href="#" class="reply">Reply</a></p>
                            </div>
      
      
                            <ul class="children">
                              <li class="comment">
                                <div class="vcard bio">
                                  <img src="images/person_4_sq.jpg" alt="Image placeholder">
                                </div>
                                <div class="comment-body">
                                  <h3>Jean Doe</h3>
                                  <div class="meta">January 9, 2018 at 2:21pm</div>
                                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                  <p><a href="#" class="reply">Reply</a></p>
                                </div>
      
                                  <ul class="children">
                                    <li class="comment">
                                      <div class="vcard bio">
                                        <img src="images/person_4_sq.jpg" alt="Image placeholder">
                                      </div>
                                      <div class="comment-body">
                                        <h3>Jean Doe</h3>
                                        <div class="meta">January 9, 2018 at 2:21pm</div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                        <p><a href="#" class="reply">Reply</a></p>
                                      </div>
                                    </li>
                                  </ul>
                              </li>
                            </ul>
                          </li>
                        </ul>
                      </li>
      
                      <li class="comment">
                        <div class="vcard bio">
                          <img src="images/person_4_sq.jpg" alt="Image placeholder">
                        </div>
                        <div class="comment-body">
                          <h3>Jean Doe</h3>
                          <div class="meta">January 9, 2018 at 2:21pm</div>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                          <p><a href="#" class="reply">Reply</a></p>
                        </div>
                      </li>
                    </ul>
                    <!-- END comment-list -->
                    
                    <div class="comment-form-wrap pt-5">
                      <h3 class="mb-5">Leave a comment</h3>
                      <form action="#" class="p-5 bg-light">
                        <div class="form-group">
                          <label for="name">Name *</label>
                          <input type="text" class="form-control" id="name">
                        </div>
                        <div class="form-group">
                          <label for="email">Email *</label>
                          <input type="email" class="form-control" id="email">
                        </div>
                        <div class="form-group">
                          <label for="website">Website</label>
                          <input type="url" class="form-control" id="website">
                        </div>
      
                        <div class="form-group">
                          <label for="message">Message</label>
                          <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                        </div>
                        <div class="form-group">
                          <input type="submit" value="Post Comment" class="btn btn-primary">
                        </div>
      
                      </form>
                    </div>
                  </div>
      
                </div>
                <div class="col-md-3 sidebar">
                  <div class="sidebar-box">
                    <form action="#" class="search-form">
                      <div class="form-group">
                        <span class="icon fa fa-search"></span>
                        <input type="text" class="form-control" placeholder="Type a keyword and hit enter">
                      </div>
                    </form>
                  </div>
                  <div class="sidebar-box">
                    <div class="categories">
                      <h3 class="text-black">Danh mục</h3>
                      <c:forEach var="c" items="${cats}">
                      <li><a href="/news/list-by-category/${c.id}">${c.name}</a></li>
                      </c:forEach>
                    </div>
                  </div>
                  <div class="sidebar-box">
                    <img src="images/person_4_sq.jpg" alt="Image placeholder" class="img-fluid mb-4">
                    <h3 class="text-black">About The Author</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
                    <p><a href="#" class="btn btn-primary btn-sm px-5 rounded-0">Read More</a></p>
                  </div>
      
                  <div class="sidebar-box">
                    <h3 class="text-black">Paragraph</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
                  </div>
                </div>
              </div>
            </div>
          </section>