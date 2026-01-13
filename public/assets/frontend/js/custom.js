/****************************book-online page************************* */
    var $calendar;
    $(document).ready(function () {
        let container = $("#container").simpleCalendar({
            fixedStartDay: 0, // begin weeks by sunday
            disableEmptyDetails: true,
            events:  window.EVENTS,
            /*events: [
              // generate new event after tomorrow for one hour
              // {
              //   startDate: new Date(new Date().setHours(new Date().getHours() + 24)).toDateString(),
              //   endDate: new Date(new Date().setHours(new Date().getHours() + 25)).toISOString(),
              //   summary: 'Visit of the Eiffel Tower'
              // },
              // generate new event for yesterday at noon
              {
                startDate: new Date(new Date().setHours(new Date().getHours() - new Date().getHours() - 12, 0)).toISOString(),
                endDate: new Date(new Date().setHours(new Date().getHours() - new Date().getHours() - 11)).getTime(),
                summary: 'Restaurant'
              },
              // generate new event for the last two days
              {
                startDate: new Date(new Date().setHours(new Date().getHours() - 48)).toISOString(),
                endDate: new Date(new Date().setHours(new Date().getHours() - 24)).getTime(),
                summary: 'Visit of the Louvre'
              }
            ],*/

        });
        $calendar = container.data('plugin_simpleCalendar')

        /*$(".services").multiselect({
            header: true,
            noneSelectedText: 'Select Services',
            selectedList: 3
        });*/
    });
    function get_available_time(el) { //click on calender button
        $('.text-danger').hide();
        $('.day').removeClass('selected-day');
        $(el).addClass('selected-day');
        const b_date = el.getAttribute('data-date');
        const sv_id = $('#sv_id').val(); // selected service
        const vid = $('#vid').val(); 
        if (!sv_id || !vid) {
            alert("Please select service and variant first!");
            return;
        }
        $.ajax({
            type: "POST",
            url: "<?=url('/get_available_time_by_ajax')?>",
            dataType: "json",
            data: {
                _token: "{{ csrf_token() }}",
                b_date: b_date,
                sv_id: sv_id,
                vid: vid
            },
            beforeSend: function() {
                $('#ajax-loader').show();
            },
            success: function (response) {
                if (response.success) {
                    console.log(response.html);
                    $('#availability-div').html(response.html);
                    $('#selected_date').val(response.selected_date);
                    $('#selected_st_id').val(response.selected_st_id);
                }

            },
            complete: function() {
                $('#ajax-loader').hide();
            }
        });
        
    }
    // Check Availability button click event
    // $('#nextAvailBtn').on('click', function() {
    $(document).on('click', '#nextAvailBtn', function() {
        var nextDate = $(this).data('next_date'); // data-next_date ka value lena
        var $targetDay = $('.day[data-date="' + nextDate + '"]'); // calendar me matching date find karna

        if ($targetDay.length) {
            $targetDay.trigger('click'); // programmatically click karna
        } else {
            toastr.error('No matching date found in calendar:');
        }
    });
    /*function change_color() {
        $(".book-now-btn").css({
            "background-color": "#bf7524",
            "color": "black",
            "border": "1px solid black"
        });
    }*/
    function check_next_availability(el){
        $('.text-danger').hide();
        $('.day').removeClass('selected-day');
        const c_date = el.getAttribute('data-date');
        if(c_date){
            $.ajax({
                url: "{{ url('check_next_availability_by_ajax') }}",
                type: "POST",
                dataType: "json",
                
                data: {
                    _token: "{{ csrf_token() }}",
                    c_date: c_date,
                    
                },
                beforeSend: function() {
                    $('#ajax-loader').show();
                },
                success: function(response) {
                    if (response.success) {
                        console.log(response.html);
                        $('#availability-div').html(response.html);
                        $('#selected_date').val('');
                        $('#selected_st_id').val('');
                    }else{
                        toastr.error("Soory, Something went wrong!");
                    }
                },
                error: function(xhr) {
                    console.error(xhr.responseText);
                },
                complete: function() {
                    $('#ajax-loader').hide();
                }
            });
        }
        // alert(c_date);
    }
    $(document).on('click', '#availability-div button', function() { // event for button click
        $('#availability-div button').removeClass('active');
        $(this).addClass('active');
        var selectedId = $(this).data('st_id');
        $('#selected_st_id').val(selectedId);
    });

    /* **************************calendra end************************/
    function getVariants(obj){
        // alert(obj.value);
        var sv_id = obj.value;
        if(sv_id){
            $.ajax({
                url: "{{ url('get_variants_by_ajax') }}",
                type: "POST",
                dataType: "json",
                
                data: {
                    _token: "{{ csrf_token() }}",
                    sv_id: sv_id,
                    
                },
                beforeSend: function() {
                    $('#ajax-loader').show();
                },
                success: function(response) {
                    if (response.success) {
                        console.log(response.html);
                        $('#vid').html(response.html);
                        // toastr.success("Product added into cart");
                    }else{
                        toastr.error("Soory, Something went wrong!");
                    }
                },
                error: function(xhr) {
                    console.error(xhr.responseText);
                },
                complete: function() {
                    $('#ajax-loader').hide();
                }
            });
        }
    }
    function validateForm() {
        let isValid = true;

        // hide all previous errors
        $('.text-danger').hide();

        // read field values
        let selected_date = $('#selected_date').val().trim();
        let selected_st_id = $('#selected_st_id').val().trim();
        let sv_id = $('#sv_id').val().trim();
        let vid = $('#vid').val().trim();

        // validate hidden fields
        if (selected_date === '') {
            $('.error-date').show();
            isValid = false;
        }
        if (selected_st_id === '') {
            $('.error-time').show();
            isValid = false;
        }

        // validate service
        if (sv_id === '') {
            $('.error-sv').show();
            isValid = false;
        }

        // validate variant
        if (vid === '') {
            $('.error-vid').show();
            isValid = false;
        }

        // scroll to top and stop submit if invalid
        if (!isValid) {
            $('html, body').animate({ scrollTop: 0 }, 'slow');
            return false; // stop form submission
        }

        return true; // allow form to submit
    }
/***************************************************************************** */
$(document).ready(function () {
    $('.tab-header a').on('click', function () {
        $('.tab-header a.event_active').removeClass('event_active');
        $(this).addClass('event_active');
    });

    $(window).scroll(function () {
        if ($(window).scrollTop() >= 10) {
            $('.header').addClass('fixed-header');
        } else {
            $('.header').removeClass('fixed-header');
        }
    });
    // $(window).scroll(function () {
    //     if ($(window).scrollTop() >= 10) {
    //         $('.tab-header').addClass('fixed-tab-header');
    //     } else {
    //         $('.tab-header').removeClass('fixed-tab-header');
    //     }

    // });

});


