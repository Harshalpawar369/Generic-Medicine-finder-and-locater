
  document.addEventListener('DOMContentLoaded', function () {
    // Check if the browser supports the Web Speech API
    if ('SpeechRecognition' in window || 'webkitSpeechRecognition' in window) {
      var recognition = new (window.SpeechRecognition || window.webkitSpeechRecognition)();

      recognition.continuous = true;
      recognition.interimResults = true;

      var outputText = document.getElementById('searchField');
      var startBtn = document.getElementById('mic');
      var isListening = false;

      recognition.onstart = function () {
        outputText.placeholder = 'Listening...';
      };

      recognition.onresult = function (event) {
        var transcript = Array.from(event.results)
          .map(result => result[0].transcript)
          .join(' ');

        outputText.value = transcript;
      };

      recognition.onerror = function (event) {
        console.error('Speech recognition error:', event.error);
        outputText.placeholder = 'Error occurred. Please try again.';
        isListening = false;
      };

      recognition.onend = function () {
        if (isListening) {
          recognition.start();
        } else {
          outputText.placeholder = 'Enter medicine name one by one';
        }
      };

      startBtn.addEventListener('click', function () {
        if (!isListening) {
          recognition.start();
          isListening = true;
        } else {
          recognition.stop();
          isListening = false;
          outputText.placeholder = 'Recording stopped. Enter medicine name one by one';
        }
      });
    } else {
      alert('Speech recognition is not supported in this browser. Please use a supported browser.');
    }
  });
