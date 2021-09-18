<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id='view_data'>
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalCenterTitle"></h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

            </div>
        </div>
    </div>
</div>
</div>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/datatables.min.js"></script>
<script src="assets/js/moment.min.js"></script>
<script src="assets/js/fullcalendar.min.js"></script>
<script src="assets/js/bootadmin.min.js"></script>
<script src="https://use.fontawesome.com/b6e01bc9b6.js"></script>
<script src="assets/js/notify.min.js"></script>
<script src="assets/js/bootbox.all.js"></script>
<script src="assets/js/jquery.validate.min.js"></script>
<script src="assets/js/select2.min.js"></script>
<script src="assets/js/op_lib.js"></script>
<script>
    $(document).ready(function() {
        $('#data_tbl').dataTable({
            aLengthMenu: [
                [25, 50, 100, 200, -1],
                [25, 50, 100, 200, "All"]
            ],
            iDisplayLength: 25
        });
    });
    // var source = new EventSource("notification.php");
    // source.onmessage = function(event) {
    // //document.getElementById("server_notice").innerHTML += event.data + "<br>";
    // //$("#notification").html(event.data);
    // $.notify(event.data,"info");
    // };

    function export_xls() {
        var tab_text = "<table border='1px' width='700px'><tr>";
        var textRange;
        var j = 0;
        tab = document.getElementById('data_tbl'); // id of table

        for (j = 0; j < tab.rows.length; j++) {
            tab_text = tab_text + tab.rows[j].innerHTML + "</tr>";
            //tab_text=tab_text+"</tr>";
        }

        tab_text = tab_text + "</table>";
        // tab_text= tab_text.replace(/<A[^>]*>|<\/A>/g, "");//remove if u want links in your table
        tab_text = tab_text.replace(/<img[^>]*>/gi, ""); // remove if u want images in your table
        tab_text = tab_text.replace(/<input[^>]*>|<\/input>/gi, ""); // reomves input params

        var ua = window.navigator.userAgent;
        var msie = ua.indexOf("MSIE ");

        if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) // If Internet Explorer
        {
            txtArea1.document.open("txt/html", "replace");
            txtArea1.document.write(tab_text);
            txtArea1.document.close();
            txtArea1.focus();
            sa = txtArea1.document.execCommand("SaveAs", true, "export.xls");
        } else //other browser not tested on IE 11
            sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));

        return (sa);
    }
    $(document).ready(function() {
        $('.select2').select2();
    });
</script>

</body>

</html>