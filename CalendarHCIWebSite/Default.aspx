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
        var months = ["January", "February", "March", "April", "May", "June",
  "July", "August", "September", "October", "November", "December"
        ];

        var activeCalendar;

        var groupCalendar = {

            events: [
                           {
                               title: 'All Day Event',
                               start: '2015-04-01T16:00:00',
                               location: 'Avery'
                           },
                           {
                               title: 'Long Event',
                               start: '2015-04-07T16:00:00',
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


        };

        var MyCalendarEvents = {
            events: [
                            {
                                title: 'All Day Event',
                                start: '2015-04-01T16:00:00',
                                location: 'Avery'
                            },
                            {
                                title: 'Long Event',
                                start: '2015-04-07T16:00:00',
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

        var Groups = {
            groups: [
                {
                    groupName: 'Group 1',
                    description: 'This is a group'
                }
            ]

        };

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

        function eventInfo(event) {
            var displayText = "";
            displayText += "Start: " + moment(event.start).format('MMM Do h:mm A') + "<br>";
            if ( event.end ) {
                displayText += "End: " + moment(event.end).format('MMM Do h:mm A') + "<br>";
            }
            displayText += "Location: " + event.location + "<br>";
            $("#eventContent").dialog({
                modal: true,
                title: event.title,
                width: 350,
                buttons: {
                    "Ok": function () { $(this).dialog("close"); },
                    "Delete Event": function () {
                        $(activeCalendar).fullCalendar('removeEvents', event._id);
                        $(this).dialog("close");
                    }
                }
            });
            $("#eventContent").dialog('open');
            $("#eventContent").dialog().html(displayText);
        }
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
                eventClick: eventInfo,
            });
            $(".fc-today-button").text("Today");
            $(".fc-prev-button").text("Previous");
            $(".fc-next-button").text("Next");
        };

        function addGroupCalendar(eventObject) {
            var currentDate = new Date;
            $('#groupCalendar').fullCalendar({
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
                eventClick: eventInfo,
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
                eventClick: eventInfo,
            });
            $(".fc-today-button").text("Today");
            $(".fc-prev-button").text("Previous");
            $(".fc-next-button").text("Next");
        };
        function addCSCE378Calendar(eventObject) {
            var currentDate = new Date;
            $('#CSCE378Calendar').fullCalendar({
                theme: true,
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,basicWeek,basicDay'
                },
                defaultDate: currentDate.toLocaleDateString(),
                editable: true,
                eventLimit: true,
                events: eventObject,
                height: 475,
                aspectRatio: 1,
            });
            $(".fc-today-button").text("Today");
            $(".fc-prev-button").text("Previous");
            $(".fc-next-button").text("Next");
        };
        function addCSCE101Calendar(eventObject) {
            var currentDate = new Date;
            $('#CSCE101Calendar').fullCalendar({
                theme: true,
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,basicWeek,basicDay'
                },
                defaultDate: currentDate.toLocaleDateString(),
                editable: true,
                eventLimit: true,
                events: eventObject,
                height: 475,
                aspectRatio: 1,
            });
            $(".fc-today-button").text("Today");
            $(".fc-prev-button").text("Previous");
            $(".fc-next-button").text("Next");
        };
        function addCSCE156Calendar(eventObject) {
            var currentDate = new Date;
            $('#CSCE156Calendar').fullCalendar({
                theme: true,
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,basicWeek,basicDay'
                },
                defaultDate: currentDate.toLocaleDateString(),
                editable: true,
                eventLimit: true,
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
            addCSCE101Calendar(CSCE101CalendarEvents);
            addCSCE156Calendar(CSCE156CalendarEvents);
            addCSCE378Calendar(CSCE378CalendarEvents);

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
                    $("#customDate").hide();
                    $("#duration").change(function () {
                        if ("Custom" == $("#duration").val()) {
                            $("#customDate").show();
                        } else {
                            $("#customDate").hide();
                        }
                    });
                    var selectedText = $('#tabs .ui-tabs-active').find('.ui-tabs-anchor')[0].innerHTML;
                });
            });
            $("#btnAddEventInfo").click(function () {
                //var $tabs = $('#tabs').tabs();
                var selectedText = $('#tabs .ui-tabs-active').find('.ui-tabs-anchor')[0].innerHTML;
                var eventName = $('#eventName').val();
                var startDate = $('#startDate').val();
                var endDate = $('#endDate').val();
                switch ($("#duration").val()) {
                    case "Spring Semester":
                        startDate = "2016-01-11";
                        endDate = "2016-05-06";
                        break;
                    case "Fall Semester":
                        startDate = "2015-08-24";
                        endDate = "2015-12-18";
                        break;
                    case "Summer Semester":
                        startDate = "2015-05-18";
                        endDate = "2015-08-13";
                        break;
                    default:
                        startDate = $('#startDate').val();
                        endDate = $('#endDate').val();
                        break;
                }
                
                if (startDate > endDate) {
                    alert("End Date must be after Start Date");
                    return;
                }
                var startTimeEvent = $('#startTimeEvent').val();
                var endTimeEvent = $('#endTimeEvent').val();
                var location = $("#where").val();
                if (selectedText == 'My Calendar') {
                    var checkedDays = $('input:checkbox:checked').map(function () { return this.value; }).get();
                    if (checkedDays.length == 0) {
                        alert("For events occuring once please select they day and Custom Duration: This feature not yet implemented");
                        return;
                    }
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
                    //TestCalendarEvents.events.push({ title: eventName, start: startDate + 'T' + startTimeEvent, location: location })
                    var checkedDays = $('input:checkbox:checked').map(function () { return this.value; }).get();
                    if (checkedDays.length == 0) {
                        alert("For events occuring once please select they day and Custom Duration: This feature not yet implemented");
                        return;
                    }
                    for (i = 0; i < checkedDays.length; i++) {
                        var counterDay = moment(startDate);
                        var testDay = counterDay;
                        while (counterDay.format("YYYY-MM-DD") < moment(endDate).add(7, 'days').format('YYYY-MM-DD')) {
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
                                TestCalendarEvents.events.push({ title: eventName, start: testDay + 'T' + startTimeEvent, location: location });
                            }
                            counterDay = moment(counterDay).add(1, 'weeks');
                        }
                    }
                    //MyCalendarEvents.events.push({ title: eventName, start: startDate + 'T' + startTimeEvent, location: location });
                    $('#testCalendar').fullCalendar('destroy');
                    addTestCalendar(MyCalendarEvents);
                }
                //MyCalendarEvents.events.push({title:eventName,start:startDate,location:location});
                $("#addEvent").dialog("close");
                //alert(selectedText);
            })
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
                $("#btnJoinGroup").click(function () {
                    var groupName = $('#select-result').text();
                    var num_tabs = $("#tabs ul li").length + 1;
                    $("#tabs ul").append("<li><a href='#" + groupName + "Calendar' onclick='build" + groupName + "Calendar()'>" + groupName + " Calendar</a></li>");
                    $("#tabs").tabs("refresh");
                    $("#joinGroup").dialog("close");
                });
            });


        //$(function () {
        //    $("#createJoinGroup").dialog({
        //        autoOpen: false,
        //        width: "auto",
        //        show: {
        //            effect: "blind",
        //            duration: 1000
        //        },
        //        hide: {
        //            effect: "explode",
        //            duration: 1000
        //        }
        //    });

        //    $('#btnAddJoinGroup').click(function () {
        //        $("#createJoinGroup").dialog("open");
        //        $('#selectGroups option').remove();
        //        var select = document.getElementById('selectGroups')
        //        //for (var j = 0; j < select.childElementCount; j++) {
        //        //    select.removeChild(j);
        //        //}


        //        for (var i = 0; i < Groups.groups.length; i++) {
        //            var opt = document.createElement('option');
        //            opt.value = Groups.groups[i].groupName;
        //            opt.innerHTML = Groups.groups[i].groupName;
        //            select.appendChild(opt);
        //        }
        //        //var selectedText = $('#tabs .ui-tabs-active').find('.ui-tabs-anchor')[0].innerHTML;

        //    });

        //});
        //$(function () {
        //    $("#addGroup").dialog({
        //        autoOpen: false,
        //        width: "auto",
        //        show: {
        //            effect: "blind",
        //            duration: 1000
        //        },
        //        hide: {
        //            effect: "explode",
        //            duration: 1000
        //        }
        //    });

        //    $("#btnAddGroup").click(function () {
        //        $('#addGroup').dialog("open");
        //        $('#createJoinGroup').dialog("close");

        //    });
        //});

        //$('#btnCreateGroup').click(function () {
        //    var selectedText = $('#tabs .ui-tabs-active').find('.ui-tabs-anchor')[0].innerHTML;
        //    var groupName = $('#groupName').val();
        //    var desc = $('#groupDesc').val();
        //    Groups.groups.push({ groupName: groupName, description: desc });
        //    $("#groupCalendar").show();
        //    var num_tabs = $("#tabs ul li").length + 1;
        //    $("#tabs ul").append("<li><a href='#groupCalendar' onclick='buildGroupCalendar()'>Group Calendar</a></li>");
        //    $("#tabs").tabs("refresh");
        //    $('#addGroup').dialog("close");
        //});



        function buildMyCalendar() {
            
            activeCalendar = "#myCalendar";
            
        };
        function buildTestCalendar() {
            
            activeCalendar = "#testCalendar";
        };
        function buildCSCE101Calendar() {

            activeCalendar = "#csce101Calendar";

            setTimeout(function () {
                $(".fc-today-button").trigger("click");
            }, 1);
        };
            function buildCSCE156Calendar() {

                setTimeout(function () {
                    $(".fc-today-button").trigger("click");
                }, 1);
                activeCalendar = "#csce156Calendar";
            };
            function buildCSCE378Calendar() {

                setTimeout(function () {
                    $(".fc-today-button").trigger("click");
                }, 1);
                activeCalendar = "#csce378Calendar";
            };

            function buildGroupCalendar() {
                
                activeCalendar = "#groupCalendar";
            };
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

     <div id="addGroup" title="Add Group">
        Group Name:<input id="groupName" type="text" value="Group Name" />
        <br /> <br />

        Description:<input id ="groupDesc" type="text" value="Short Description" />
        <br /> <br />

        <button id="btnCreateGroup" style="float:right">Create</button>


    </div>

    <div id="createJoinGroup" title="Create/Join Group">
        <br /> <br />
        Groups:<select id="selectGroups"></select><button id="btnGroupSelect">Select</button>

        <br /> <br />

        <button id="btnAddGroup" style="float:right">Add Group</button>

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
                

            <br /><br />
        Duration
                
                    <select id="duration">
                        <option value="Spring Semester">Spring Semester</option>
                        <option value="Fall Semester">Fall Semester</option>
                        <option value="Summer Semester">Summer Semester</option>
                        <option value="Custom" id="custom">Custom</option>
                    </select>

        <br /><br />
        <div id="customDate">
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

    <div id="eventContent" title="Event Details" style="display:none;">
        Start: <span id="startTime"></span><br>
        End: <span id="endTime"></span><br><br>
        <div>Delete Event</div>
        <p id="location"></p>
    </div>

</body>
</html>