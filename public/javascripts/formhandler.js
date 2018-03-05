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
  }
  //events listeners
  submitButton.addEventListener('click', addRecord);
})();
