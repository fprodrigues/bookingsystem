var initialize_calendar;
initialize_calendar = function(){
	$('.calendar').each(function(){
		var calendar = $(this);
		calendar.fullCalendar({
			header:{
			left: 'prev, next, today',
			center: 'title',
			right: 'month, agendaWeek, agendaDay'
			},
			defaultView: 'month',
			events: '/calendars.json',
			dayClick: function(date, allDay, jsEvent, view) {
				$('.calendar').fullCalendar('gotoDate', date);
			 	 $('.calendar').fullCalendar('changeView', 'agendaDay');
            			},

			 eventClick: function(calEvent, jsEvent, view) {

        alert('Event: ' + calEvent.title);
        alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
        alert('View: ' + view.name);

        // change the border color just for fun
        $(this).css('border-color', 'red');

    }
        		   
		});
	})
};
$(document).on('turbolinks:load', initialize_calendar);
