<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Blank Page | Bootstrap Based Admin Template - Material Design</title>
    <!-- Favicon-->
    <link rel="icon" href="../../favicon.ico" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="{{ asset('adminpage/css/bootstrap.css') }}" rel="stylesheet">
    <!-- Custom Css -->
    <link href="{{ asset('adminpage/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('adminpage/css/dataTables.bootstrap.css') }}" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="{{ asset('adminpage/css/all-themes.css') }}" rel="stylesheet" />
</head>

<body class="theme-blue">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="preloader">
                <div class="spinner-layer pl-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <p>Please wait...</p>
        </div>
    </div>
    <!-- #END# Page Loader -->
    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    <!-- #END# Overlay For Sidebars -->
    <!-- Search Bar -->
    <div class="search-bar">
        <div class="search-icon">
            <i class="material-icons">search</i>
        </div>
        <input type="text" placeholder="START TYPING...">
        <div class="close-search">
            <i class="material-icons">close</i>
        </div>
    </div>
    <!-- #END# Search Bar -->
    <!-- Top Bar -->
    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="javascript:void(0);" class="bars"></a>
                <a class="navbar-brand" href="/dashboard">AdminPage</a>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info">
                <div class="image">
                    <img src="{{ asset('images/user.png') }}" width="48" height="48" alt="User" />
                </div>
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ Sentinel::getUser()->first_name }} {{ Sentinel::getUser()->last_name }}</div>
                    <div class="email">{{ Sentinel::getUser()->email }}</div>
                </div>
            </div>
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li>
                      <a href="/dashboard">
                          <i class="material-icons">home</i>
                          <span>Home</span>
                      </a>
                    </li>
                    <li class="active">
                      <a href="/buku">
                          <i class="material-icons">book</i>
                          <span>List Buku</span>
                      </a>
                    </li>
                    <li>
                      <a href="/logout">
                          <i class="material-icons">power_settings_new</i>
                          <span>Logout</span>
                      </a>
                    </li>
                </ul>
            </div>
            <!-- #Menu -->
            <!-- Footer -->
            <div class="legal">
                <div class="copyright">
                    &copy; 2016 - 2017 <a href="javascript:void(0);">AdminBSB - Material Design</a>.
                </div>
                <div class="version">
                    <b>Version: </b> 1.0.5
                </div>
            </div>
            <!-- #Footer -->
        </aside>
        <!-- #END# Left Sidebar -->
    </section>


              <section class="content">
                <div class="container-fluid">
                       <div class="block-header">
                          <a class="btn btn-primary waves-effect" href="{{ route('buku.create') }}">
                            <i class="material-icons">add</i>
                            <span>Add New Book</span>
                          </a>
                       </div>
                       <!-- Exportable Table -->
                       <div class="row clearfix">
                           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                               <div class="card">
                                   <div class="header">
                                       <h2>
                                          ALL Book
                                       </h2>
                                   </div>
                                   <div class="body">
                                       <div class="table-responsive">
                                           <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                                               <thead>
                                                   <tr>
                                                       <th>ID</th>
                                                       <th>Judul</th>
                                                       <th>Penerbit</th>
                                                       <th>Tanggal</th>
                                                       <th>Edit</th>
                                                       <th>Delete</th>
                                                   </tr>
                                               </thead>
                                               <tfoot>
                                                   <tr>
                                                     <th>ID</th>
                                                     <th>Judul</th>
                                                     <th>Penerbit</th>
                                                     <th>Tanggal</th>
                                                     <th>Edit</th>
                                                     <th>Delete</th>
                                                   </tr>
                                               </tfoot>
                                               <tbody>
                                                 @foreach($bukus as $key=>$buku)
                                                 <tr>
                                                   <td>{{ $key + 1 }}</td>
                                                   <td>{{ $buku->judul }}</td>
                                                   <td>{{ $buku->penerbit }}</td>
                                                   <td>{{ $buku->tanggal }}</td>
                                                   <td class="text-center">
                                                     <a href="{{ route('buku.edit',$buku->id) }}" class="btn btn-info waves-effect">
                                                       <i class="material-icons">edit</i>
                                                     </a>
                                                   </td>
                                                   <td class="text-center">
                                                     <button class="btn btn-danger waves-effect" type="button" onclick="deleteBuku({{ $buku->id }})">
                                                       <i class="material-icons">delete</i>
                                                     </button>
                                                     <form id="delete-form-{{ $buku->id }}" action="{{route('buku.destroy',$buku->id)}}" method="post" style="display: none;">
                                                       @csrf
                                                       @method('DELETE')
                                                     </form>
                                                  </td>
                                                 </tr>
                                                 @endforeach
                                               </tbody>
                                           </table>
                                       </div>
                                   </div>
                               </div>
                           </div>
                       </div>
                       <!-- #END# Exportable Table -->
                   </div>
  </section>


    <!-- Jquery Core Js -->
    <script src="{{ asset('adminpage/js/jquery.min.js') }}"></script>

    <!-- Bootstrap Core Js -->
    <script src="{{ asset('adminpage/js/bootstrap.js') }}"></script>

    <!-- Select Plugin Js -->
    <script src="{{ asset('adminpage/js/bootstrap-select.js') }}"></script>

    <!-- Slimscroll Plugin Js -->
    <script src="{{ asset('adminpage/js/jquery.slimscroll.js') }}"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="{{ asset('adminpage/js/waves.js') }}"></script>

    <!-- Custom Js -->
    <script src="{{ asset('adminpage/js/admin.js') }}"></script>

    <!-- Demo Js -->
    <script src="{{ asset('adminpage/js/demo.js') }}"></script>
    <script src="{{ asset('adminpage/js/jquery.dataTables.js') }}"></script>
    <script src="{{ asset('adminpage/js/jquery-datatable.js') }}"></script>
    <script src="{{ asset('adminpage/js/dataTables.bootstrap.js') }}"></script>
    <script src="{{ asset('adminpage/js/dataTables.buttons.min.js') }}"></script>
    <script src="{{ asset('adminpage/js/buttons.flash.min.js') }}"></script>
    <script src="{{ asset('adminpage/js/jszip.min.js') }}"></script>
    <script src="{{ asset('adminpage/js/pdfmake.min.js') }}"></script>
    <script src="{{ asset('adminpage/js/vfs_fonts.js') }}"></script>
    <script src="{{ asset('adminpage/js/buttons.html5.min.js') }}"></script>
    <script src="{{ asset('adminpage/js/buttons.print.min.js') }}"></script>
    <script src="https://unpkg.com/sweetalert2@7.19.1/dist/sweetalert2.all.js"></script>
    <script type="text/javascript">
      function deleteBuku(id) {
        const swalWithBootstrapButtons = swal.mixin({
confirmButtonClass: 'btn btn-success',
cancelButtonClass: 'btn btn-danger',
buttonsStyling: false,
})

swalWithBootstrapButtons({
title: 'Are you sure?',
text: "You won't be able to revert this!",
type: 'warning',
showCancelButton: true,
confirmButtonText: 'Yes, delete it!',
cancelButtonText: 'No, cancel!',
reverseButtons: true
}).then((result) => {
if (result.value) {
    event.preventDefault();
    document.getElementById('delete-form-'+id).submit();
} else if (
  // Read more about handling dismissals
  result.dismiss === swal.DismissReason.cancel
) {
  swalWithBootstrapButtons(
    'Cancelled',
    'Your data is safe :)',
    'error'
  )
}
})
      }
  </script>

</body>

</html>
