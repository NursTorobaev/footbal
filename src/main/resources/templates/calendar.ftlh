<#import "parts/default.ftlh" as c>
<#import "parts/calendar.ftlh" as cal>
<@c.page>
    <@cal.page>
    </@cal.page>
    <script src="/static/js/app.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var calendarEl = document.getElementById('fullcalendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                themeSystem: 'bootstrap',
                initialView: 'dayGridMonth',
                initialDate: '2022-03-18',
                headerToolbar: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'dayGridMonth,timeGridWeek,timeGridDay'
                },
                events: [
                    {
                        title: 'Lunch',
                        start: '2022-03-12T12:00:00'
                    },
                    {
                        title: 'Meeting',
                        start: '2021-03-12T14:30:00'
                    },
                    {
                        title: 'Birthday Party',
                        start: '2022-03-13T07:00:00'
                    }
                ]
            });
            setTimeout(function() {
                calendar.render();
            }, 250)
        });
    </script>
</@c.page>