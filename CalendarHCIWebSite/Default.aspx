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

        var MyCalendarEvents = {
            events: [
                            {
                                title: 'All Day Event',
                                start: '2015-04-01',
                                location: 'Avery'
                            },

                            {
                                title: 'Long Event',
                                start: '2015-04-07',
                                end: '2015-04-10',
                                location: 'Avery'
                            },
                            {
                                id: 999,
                                title: 'Repeating Event',
                                start: '2015-04-09T16:00:00',
                                location: 'Avery'
                            },
                            {
                                id: 999,
                                title: 'Repeating Event',
                                start: '2015-04-16T16:00:00',
                                location: 'Avery'
                            },
                            {
                                title: 'Conference',
                                start: '2015-04-11',
                                end: '2015-04-13',
                                location: 'Avery'
                            },
                            {
                                title: 'Meeting',
                                start: '2015-04-12T10:30:00',
                                end: '2015-04-12T12:30:00',
                                location: 'Avery'
                            },
                            {
                                title: 'Lunch',
                                start: '2015-04-12T12:00:00',
                                location: 'Avery'
                            },
                            {
                                title: 'Meeting',
                                start: '2015-04-12T14:30:00',
                                location: 'Avery'
                            },
                            {
                                title: 'Happy Hour',
                                start: '2015-04-12T17:30:00',
                                location: 'Avery'
                            },
                            {
                                title: 'Dinner',
                                start: '2015-04-12T20:00:00',
                                location: 'Avery'
                            },
                            {
                                title: 'Birthday Party',
                                start: '2015-04-13T07:00:00',
                                location: 'Avery'
                            },
                            {
                                title: 'Click for Google',
                                url: 'http://google.com/',
                                start: '2015-04-28',
                                location: 'Avery'
                            }
            ],
            color: 'red',
        }
        ;
        var selectedTest = "";
        var TestCalendarEvents = [
                        {
                            title: 'Practice Event #1',
                            start: '2015-03-19',
                            location: 'Avery'
                        },
                        {
                            title: 'Practice Event #2',
                            start: '2015-03-19',
                            end: '2015-03-20',
                            location: 'Avery'
                        },
                        {
                            id: 132,
                            title: 'Practice Event #3',
                            start: '2015-02-09T16:00:00',
                            location: 'Avery'
                        },
                        {
                            id: 999,
                            title: 'Repeating Event',
                            start: '2015-02-16T16:00:00',
                            location: 'Avery'
                        },
                        {
                            title: 'hahaha',
                            start: '2015-02-11',
                            end: '2015-02-13',
                            location: 'Avery'
                        },
                        {
                            title: 'Testing',
                            start: '2015-02-12T10:30:00',
                            end: '2015-02-12T12:30:00',
                            location: 'Avery'
                        },
                        {
                            title: 'asdf',
                            start: '2015-02-12T12:00:00',
                            location: 'Avery'
                        },
                        {
                            title: 'Meeting',
                            start: '2015-02-12T14:30:00',
                            location: 'Avery'
                        },
                        {
                            title: 'Happy Hour',
                            start: '2015-02-12T17:30:00',
                            location: 'Avery'
                        },
                        {
                            title: 'Dinner',
                            start: '2015-02-12T20:00:00',
                            location: 'Avery'
                        },
                        {
                            title: 'Birthday Party',
                            start: '2015-02-13T07:00:00',
                            location: 'Avery'
                        },
                        {
                            title: 'Click for Google',
                            url: 'http://google.com/',
                            start: '2015-02-28',
                            location: 'Avery'
                        }
        ]
        function addMyCalendar(eventObject) {
            var currentDate = new Date;
            $('#myCalendar').fullCalendar({
                theme: true,
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,basicWeek,basicDay'
                },
                defaultDate: currentDate.toLocaleDateString(),
                editable: true,
                eventLimit: true, // allow "more" link when too many events
                events: eventObject,
                height: 475,
                aspectRatio: 1,
                eventRender: eventInfo,
            });

            $(".fc-today-button").text("Today");
            $(".fc-prev-button").text("Previous");
            $(".fc-next-button").text("Next");
        };

        function addTestCalendar(eventObject) {
            var currentDate = new Date;
            $('#testCalendar').fullCalendar({
                theme: true,
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,basicWeek,basicDay'
                },
                defaultDate: currentDate.toLocaleDateString(),
                editable: true,
                eventLimit: true, // allow "more" link when too many events
                events: eventObject,
                height: 475,
                aspectRatio: 1,
                eventRender: eventInfo,
            });
            $(".fc-today-button").text("Today");
            $(".fc-prev-button").text("Previous");
            $(".fc-next-button").text("Next");
        };

        function eventInfo(event, element) {
            element.attr('href', 'javascript:void(0);');
            element.click(function () {
                $("#startTime").html(moment(event.start).format('MMM Do h:mm A'));
                $("#endTime").html(moment(event.end).format('MMM Do h:mm A'));
                $("#location").html("Location: " + event.location);

                $("#eventContent").dialog({ modal: true, title: event.title, width: 350 });
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
                    var selectedText = $('#tabs .ui-tabs-active').find('.ui-tabs-anchor')[0].innerHTML;
                });
            });



            $("#btnAddEventInfo").click(function () {
                //var $tabs = $('#tabs').tabs();
                var selectedText = $('#tabs .ui-tabs-active').find('.ui-tabs-anchor')[0].innerHTML;
                var eventName = $('#eventName').val();
                var startDate = $('#startDate').val();
                var startTimeEvent = $('#startTimeEvent').val();
                var endDate = $('#endDate').val();
                if (startDate > endDate) {
                    alert("End Date must be after Start Date");
                    return;
                }
                var endTimeEvent = $('#endTimeEvent').val();
                var location = $("#where").val();

                if (selectedText == 'My Calendar') {
                    var checkedDays = $('input:checkbox:checked').map(function () { return this.value; }).get();
                    for (i = 0; i < checkedDays.length; i++) {
                        var counterDay = moment(startDate);
                        var testDay = counterDay;
                        while (counterDay.format("YYYY-MM-DD") < moment(endDate).add(7,'days').format('YYYY-MM-DD')) {
                            switch (checkedDays[i]) {
                                case "Sunday":
                                    testDay = counterDay.day(0).format("YYYY-MM-DD");
                                    break;
                                case "Monday":
                                    testDay = counterDay.day(1).format("YYYY-MM-DD");
                                    break;
                                case "Tuesday":
                                    testDay = counterDay.day(2).format("YYYY-MM-DD");
                                    break;
                                case "Wednesday":
                                    testDay = counterDay.day(3).format("YYYY-MM-DD");
                                    break;
                                case "Thursday":
                                    testDay = counterDay.day(4).format("YYYY-MM-DD");
                                    break;
                                case "Friday":
                                    testDay = counterDay.day(5).format("YYYY-MM-DD");
                                    break;
                                case "Saturday":
                                    testDay = counterDay.day(6).format("YYYY-MM-DD");
                                    break;
                            }
                            if (testDay >= startDate && testDay <= endDate) {
                                MyCalendarEvents.events.push({ title: eventName, start: testDay + 'T' + startTimeEvent, location: location });
                            }
                            counterDay = moment(counterDay).add(1, 'weeks');
                        }

                    }
                    //MyCalendarEvents.events.push({ title: eventName, start: startDate + 'T' + startTimeEvent, location: location });
                    $('#myCalendar').fullCalendar('destroy');
                    addMyCalendar(MyCalendarEvents);
                }
                else if (selectedText == 'Test Calendar') {
                    TestCalendarEvents.events.push({ title: eventName, start: startDate + 'T' + startTimeEvent, location: location })
                }
                //MyCalendarEvents.events.push({title:eventName,start:startDate,location:location});
                $("#addEvent").dialog("close");
                //alert(selectedText);
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

        <br />
        <br />
        Event Name:<input id="eventName" type="text" value="Event Name" />

        <br />
        <br />
        Start Time:<input id="startTimeEvent" type="time" value="Start Time" />End Time:<input id="endTimeEvent" type="time" value="End Time" />

        <br />
        <br />
        Repeats Every:
           
                <br />
        <input type="checkbox" value="Monday" />Monday
                
                    <input type="checkbox" value="Tuesday" />Tuesday
                
                    <input type="checkbox" value="Wednesday" />Wednesday
                
                    <input type="checkbox" value="Thursday" />Thursday
       
                    <input type="checkbox" value="Friday" />Friday
                
            
            <br />
        <br />

        <input type="checkbox" value="Saturday" />Saturday
                
                    <input type="checkbox" value="Sunday" />Sunday
                
            
            <br />
        <br />
        <%--Duration--%>

        <select id="duration" style="visibility: hidden">
            <option value="Custom">Custom</option>
            <option value="Spring Semester">Spring Semester</option>
            <option value="Fall Semester">Fall Semester</option>
            <option value="Summer Semester">Summer Semester</option>
        </select>

        <br />
        <br />
        <div>
            Start Date:
                
                    <input id="startDate" type="date" />
            End Date
                
                    <input id="endDate" type="date" />
        </div>
        <br />
        <br />
        Where
                
                    <input id="where" type="text" />

        <br />
        <br />

        <%--   <button id="btnCancelEvent">Cancel</button>--%>

        <button id="btnAddEventInfo" style="float: right">Add Event</button>


    </div>

    <div id="eventContent" title="Event Details" style="display: none;">
        Start: <span id="startTime"></span>
        <br>
        <!--End: <span id="endTime"></span><br><br>-->
        <p id="location"></p>
    </div>

</body>
</html>
