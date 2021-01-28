class Chore {
    static all = [] //This isa static method
    //constructor allows us to make properties of an object
    constructor(name, status ='Incomplete', id){
        this.name = name;
        this.status = status;
        this.id = id;
        Chore.all.push(this) //we put the class in a array, which is putting an object in  
    }

    static postChore(choreData) {

        let formData ={

            "name":choreData.name.value,
            "status": choreData.status ="Incomplete",
            "house_id":choreData.quereySelector('select').value //we need a dot 

        }
        let configObj = {

            method: "POST",
            headers: {
                'Accept': 'application/json',
                'content-type': "application/json"

            },
            body: JSON.stringify(formData)
        }

        return (Api.CHORES_URL, configObj)
        .then(response =>response.json())
        .then(choreObj =>{
            //find() method return the first array that match the condition
            let house = House.all.find(chosenFamily =>choreObj.house_id ==chosenFamily.id)
            let newObj = new Chore(choreObj.name ,choreObj.status, choreObj.id)

            house.chores.push(newObj)
            clearChoreDivs()


        })
    }
    

}