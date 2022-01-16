import consumer from "./consumer"

consumer.subscriptions.create("ChatroomChannel", {
    connected() {
        // Called when the subscription is ready for use on the server
    },

    disconnected() {
        // Called when the subscription has been terminated by the server
    },

    received(data) {
        // Called when there's incoming data on the websocket for this channel
        // alert(data.foo)
        $('#sourav').append(data.themsg)

        // after message send it will clear the text field
        function clearfield() {
            document.getElementById('message_msg').value="";
        }
        clearfield()

        scroll_bottom()

        function scroll_bottom() {
            if ($('#msg__container').length > 0) {
                $('#msg__container').scrollTop($('#msg__container')[0].scrollHeight);
            }
        }

        // document.getElementById('sourav').append(data.themsg)
    }
});
