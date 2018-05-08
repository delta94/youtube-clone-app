(function(){
var data = document.querySelector('.sidebar_1');
if(data == null){
	console.log('error');
	return;
}
var content = [];
content[0] = data.querySelector('.title_news_detail');
content[1] = data.querySelector('.description');
content[2] = data.querySelector('article');
for(let i = 0; i < 3; i++){
	if(content[i] == null){
		console.log('error');
		return;
	}
}
var post = {title: content[0], description: content[1]};
post.article = [];
post.article = Array.from(content[2].children);
post.title = post.title.innerText;
post.description = post.description.innerText;
var text = [];

post.article.forEach(function(p){
	if(p.tagName === "P"){
		text.push(p.innerText);
  	}
	else if(p.tagName === "TABLE"){
		var image = p.querySelector('img').src;
		var imageName = p.querySelector('.Image');
		if(imageName) {imageName = imageName.innerText;
			text.push({image: image, imageName: imageName});
		}
		else{
			text.push({image: image});
		}
    	}
	else if(p.tagName === "DIV"){
		if(p.querySelector('video')){
			var video = p.querySelector('video').src;
			var videoName = p.querySelector('.Image');
			if(videoName) {
				videoName = videoName.innerText;
				text.push({video: video, videoName: videoName});
			}
			else{
				text.push({video: video});
			}
		}
	}
});

/*
if(text.length == 0){
	post.article[0].forEach(function(p){
		var image = p.querySelector('img').src;
		var paragraph = p.querySelector('p').innerText;
		text.push({image: image});
		text.push(paragraph);
	});
	var author = post.article[1].querySelector('strong');
	if(author) author = author.innerText;
	else{
		author = document.querySelector('.sidebar_1 p.author_mail').innerText;
	}
	text.push(author);
}
*/

post.article = text;
var file = JSON.stringify(post);

// Declare console.save() function
(function(console){

    console.save = function(data, filename){

	if(!data) {
	    console.error('Console.save: No data')
	    return;
	}

	if(!filename) filename = 'console.json'

	if(typeof data === "object"){
	    data = JSON.stringify(data, undefined, 4)
	}

	var blob = new Blob([data], {type: 'text/json'}),
	    e    = document.createEvent('MouseEvents'),
	    a    = document.createElement('a')

	a.download = filename
	a.href = window.URL.createObjectURL(blob)
	a.dataset.downloadurl =  ['text/json', a.download, a.href].join(':')
	e.initMouseEvent('click', true, false, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null)
	a.dispatchEvent(e)
    }
})(console);

console.save(file);
})();
