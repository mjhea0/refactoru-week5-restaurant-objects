// Generated by CoffeeScript 1.6.3
(function() {
  var Monk, monk1, monk2;

  Monk = function(age, yearsMeditating) {
    var meditate;
    this.age = age;
    this.yearsMeditating = yearsMeditating;
    return this.meditate = meditate = function() {
      var i, om;
      om = "Om";
      i = 0;
      while (i < this.yearsMeditating) {
        om += "m";
        i++;
      }
      return console.log(om);
    };
  };

  monk1 = new Monk(39, 20);

  monk2 = new Monk(85, 53);

  monk1.meditate();

  monk2.meditate();

  console.log(monk1.meditate === monk2.meditate);

  Monk = function(age, yearsMeditating) {
    this.age = age;
    return this.yearsMeditating = yearsMeditating;
  };

  Monk.prototype.meditate = function() {
    var i, om;
    om = "Om";
    i = 0;
    while (i < this.yearsMeditating) {
      om += "m";
      i++;
    }
    return console.log(om);
  };

  monk1 = new Monk(39, 20);

  monk2 = new Monk(85, 53);

  monk1.meditate();

  monk2.meditate();

  Monk.prototype.walk = function() {
    console.log("Walking Meditation");
    return this.meditate();
  };

  monk1.walk();

}).call(this);
