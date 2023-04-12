<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>Video Edition</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Video Edition</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<!-- style="max-width: 540px;" -->
							<div class="card mb-3">
								<div class="row">

									<div class="col-6">
										<img src='<c:url value="/img/img-03.jpg"/>' class="img-fluid rounded-start"
											alt="Card title" style="width: 100%; height: 300px;">
									</div>
									<div class="col-6">
										<div class="card-body">

											<div class="mb-3">
												<label for="youtubeID" class="form-label">Youtube ID</label>
												<input type="text" class="form-control" name="youtubeID"
													id="youtubeID" placeholder="Enter YoutubeID"> <label
													for="youtubeTitle" class="form-label">Video Title</label> <input
													type="text" class="form-control" name="youtubeTitle"
													id="youtubeTitle" placeholder="Enter Video Title">

												<label for="youtubeVC" class="form-label">View Count</label>
												<input type="number" class="form-control" name="youtubeVC"
													id="youtubeVC" value="0">
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="confirmButton" id="Active" checked> <label
													class="form-check-label" for="Active">Active</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="confirmButton" id="Inactive"> <label
													class="form-check-label" for="Inactive">Inactive</label>
											</div>


										</div>

									</div>
								</div>
								<div class="row m-2">
									<div class="col-12">
										<label for="" class="form-label">Description</label>
										<textarea class="form-control" name="" id="" rows="3"></textarea>
									</div>
								</div>
								<div class="row m-2">
									<div class="col-12 d-flex flex-wrap justify-content-end">
										<button type="button" class="btn btn-primary mx-2">Create</button>
										<button type="button" class="btn btn-primary mx-2">Update</button>
										<button type="button" class="btn btn-primary mx-2">Delete</button>
										<button type="button" class="btn btn-primary mx-2">Reset</button>
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