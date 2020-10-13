// This script define the logic of the revoke cookies acceptances button

(() => {
    $(document).on('click', "#reset-button", function(e) {
        e.preventDefault();
        orejime.internals.manager.resetConsent();
        location.reload();
    });
})(window);
