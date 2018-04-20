(() => {
  // variables always get declared at the top of the JS file
  let getButtons = document.querySelectorAll('.getButton'),
    postButton = document.querySelector('.postButton'),
    deleteButton = document.querySelector('.deleteButton');

  function fetchData() {
    let url = "api/" + this.id;

    fetch(url)
      .then((resp) => resp.json())
      .then((data) => {
        console.log(data);
      })
      .catch(function(error) {
        console.log(error);
      });
  }

  function deleteRecord() {
    let url = "api/" + this.id;

    fetch(url, {
        method: 'delete'
      })
      .then((resp) => resp.json())
      .then((data) => {
        console.log(data);
      })
      .catch(function(error) {
        console.log(error);
      });
  }

  function insertRecord() {
    let url = "api/" + this.id;

    fetch(url, {
        method: 'post',
        headers: {
          'Accept': 'application/json, text-plain, */*',
          'Content-type': 'application/json'
        },
        body: JSON.stringify({
          model: "F56",
          modelName: "Mini Cooper F56",
          pricing: "22, 190",
          modelDetails: "lots and lots of text",
          imgPath: "F56.jpg"
        })
      })
      .then((resp) => resp.json())
      .then((data) => {
        console.log(data);
      })
      .catch(function(error) {
        console.log(error);
      });
  }
  // event handling always goes at the bottom
  getButtons.forEach(button => button.addEventListener('click', fetchData));
  deleteButton.addEventListener('click', deleteRecord);
  postButton.addEventListener('click', insertRecord);
})();

const myApp = {
  // some non-VM functionality would go here -> split the movies into genres using Vue
  movieGenres(data) {
    data.forEach((genre, index) => {
      console.log(genre)
      myApp.vm.genres.push({
        name: genre.genre_name,
        id: genre.genre_id
      })
    })
  },

  vm: new Vue({
    el: "#app",
    data: {
      message: "Welcome to my Netflix ripoff!",
      genres: [] // these get populated from the function at the top of the file
    },
    methods: {},
    delimiters: ["${", "}"]
  })
}

myApp.movieGenres(appData.movieCats);
