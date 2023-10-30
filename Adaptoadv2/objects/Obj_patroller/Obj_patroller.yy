{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "Obj_patroller",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_hazard","path":"objects/obj_hazard/obj_hazard.yy",},"propertyId":{"name":"damage_type","path":"objects/obj_hazard/obj_hazard.yy",},"value":"1",},
  ],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
  "parentObjectId": {
    "name": "obj_hazard",
    "path": "objects/obj_hazard/obj_hazard.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"fly_path","filters":[
        "GMPath",
      ],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"path_patroller_1","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"attack_range","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"100","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"hsp","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"2","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_fly",
    "path": "sprites/spr_fly/spr_fly.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}