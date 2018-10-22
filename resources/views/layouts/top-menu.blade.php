<div class="header clearfix">
  <nav>
    <ul class="nav nav-pills pull-right">
      @if(Sentinel::check())
    <li role="presentation"><a href="/logout">Logout</a></li>
      <li role="presentation"><a href="/profile">Profile</a></li>
      @else
      <li role="presentation"><a href="/login">Login</a></li>
      <li role="presentation"><a href="/register">Register</a></li>
      @endif
    </ul>
  </nav>
    @if(Sentinel::check())
    <h3 class="text-muted">Hello, {{ Sentinel::getUser()->first_name }}</h3>
    @else
  <h3 class="text-muted">Authentication With Sentinel</h3>
    @endif
</div>
