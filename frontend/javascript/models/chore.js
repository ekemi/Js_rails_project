class Chore {
    static all = [] //This isa static method
    //constructor allows us to make properties of an object
    constructor(name, status ='Incomplete', id){
        this.name = name;
        this.status = status;
        this.id = id;
        Chore.all.push(this) //we put the class in a array, which is putting an object in  
    }
    

}