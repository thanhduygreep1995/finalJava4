<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- Content Header (Page header) -->
<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1>User Lists</h1>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item active">User Lists</li>
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


				<div class="card">
					<div class="card-header">
						<h3 class="card-title">Danh Sách User</h3>
					</div>
					<!-- /.card-header -->
					<div class="card-body">
						<table id="example1" class="table table-bordered table-striped">
							<thead>
								<tr>

									<th>Username</th>
									<th>Password</th>
									<th>Full Name</th>
									<th>Email</th>
									<th>Phone</th>
									<th>Role</th>
									<th>Edit</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="user" items="${List_Users}">
									<tr>
										<td>${user.username}</td>
										<td>${user.pswd}</td>
										<td>${user.name}</td>
										<td>${user.email}</td>
										<td>${user.phone}</td>
										<td>User</td>
										<td class="d-flex flex-wrap justify-content-start"><input
											class="btn btn-primary mr-1" type="button" value="Edit">
											<input class="btn btn-danger" type="button" value="Del"></td>
									</tr>
								</c:forEach>
							<tfoot>
								<th>Username</th>
								<th>Password</th>
								<th>Full Name</th>
								<th>Email</th>
								<th>Phone</th>
								<th>Role</th>
								<th>Edit</th>
							</tfoot>
						</table>
					</div>
					<!-- /.card-body -->
				</div>

				<!-- /.card -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container-fluid -->
</section>
<!-- /.content -->
</div>