import { fetchData } from "./modules/TheDataMiner.js";

(() => {
    console.log('loaded');
    
    function popErrorBox(message) {
        alert("Something is wrong");
    }

    function handleDataSet(data) {
        let userSection = document.querySelector('.user-section'),
            userTemplate = document.querySelector('#user-template').content;

        for (let user in data) {
            let currentUser = userTemplate.cloneNode(true),
                currentUserText = currentUser.querySelector('.user').children;

            currentUserText[1].src = `images/${data[user].image}`;
            currentUserText[2].textContent = data[user].topic;
            currentUserText[3].textContent = data[user].title;
            currentUserText[4].textContent = data[user].description;

            userSection.appendChild(currentUser);
        }
    }

    function retrieveProjectInfo() {
        debugger;
        console.log(this.id);

        fetchData(`./includes/index.php?id=${this.id}`).then(data => console.log(data)).catch(err => console.log(err));
    }

    function renderPortfolioThumbnails(thumbs) {
        let userSection = document.querySelector('.user-section'),
            userTemplate = document.querySelector('#user-template').content;

        for (let user in thumbs) {
            let currentUser = userTemplate.cloneNode(true),
                currentUserText = currentUser.querySelector('.user').children;

            currentUserText[1].src = `images/${thumbs[user].image}`;
            currentUserText[1].id = thumbs[user].id;
            currentUser.addEventListener("click", retrieveProjectInfo);
            userSection.appendChild(currentUser);
        }
    }
        
    fetchData("./includes/index.php").then(data => renderPortfolioThumbnails(data)).catch(err => console.log(err));




    let vue_vm = new Vue({

        data: {
            topic1: "Motion Design",
            topic2: "Product Design",
            topic3: "Development",
            removeAformat: true,
            showBioData: false,

            // all car data shows up in vue tab, but only the avatar is shown
            prjcts: []
        },

        mounted: function() {
            console.log("Vue is mounted, trying a fetch for the initial data");
            
            fetchData("./includes/index.php")
                .then(data => {
                    data.forEach(prjcts => this.prjcts.push(prjcts));
                })
                .catch(err => console.error(err));            
        },

        updated: function() {console.log('Vue just updated the DOM');},

        methods: {
            logClicked() {console.log("clicked on a list item");},

            clickMotionDsn() {console.log("clicked on Motion Design");},
            clickPrdctDsn() {console.log("clicked on Product Design");},
            clickDvlpmnt() {console.log("clicked on Development");},

            showCarData(target) {
                console.log('clicked to view car bio data', target, target.name);

                // toggle the property between true and false using a ternary statement
                this.showBioData = this.showBioData ? false : true;

                // make the selected data visible
                this.currentProfData = target;
            },            

            removeCar(target) {
                // remove this car from the cars array
                console.log('clicked to remove prof', target, target.name);

                // make the selected data visible
                // this.professors.splice(this.professors.indexOf(target), 1);
                this.$delete(this.prjcts, target);
            }
        },
    }).$mount("#app");


})();