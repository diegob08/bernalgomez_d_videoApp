(() =>{
  //cms handler load
  console.log('cms handler loaded');
//variables goes top
  let submitButton = document.querySelector('.add-data'),
  targetForm = document.querySelector('form');
//functionality goes here
  function addRecord(){
    event.preventDefault();

    var formData = new  FormData(targetForm);
    strData = {};

    for (var [key,value] of formData.entries()){
      console.log(key,value);

      strData[key] = value;
    }


    //fetch

    let url = "api/";

    fetch(url, {
      method:'post',
      headers :{
        'Accept': 'application/json, text-plain, */*',
        'Content-type': 'application/json'
      },

      body : JSON.stringify(strData)
    })
    .then((resp) => resp.json())
    .then((data) => {
      console.log(data);
    })
    .catch(err => {
      console.log(err);
    });

  }
  //events listeners
  submitButton.addEventListener('click', addRecord);
})();
