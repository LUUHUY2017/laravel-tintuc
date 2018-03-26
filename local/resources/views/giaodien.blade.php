<h1>Giao dien</h1>
@foreach($tintuc as  $value)
{{$value->TomTat}}<hr>
<hr>
@endforeach
{{$tintuc->links()}}
<style>
	.pagination li{
		float: left;
		list-style: none;
		padding: 5px;

	}
</style>