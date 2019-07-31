function blueGradient() {
    document.getElementById('header').style.backgroundImage = 'linear-gradient(#145e96, #55a4e0)';
    document.getElementById('footer').style.backgroundImage = 'linear-gradient(#55a4e0, #145e96)';
    
    var buttons = document.getElementsByClassName('btn-default');
    var style = document.createElement('style');
    style.appendChild(document.createTextNode('.btn-default:hover { color: #3783BD; }'));
    for (var i = 0; i < buttons.length; i++) {
        buttons[i].appendChild(style);
    }

    var images = document.getElementsByClassName('recolorable');
    var style = document.createElement('style');
    style.appendChild(document.createTextNode('.svg .recolorable { fill: #3783BD; }'));
    for (var i = 0; i < buttons.length; i++) {
        images[i].appendChild(style);
    }
}

function orangeGradient() {
    document.getElementById('header').style.backgroundImage = 'linear-gradient(#d15115, #e3b520)';
    document.getElementById('footer').style.backgroundImage = 'linear-gradient(#e3b520, #d15115)';
    
    var buttons = document.getElementsByClassName('btn-default');
    var style = document.createElement('style');
    style.appendChild(document.createTextNode('.btn-default:hover { color: #DC861C; }'));
    for (var i = 0; i < buttons.length; i++) {
        buttons[i].appendChild(style);
    }

    var images = document.getElementsByClassName('recolorable');
    var style = document.createElement('style');
    style.appendChild(document.createTextNode('.svg .recolorable { fill: #DC861C; }'));
    for (var i = 0; i < buttons.length; i++) {
        images[i].appendChild(style);
    }
}

function purpleGradient() {
    document.getElementById('header').style.backgroundImage = 'linear-gradient(#8c05b5, #e08cfa)';
    document.getElementById('footer').style.backgroundImage = 'linear-gradient(#e08cfa, #8c05b5)';

    var buttons = document.getElementsByClassName('btn-default');
    var style = document.createElement('style');
    style.appendChild(document.createTextNode('.btn-default:hover { color: #CA20D8; }'));
    for (var i = 0; i < buttons.length; i++) {
        buttons[i].appendChild(style);
    }

    var images = document.getElementsByClassName('recolorable');
    var style = document.createElement('style');
    style.appendChild(document.createTextNode('.svg .recolorable { fill: #CA20D8; }'));
    for (var i = 0; i < buttons.length; i++) {
        images[i].appendChild(style);
    }
}