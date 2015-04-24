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

    <script type="text/javascript" src="js/jquery-1.3.2.js"></script>
    <script type="text/javascript" src="js/ui/ui.core.js"></script>
    <script type="text/javascript" src="js/ui/ui.selectable.js"></script>

    <style type="text/css">
    #feedback { font-size: 1.4em; }
    #selectable .ui-selecting { background: #FECA40; }
    #selectable .ui-selected { background: #F39814; color: white; }
    #selectable { list-style-type: none; margin: 0; padding: 0; width: 100%; }
    #selectable li { margin: 3px; padding: 0.4em; font-size: 1.4em; height: 18px; }
    </style>

    <script>



        var MyCalendarEvents = {events:[
                        {
                            title: 'All Day Event',
                            start: '2015-02-01'

                        },

                        {
                            title: 'Long Event',
                            start: '2015-02-07',
                            end: '2015-02-10'
                        },
                        {
                            id: 999,
                            title: 'Repeating Event',
                            start: '2015-02-09T16:00:00'
                        },
                        {
                            id: 999,
                            title: 'Repeating Event',
                            start: '2015-02-16T16:00:00'
                        },
                        {
                            title: 'Conference',
                            start: '2015-02-11',
                            end: '2015-02-13'
                        },
                        {
                            title: 'Meeting',
                            start: '2015-02-12T10:30:00',
                            end: '2015-02-12T12:30:00'
                        },
                        {
                            title: 'Lunch',
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
        ],
        color: 'red',}
        ;
        var CSCE378CalendarEvents = {
            events: [
                {
                    title: 'Unavailable',
                    start: '2015-02-01'
                },

                {
                    title: 'Unavailable',
                    start: '2015-02-07',
                    end: '2015-02-10'
                },

                {
                    title: 'Unavailable',
                    start: '2015-02-12T10:30:00',
                    end: '2015-02-12T12:30:00'
                }
            ],
            color: 'red',
        };
        var CSCE101CalendarEvents = {
            events: [
                {
                    title: 'Unavailable',
                    start: '2015-02-14'
                },

                {
                    title: 'Unavailable',
                    start: '2015-02-26',
                },

                {
                    title: 'Unavailable',
                    start: '2015-02-20'
                }
            ],
            color: 'red',
        };
        var CSCE156CalendarEvents = {
            events: [
                {
                    title: 'Unavailable',
                    start: '2015-02-28'
                },

                {
                    title: 'Unavailable',
                    start: '2015-0213'
                },

                {
                    title: 'Unavailable',
                    start: '2015-02-03'
                }
            ],
            color: 'red',
        };
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
        ];

        $(function () {
            $("#selectable").selectable({
                stop: function () {
                    var text = $(this).children(".ui-selected").map(function () {
                        return $(this).text();
                    }).get().join('; ');
                    $("#select-result").text(text);
                }
            });
        });

        function addMyCalendar(eventObject) {
            $('#myCalendar').fullCalendar({
                theme: true,
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,basicWeek,basicDay'
                },
                defaultDate: '2015-02-12',
                editable: true,
                eventLimit: true, // allow "more" link when too many events
                events: eventObject,
                height: 475,
                aspectRatio: 1,
            });
        };

        function addTestCalendar(eventObject) {
            $('#testCalendar').fullCalendar({
                theme: true,
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,basicWeek,basicDay'
                },
                defaultDate: '2015-03-19',
                editable: true,
                eventLimit: true, // allow "more" link when too many events
                events: eventObject,
                height: 475,
                aspectRatio: 1,
            });
        };

        function addCSCE378Calendar(eventObject) {
            $('#CSCE378Calendar').fullCalendar({
                theme: true,
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,basicWeek,basicDay'
                },
                defaultDate: '2015-03-19',
                editable: true,
                eventLimit: true,
                events: eventObject,
                height: 475,
                aspectRatio: 1,
            });
        };

        function addCSCE101Calendar(eventObject) {
            $('#CSCE101Calendar').fullCalendar({
                theme: true,
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,basicWeek,basicDay'
                },
                defaultDate: '2015-03-19',
                editable: true,
                eventLimit: true,
                events: eventObject,
                height: 475,
                aspectRatio: 1,
            });
        };

        function addCSCE156Calendar(eventObject) {
            $('#CSCE156Calendar').fullCalendar({
                theme: true,
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,basicWeek,basicDay'
                },
                defaultDate: '2015-03-19',
                editable: true,
                eventLimit: true,
                events: eventObject,
                height: 475,
                aspectRatio: 1,
            });
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
            addCSCE101Calendar(CSCE101CalendarEvents);
            addCSCE156Calendar(CSCE156CalendarEvents);
            addCSCE378Calendar(CSCE378CalendarEvents);

            $("#tabs").tabs();

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

            $(function () {
                $("#joinGroup").dialog({
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

                $("#btnAddJoinGroup").click(function () {
                    $("#joinGroup").dialog("open");
                });
            });

            $("#btnJoinGroup").click(function () {
                var groupName = $('#select-result').text();
                var num_tabs = $("#tabs ul li").length + 1;

                $("#tabs ul").append(
                    "<li><a href='#" + groupName + "Calendar' onclick='build" + groupName + "Calendar()'>" + groupName + " Calendar</a></li>"
                );

                $("#tabs").tabs("refresh");

                $("#joinGroup").dialog("close");
            })

            function buildMyCalendar() {
                ('#myCalendar').fullCalendar('destroy');
                ('#testCalendar').fullCalendar('destroy');
                ('#csce156Calendar').fullCalendar('destroy');
                ('#csce378Calendar').fullCalendar('destroy');
                ('#csce101Calendar').fullCalendar('destroy');
                addMyCalendar(MyCalendarEvents);
            };

            function buildTestCalendar() {
                ('#myCalendar').fullCalendar('destroy');
                ('#testCalendar').fullCalendar('destroy');
                ('#csce156Calendar').fullCalendar('destroy');
                ('#csce378Calendar').fullCalendar('destroy');
                ('#csce101Calendar').fullCalendar('destroy');
                addTestCalendar(TestCalendarEvents);
            };

            function buildCSCE101Calendar() {
                ('#myCalendar').fullCalendar('destroy');
                ('#testCalendar').fullCalendar('destroy');
                ('#csce156Calendar').fullCalendar('destroy');
                ('#csce378Calendar').fullCalendar('destroy');
                ('#csce101Calendar').fullCalendar('destroy');
                addCSCE101Calendar(CSCE101CalendarEvents);
            };

            function buildCSCE156Calendar() {
                ('#myCalendar').fullCalendar('destroy');
                ('#testCalendar').fullCalendar('destroy');
                ('#csce156Calendar').fullCalendar('destroy');
                ('#csce378Calendar').fullCalendar('destroy');
                ('#csce101Calendar').fullCalendar('destroy');
                addCSCE156Calendar(CSCE156CalendarEvents);
            };

            function buildCSCE378Calendar() {
                ('#myCalendar').fullCalendar('destroy');
                ('#testCalendar').fullCalendar('destroy');
                ('#csce156Calendar').fullCalendar('destroy');
                ('#csce378Calendar').fullCalendar('destroy');
                ('#csce101Calendar').fullCalendar('destroy');
                addCSCE378Calendar(CSCE378CalendarEvents);
            };

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

        
    </script>
    <title></title>
</head>
<body>

    <div id="tabs">
      <ul>
        <li><a href="#myCalendar" onclick="buildMyCalendar()">My Calendar</a></li>
        <li><a href="#testCalendar" onclick="buildTestCalendar()">Test Calendar</a></li>
      </ul>
        <div id="myCalendar"></div>
        <div id="testCalendar"></div>
        <div id="CSCE101Calendar" style="display: none;"></div>
        <div id="CSCE156Calendar" style="display: none;"></div>
        <div id="CSCE378Calendar" style="display: none;"></div>

        <div id="leftsidebar">
            <button id="btnAddEvent">Add Event</button>
            <button id="btnAddJoinGroup">
                Create/<br />
                Join Group</button>
        </div>

    </div>

    <div id="joinGroup" title="Join Group">

        <br />
 
            <ol id="selectable">
                <li class="ui-widget-content" id="selectable_1">CSCE101</li>
                <li class="ui-widget-content" id="selectable_2">CSCE156</li>
                <li class="ui-widget-content" id="selectable_3">CSCE378</li>
            </ol>

            <div id="select-result" style="display: none;"></div>
        
            <button id="btnJoinGroup" style="float:right">Join Group</button>

    </div>

    <div id="addEvent" title="Add Event">

        <br /><br />
        Event Name:<input id="eventName" type="text" placeholder="Event Name" required/>

                    <br /><br />
                    Start Time:<input id="startTime" type="time" value="Start Time" />End Time:<input id="endTime" type="time" value="End Time" required/>

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
                
                                <input id="startDate" type="date" required/>
                    End Date
                
                                <input id="endDate" type="date" required/>

                    <br /><br />
                    Where
                
                                <input id= "where" type="text" />

                    <br /><br />

                 <%--   <button id="btnCancelEvent">Cancel</button>--%>

                    <button id="btnAddEventInfo" style="float:right">Add Event</button>

    </div>



</body>
</html>
