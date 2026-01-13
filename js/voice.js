
  
  <script>
    // Check if the browser supports the Web Speech API
    if ('SpeechRecognition' in window || 'webkitSpeechRecognition' in window) {
      var recognition = new (window.SpeechRecognition || window.webkitSpeechRecognition)();

      recognition.continuous = true;
      recognition.interimResults = true;

      var outputText = document.getElementById('output-text');
      var startBtn = document.getElementById('start-btn');

      recognition.onstart = function () {
        outputText.textContent = 'Listening...';
      };

      recognition.onresult = function (event) {
        var transcript = Array.from(event.results)
          .map(result => result[0].transcript)
          .join(' ');

        outputText.textContent = transcript;
      };

      recognition.onerror = function (event) {
        console.error('Speech recognition error:', event.error);
        outputText.textContent = 'Error occurred. Please try again.';
      };

      recognition.onend = function () {
        outputText.textContent += '\n\nSpeech recognition ended.';
      };

      startBtn.addEventListener('click', function () {
        recognition.start();
      });
    } else {
      alert('Speech recognition is not supported in this browser. Please use a supported browser.');
    }
  </script>
