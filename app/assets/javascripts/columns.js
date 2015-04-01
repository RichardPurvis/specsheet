$(function() {
    var template = "<div class="col-lg-6"><div class="input-group"><span class="input-group-addon" id="sizing-addon1">Column Heading:</span><textarea name='column[content][INDEX]'></textarea></div></div>",
        index = $('textarea').length,
        compiled_template;
    
    $('#js-add-column-row').click(function() {
        compiled_textarea = $(template.replace("INDEX", index));
        $('#sheetForm').append(compiled_textarea);
        index = index + 1;
    });
});