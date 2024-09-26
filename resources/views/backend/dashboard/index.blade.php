@extends('backend.layouts.master')
@section('title','Dashboard')
@section('main-content')
@section('morecss')

<link href="{{asset('backend/assets/chart-rhl/morris.css')}}" rel="stylesheet" type="text/css" media="screen"/>    
@endsection
{{--@dd(Auth::check());--}}
    <section id="main-content" class=" ">
        <section class="wrapper main-wrapper">
            <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>
                <div class="page-title">
                    <div class="pull-left">
                        <h1 class="title">Dashboard</h1>   
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
                <div class="col-lg-12">
                    <section class="box nobox">
                        <div class="content-body">
                            <div class="row">
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <div class="r4_counter db_box">
                                        <i class='pull-left fa fa-file icon-md icon-rounded icon-primary'></i>
                                        <div class="stats">
                                            <h4><strong>{{$data['banner']}}</strong></h4>
                                            <span>Banner</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <div class="r4_counter db_box">
                                        <i class='pull-left fa fa-user icon-md icon-rounded icon-orange'></i>
                                        <div class="stats">
                                            <h4><strong>{{$data['hotel-facilities']}}</strong></h4>
                                            <span>Hotel Facilities</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <div class="r4_counter db_box">
                                        <i class='pull-left fa fa-star icon-md icon-rounded icon-purple'></i>
                                        <div class="stats">
                                            <h4><strong>{{$data['hotel-room']}}</strong></h4>
                                            <span>Hotel Room</span>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                            
                        </div>
                    </section>
                </div>
                <div class="clearfix"></div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <section class="box ">
                            <header class="panel_header">
                                <h2 class="title pull-left">Daily Unique Visitor Come to Hotel Sankalp Website</h2>
                                <div class="actions panel_actions pull-right">
                                    <i class="box_toggle fa fa-chevron-down"></i>
                                    <i class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></i>
                                    <i class="box_close fa fa-times"></i>
                                </div>
                            </header>
                            <div class="content-body">    
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div id="chart" height="450" width="600"></div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
            </section>
        </section>
@endsection

@section('morescripts')
<script src="{{asset('backend/assets/chart-rhl/morris.min.js')}}" type="text/javascript"></script>
<script src="{{asset('backend/assets/chart-rhl/raphael-min.js')}}" type="text/javascript"></script>

<script>
    Morris.Line({
    element: 'chart', // The HTML element ID where the chart will be rendered
    data: [{!! $chart_data !!}],
    xkey: 'visit_date', // X-axis key
    ykeys: ['totalVisitor'], // Y-axis keys
    labels: ['Total Visitors Come'], // Labels for the line
    hideHover: 'auto', // Hide the hover popup when not hovering over a point
    parseTime: false, // Do not parse the xkey as a date/time field
    lineColors: ['#0b62a4'], // Line colors
    pointFillColors: ['#ffffff'], // Point fill color
    pointStrokeColors: ['#000000'], // Point border color
    lineWidth: 2, // Thickness of the lines
    smooth: true // Smooth curves for the lines
});


</script>

@endsection