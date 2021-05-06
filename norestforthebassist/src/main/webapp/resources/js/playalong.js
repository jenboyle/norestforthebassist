/**
 * 
 */

function playAlong (scaleName, drumTrack)
{
    alert('' + scaleName);
    alert('' + drumTrack);
    var maindrone = 'resources/audio/drones/Cdrone30.mp3';
    if (scaleName === 'cmajor'){
    	maindrone = 'resources/audio/drones/Cdrone30.mp3';
    } else if (scaleName === 'dmajor'){
    	maindrone = 'resources/audio/drones/Ddrone30.mp3';
    } else if (scaleName === 'emajor'){
    	maindrone = 'resources/audio/drones/Edrone30.mp3';
    } else if (scaleName === 'fmajor'){
    	maindrone = 'resources/audio/drones/Fdrone30.mp3';
    } else if (scaleName === 'gmajor'){
    	maindrone = 'resources/audio/drones/Gdrone30.mp3';
    } else if (scaleName === 'amajor'){
    	maindrone = 'resources/audio/drones/Adrone30.mp3';
    } else if (scaleName === 'bmajor'){
    	maindrone = 'resources/audio/drones/Bdrone30.mp3';
    }
    
    var drumbeat = 'resources/audio/beats/' + drumTrack;
    
    var audioElement = new Audio(maindrone);
    var drumElement = new Audio(drumbeat);
    audioElement.play();
    drumElement.play();
}
