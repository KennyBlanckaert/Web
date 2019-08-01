function update(e) {
    var x = e.clientX || e.touches[0].clientX
    var y = e.clientY || e.touches[0].clientY

    document.documentElement.style.setProperty('--cursorX', x + 'px')
    document.documentElement.style.setProperty('--cursorY', y + 'px')
}

document.addEventListener('mousemove', update)
document.addEventListener('touchmove', update)

$('#background').click(function() {
    var lightState = window.localStorage.getItem('lightState');

    if (lightState == undefined) {
        document.styleSheets[0].cssRules[1].style.background = 'radial-gradient(circle 10vmax at var(--cursorX) var(--cursorY), rgba(0,0,0,.95) 0%, rgba(0,0,0,.95) 80%, rgba(0,0,0,.95) 100%)';
        window.localStorage.setItem('lightState', 'OFF');
    }

    if (!lightState.localeCompare("ON")) {
        document.styleSheets[0].cssRules[1].style.background = 'radial-gradient(circle 10vmax at var(--cursorX) var(--cursorY), rgba(0,0,0,.95) 0%, rgba(0,0,0,.95) 80%, rgba(0,0,0,.95) 100%)';
        window.localStorage.setItem('lightState', 'OFF');
    }

    if (!lightState.localeCompare("OFF")) {
        document.styleSheets[0].cssRules[1].style.background = 'radial-gradient(circle 10vmax at var(--cursorX) var(--cursorY), rgba(0,0,0,0) 0%, rgba(0,0,0,.5) 80%, rgba(0,0,0,.95) 100%)';
        window.localStorage.setItem('lightState', 'ON');
    }
})