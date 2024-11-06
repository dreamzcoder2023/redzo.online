importScripts('https://www.gstatic.com/firebasejs/8.3.2/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.3.2/firebase-messaging.js');

firebase.initializeApp({
    apiKey: "AIzaSyAY3NOwBYXdke2dTSM_LBOajeUSrxMIfy8",
    authDomain: "",
    projectId: "redzouser",
    storageBucket: "",
    messagingSenderId: "409907625620",
    appId: "1:409907625620:android:531566cdaa7fb919a7be81",
    measurementId: ""
});

const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function (payload) {
    return self.registration.showNotification(payload.data.title, {
        body: payload.data.body ? payload.data.body : '',
        icon: payload.data.icon ? payload.data.icon : ''
    });
});