const cat = {
  age: 5,

  ageOneYear () {
    this.age += 1;
  }
};

const catAging = cat.ageOneYear;
catAging();
