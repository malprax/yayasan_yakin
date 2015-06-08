$(document).ready(function(){
    $('.datepicker').datepicker({
      // format: "DD,dd MM yyyy",
      format: "dd MM yyyy",
      todayBtn: "linked",
      language: "id",
      calendarWeeks: true,
      autoclose: true,
      todayHighlight: true
    });
  });


// var ready;
// ready = function(){
//       $('.datepicker').datepicker({
//         format: "dd MM yyyy",
//         todayBtn: "linked",
//         language: "id",
//         calendarWeeks: true,
//         autoclose: true,
//         todayHighlight: true
//       });
// };
//
// $(document).ready(ready);
// $(document).on('page:load', ready);