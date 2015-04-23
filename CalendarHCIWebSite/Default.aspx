<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel='stylesheet' href='CSS/jquery-ui.css' />
    <link rel='stylesheet' href='CSS/jquery-ui.structure.css' />
    <link rel='stylesheet' href='CSS/jquery-ui.theme.css' />
    <link rel='stylesheet' href='CSS/layout.css' />
    <link rel='stylesheet' href='CSS/fullcalendar.css' />
    <link rel='stylesheet' href='CSS/fullcalendar.print.css' media='print' />


    <script src='Scripts/jquery.js'></script>
    <script src='Scripts/moment.min.js'></script>
    <script src='Scripts/jquery-ui.js'></script>
    <script src='Scripts/fullcalendar.js'></script>
    <script src='Scripts/gcal.js'></script>



    <script>

        var months = ["January", "February", "March", "April", "May", "June",
  "July", "August", "September", "October", "November", "December"
        ];

        var MyCalendarEvents = {events:[
                        {
                            title: 'All Day Event',
                            start: '2015-04-01'

                        },

                        {
                            title: 'Long Event',
                            start: '2015-04-07',
                            end: '2015-04-10'
                        },
                        {
                            id: 999,
                            title: 'Repeating Event',
                            start: '2015-04-09T16:00:00'
                        },
                        {
                            id: 999,
                            title: 'Repeating Event',
                            start: '2015-04-16T16:00:00'
                        },
                        {
                            title: 'Conference',
                            start: '2015-04-11',
                            end: '2015-04-13'
                        },
                        {
                            title: 'Meeting',
                            start: '2015-04-12T10:30:00',
                            end: '2015-04-12T12:30:00'
                        },
                        {
                            title: 'Lunch',
                            start: '2015-04-12T12:00:00'
                        },
                        {
                            title: 'Meeting',
                            start: '2015-04-12T14:30:00'
                        },
                        {
                            title: 'Happy Hour',
                            start: '2015-04-12T17:30:00'
                        },
                        {
                            title: 'Dinner',
                            start: '2015-04-12T20:00:00'
                        },
                        {
                            title: 'Birthday Party',
                            start: '2015-04-13T07:00:00'
                        },
                        {
                            title: 'Click for Google',
                            url: 'http://google.com/',
                            start: '2015-04-28'
                        }
        ],
        color: 'red',}
        ;
        var selectedTest = "";
        var TestCalendarEvents = [
                        {
                            title: 'Practice Event #1',
                            start: '2015-03-19'
                        },
                        {
                            title: 'Practice Event #2',
                            start: '2015-03-19',
                            end: '2015-03-20'
                        },
                        {
                            id: 132,
                            title: 'Practice Event #3',
                            start: '2015-02-09T16:00:00'
                        },
                        {
                            id: 999,
                            title: 'Repeating Event',
                            start: '2015-02-16T16:00:00'
                        },
                        {
                            title: 'hahaha',
                            start: '2015-02-11',
                            end: '2015-02-13'
                        },
                        {
                            title: 'Testing',
                            start: '2015-02-12T10:30:00',
                            end: '2015-02-12T12:30:00'
                        },
                        {
                            title: 'asdf',
                            start: '2015-02-12T12:00:00'
                        },
                        {
                            title: 'Meeting',
                            start: '2015-02-12T14:30:00'
                        },
                        {
                            title: 'Happy Hour',
                            start: '2015-02-12T17:30:00'
                        },
                        {
                            title: 'Dinner',
                            start: '2015-02-12T20:00:00'
                        },
                        {
                            title: 'Birthday Party',
                            start: '2015-02-13T07:00:00'
                        },
                        {
                            title: 'Click for Google',
                            url: 'http://google.com/',
                            start: '2015-02-28'
                        }
        ]
        function addMyCalendar(eventObject) {
            var d = new Date();
            $('#myCalendar').fullCalendar({
                theme: true,
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,basicWeek,basicDay'
                },
                year: d.getFullYear(),
                month: d.getMonth(),
                day: d.getDate(),
                editable: true,
                eventLimit: true, // allow "more" link when too many events
                events: eventObject,
                height: 475,
                aspectRatio: 1,
            });
            
            $(".fc-today-button").text("Today");
            $(".fc-prev-button").text("Previous");
            $(".fc-next-button").text("Next");
        };


        function addTestCalendar(eventObject) {
            var d = new Date();
            $('#testCalendar').fullCalendar({
                theme: true,
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,basicWeek,basicDay'
                },
                year: d.getFullYear(),
                month: d.getMonth(),
                day: d.getDate(),
                editable: true,
                eventLimit: true, // allow "more" link when too many events
                events: eventObject,
                height: 475,
                aspectRatio: 1,
            });
            $(".fc-today-button").text("Today");
            $(".fc-prev-button").text("Previous");
            $(".fc-next-button").text("Next");
        };
        $(document).ready(function () {

            $('#webpage').find("button").css("visibility", "visible");

            $(function () {
                $("button")
                  .button()

                //.click(function (event) {
                //    event.preventDefault();
                //});
            });

            //$("#myCalendar").css({ "padding-left": "10%", "padding-right": "5%", "padding-top": "5%" });
            $('#leftsidebar').css({ "float": "left", });
            $('#tabs').css({ "padding-left": "10%", "float": "right" })
            
            addMyCalendar(MyCalendarEvents);
            addTestCalendar(TestCalendarEvents);
            $(function () {
                $("#tabs").tabs();
            });
            $(function () {
                $("#dialog").dialog();
            });

            $(function () {
                $("#addEvent").dialog({
                    autoOpen: false,
                    width: "auto",
                    show: {
                        effect: "blind",
                        duration: 1000
                    },
                    hide: {
                        effect: "explode",
                        duration: 1000
                    }
                });

                $("#btnAddEvent").click(function () {
                    $("#addEvent").dialog("open");
                    var selectedText = $('#tabs .ui-tabs-active').find('.ui-tabs-anchor')[0].innerHTML
                });
            });

            

            $("#btnAddEventInfo").click(function () {
                //var $tabs = $('#tabs').tabs();
                var selectedText = $('#tabs .ui-tabs-active').find('.ui-tabs-anchor')[0].innerHTML;
                var eventName = $('#eventName').val();
                var startDate = $('#startDate').val();
                MyCalendarEvents.events.push({title:eventName,start:startDate});
                $("#addEvent").dialog("close");
                //alert(selectedText);
                if (selectedText = "My Calendar") {
                    $('#myCalendar').fullCalendar('destroy');
                    addMyCalendar(MyCalendarEvents)
                } else {

                }
            })

        });

        function buildMyCalendar() {
            ('#myCalendar').fullCalendar('destroy');
            ('#testCalendar').fullCalendar('destroy');
            addMyCalendar(MyCalendarEvents);
        };

        function buildTestCalendar() {

            ('#myCalendar').fullCalendar('destroy');
            ('#testCalendar').fullCalendar('destroy');
            addTestCalendar(TestCalendarEvents);
        };
        
    </script>
    <title></title>
</head>
<body>

    <div id="tabs">
        <ul>
            <li><a href="#myCalendar" onclick="buildMyCalendar()">My Calendar</a></li>
            <li><a href="#testCalendar" onclick="buildTestCalendar()">Test Calendar</a></li>
            <li><a href="#tabs-3">Aenean lacinia</a></li>
        </ul>

        <div id="myCalendar"></div>
        <div id="testCalendar"></div>

        <div id="leftsidebar">
            <button id="btnAddEvent">Add Event</button>
            <button id="btnAddJoinGroup">
                Create/<br />
                Join Group</button>
        </div>

    </div>

    <div id="addEvent" title="Add Event">

        <br /><br /> 
        Event Name:<input id="eventName" type="text" value="Event Name" />

        <br /><br />
        Start Time:<input id="startTime" type="time" value="Start Time" />End Time:<input id="endTime" type="time" value="End Time" />

        <br /><br />
        Repeats Every:
           
                <br />
                    <input type="checkbox" value="Monday" />Monday
                
                    <input type="checkbox" value="Tuesday" />Tuesday
                
                    <input type="checkbox" value="Wednesday" />Wednesday
                
                    <input type="checkbox" value="Thursday" />Thursday
       
                    <input type="checkbox" value="Friday" />Friday
                
            
            <br /><br />

        <input type="checkbox" value="Saturday" />Saturday
                
                    <input type="checkbox" value="Sunday" />Sunday
                
            
            <br /><br />
        Duration
                
                    <select id="duration">
                        <option value="Custom">Custom</option>
                        <option value="Spring Semester">Spring Semester</option>
                        <option value="Fall Semester">Fall Semester</option>
                        <option value="Summer Semester">Summer Semester</option>
                    </select>

        <br /><br />
        Start Date:
                
                    <input id="startDate" type="date" />
        End Date
                
                    <input id="endDate" type="date" />

        <br /><br />
        Where
                
                    <input id= "where" type="text" />

        <br /><br />

     <%--   <button id="btnCancelEvent">Cancel</button>--%>

        <button id="btnAddEventInfo" style="float:right">Add Event</button>


    </div>



</body>
</html>
