<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>User Edition</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">User Edition</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container">
        <div class="row d-flex justify-content-center">
          <div class="col-10 ">
            <!-- style="max-width: 540px;" -->
            <div class="card " >
                <div class="row">
               
                        <div class="col-6">
                            <div class="card-body">
                                
                                <div class="mb-1">
                                    <label for="username" class="form-label">Username</label>
                                    <input type="text"
                                        class="form-control" name="youtubeID" id="youtubeID" placeholder="Enter YoutubeID">            
                                    
                                    <label for="password" class="form-label">Password</label>
                                    <input type="password" class="form-control" name="password" id="password" placeholder="Your Password">
           
                                </div>

            
            
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="card-body">
                                
                                <div class="mb-1">
                                    
                                    <label for="fullName" class="form-label">Video Title</label>
                                    <input type="text"
                                        class="form-control" name="fullName" id="fullName" placeholder="Enter your name">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelpId" placeholder="abc@mail.com">
  
                                </div>

                            </div>

                        </div>
                </div><hr>
                <div class="row mx-2 mb-2">
                    <div class="col-12 d-flex flex-wrap justify-content-end">
                      
                        <button type="button" class="btn btn-primary mx-2">Update</button>
                        <button type="button" class="btn btn-primary mx-2">Delete</button>
                      
                    </div>
                    
                    
                </div>

                    

                
              </div>

          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->