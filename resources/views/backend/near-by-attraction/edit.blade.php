@extends('backend.layouts.master')
@section('title','Create Near by Attraction')
@section('main-content')
{{--@dd(Auth::check());--}}
@section('morecss')
<link href="{{asset('backend/assets/plugins/bootstrap3-wysihtml5/css/bootstrap3-wysihtml5.min.css')}}" rel="stylesheet" type="text/css" media="screen" />
<link href="{{asset('backend/assets/plugins/uikit/css/components/htmleditor.css')}}" rel="stylesheet" type="text/css" media="screen" />
<link href="{{asset('backend/assets/plugins/bootstrap3-wysihtml5/css/bootstrap3-wysihtml5.min.css')}}" rel="stylesheet" type="text/css" media="screen" />
<link href="{{asset('backend/assets/plugins/uikit/css/uikit.min.css')}}" rel="stylesheet" type="text/css" media="screen" />
<link href="{{asset('backend/assets/plugins/uikit/vendor/codemirror/codemirror.css')}}" rel="stylesheet" type="text/css" media="screen" />
<link href="{{asset('backend/assets/plugins/uikit/css/components/htmleditor.css')}}" rel="stylesheet" type="text/css" />
@endsection
<section id="main-content" class=" ">
    <section class="wrapper main-wrapper">
        <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>
            <div class="page-title">
                <div class="pull-right hidden-xs">
                    <ol class="breadcrumb">
                        <li>
                            <a href="{{route('dashboard')}}"><i class="fa fa-home"></i>Home</a>
                        </li>
                        <li>
                            <a href="{{route('near-by-attractions')}}"><i class="fa fa-home"></i>Manage Near by Attraction</a>
                        </li>
                        <li class="active">
                            <strong>Add Near by Attraction</strong>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="col-lg-12">
            <section class="box ">
                <header class="panel_header">
                    <h2 class="title pull-left">Add Near by Attraction</h2>
                </header>
                <div class="content-body">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <form action="{{ route('near-by-attractions.update', $attraction->id) }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="form-label">Near by Attraction Title *</label>
                                            <div class="controls">
                                                <input type="text" class="form-control" name="title" value="{{ old('title', $attraction->title) }}">
                                            </div>
                                            @if($errors->has('title'))
                                            <div class="text-danger">{{ $errors->first('title') }}</div>
                                            @endif
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="form-label">Near by Attraction Images File</label>
                                            <div class="controls">
                                                <input type="file" class="form-control" name="image_file">
                                                @if($attraction->image_file)
                                                <div class="mt-2">
                                                    <img src="{{ asset('hotel-sankalp-image-file/near-by-img/' . $attraction->image_file) }}"
                                                        alt="{{ $attraction->title }}"
                                                        style="max-width: 100px; max-height: 60px;">
                                                    <p class="small text-muted mt-1">Current Image</p>
                                                </div>
                                                @endif
                                            </div>
                                            @if($errors->has('image_file'))
                                            <div class="text-danger">{{ $errors->first('image_file') }}</div>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label class="form-label" for="field-1">Near by Attraction Description</label>
                                            <div class="controls">
                                                <textarea class="bootstrap-wysihtml5-textarea" placeholder="Attraction description ..."
                                                    style="width: 100%; height: 200px; font-size: 14px; line-height: 23px;padding:15px;"
                                                    name="description">{{ old('description', $attraction->description) }}</textarea>
                                            </div>
                                            @if($errors->has('description'))
                                            <div class="text-danger">{{ $errors->first('description') }}</div>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <button type="submit" class="btn btn-primary">Update</button>
                                                <a href="{{ route('near-by-attractions') }}" class="btn btn-secondary">Cancel</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </section>
</section>
@endsection
@section('morescripts')
<script src="{{asset('backend/assets/plugins/bootstrap3-wysihtml5/js/bootstrap3-wysihtml5.all.min.js')}}" type="text/javascript"></script>
<script src="{{asset('backend/assets/plugins/ckeditor/ckeditor.js')}}" type="text/javascript"></script>
<script src="{{asset('backend/assets/plugins/uikit/js/uikit.min.js')}}" type="text/javascript"></script>
<script src="{{asset('backend/assets/plugins/uikit/vendor/codemirror/codemirror.js')}}" type="text/javascript"></script>
<script src="{{asset('backend/assets/plugins/uikit/vendor/codemirror/codemirror.js')}}" type="text/javascript"></script>
<!-- <script src="{{asset('backend/assets/plugins/uikit/vendor/codemirror/mode/markdown/markdown.js')}}"></script>
   <script src="{{asset('backend/assets/plugins/uikit/vendor/codemirror/addon/mode/overlay.js')}}"></script> -->
<!-- <script src="{{asset('backend/assets/plugins/uikit/vendor/codemirror/mode/xml/xml.js')}}"></script>
   <script src="{{asset('backend/assets/plugins/uikit/vendor/codemirror/mode/gfm/gfm.js')}}"></script>
   
   <script src="{{asset('backend/assets/plugins/uikit/vendor/marked/marked.min.js')}}" type="text/javascript"></script> -->
<script src="{{asset('backend/assets/plugins/uikit/js/components/htmleditor.js')}}" type="text/javascript"></script>
@endsection