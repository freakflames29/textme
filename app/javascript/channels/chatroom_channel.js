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
            let valis = document.getElementById('message_msg').value
            console.log(valis)
            document.getElementById('message_msg').value = "";

            if (valis == 'IAMBORED') {
                let url = 'https://www.youtube.com/watch?v=Q2WcdaF8uL8'
                window.open(url, '_blank').focus();
            }
            if (valis == 'ILOVEYOU') {
                let div = document.getElementById('centerallign')
                let heart = document.getElementById('lovecenter')
                document.getElementById('song').play()

                div.innerHTML = '<img src="assets/love.gif" alt="fdsf">'
                setTimeout(function (){
                    heart.innerHTML=' <img src="assets/the.gif" alt="xgif">'
                },39000)
                setTimeout(function () {
                    div.innerHTML = ""
                    heart.innerHTML=""
                }, 55000)
            }

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
