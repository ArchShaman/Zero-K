unitDef = {
  unitname            = [[corsumo]],
  name                = [[Sumo]],
  description         = [[Jumping Assault/Riot Walker]],
  acceleration        = 0.0552,
  bmcode              = [[1]],
  brakeRate           = 0.1375,
  buildCostEnergy     = 2200,
  buildCostMetal      = 2200,
  builder             = false,
  buildPic            = [[CORSUMO.png]],
  buildTime           = 2200,
  canAttack           = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canstop             = [[1]],
  category            = [[LAND]],
  collisionVolumeOffsets  = [[0 6 1]],
  collisionVolumeScales   = [[70 70 70]],
  collisionVolumeTest	  = 1,
  collisionVolumeType	  = [[ellipsoid]],
  corpse              = [[DEAD]],

  customParams        = {
    canjump        = [[1]],
    description_bp = [[Robô dispersador]],
    description_fr = [[Robot Émeutier]],
	description_de = [[Springender Sturm/Riot Roboter]],
    helptext       = [[The Sumos heatray is immensely powerful at point blank, but unfortunately it gradually dissipates as it travels and loses most of its power at long range. The heat ray's high rate of fire makes it ideal to fight large swarms of cheap units. Remarkably, the Sumo can even jump into the air and stomp on units.]],
    helptext_bp    = [[O raio de calor do Sumo é muito poderoso a curto alcançe, mas se dissipa com a distância e é bem mais fraca de longe. A velocidade alta de disparo o torna ideal para lutar contra grandes grupos de unidades baratas. ]],
    helptext_fr    = [[Le rayon r chaleur du Sumo est capable de délivrer une puissance de feu important sur un point précis. Plus la cible est proche, plus les dégâts seront importants. La précision du rayon est idéale pour lutter contre de larges vagues d'ennemis, mais l'imposant blindage du Sumo le restreint r une vitesse réduite.]],
	helptext_de    = [[Der Sumo nutzt seinen mächtigen Heat Ray in nächster Nähe, auf größerer Entfernung aber verliert es entsprechend an Feuerkraft. Es eignet sich ideal, um größere Gruppen von billigen, feindlichen Einheiten zu vernichten. Bemerkenswert ist es, dass der Sumo in die Luft springen kann und schließlich auf feindlichen Einheiten landet, was diesen enormen Schaden zufügt.]],
  },

  defaultmissiontype  = [[Standby]],
  explodeAs           = [[BIG_UNIT]],
  footprintX          = 4,
  footprintZ          = 4,
  iconType            = [[t3jumpjetriot]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  leaveTracks         = true,
  maneuverleashlength = [[640]],
  mass                = 621,
  maxDamage           = 12500,
  maxSlope            = 36,
  maxVelocity         = 1.2,
  maxWaterDepth       = 22,
  minCloakDistance    = 75,
  movementClass       = [[KBOT4]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName          = [[m-9.s3o]],
  script              = [[corsumo.lua]],
  seismicSignature    = 4,
  selfDestructAs      = [[BIG_UNIT]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:sumosmoke]],
      [[custom:BEAMWEAPON_MUZZLE_ORANGE]],
    },

  },

  side                = [[CORE]],
  sightDistance       = 605,
  smoothAnim          = true,
  steeringmode        = [[2]],
  TEDClass            = [[KBOT]],
  trackOffset         = 0,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[crossFoot]],
  trackWidth          = 66,
  turninplace         = 0,
  turnRate            = 416,
  upright             = false,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[HEATRAY]],
      badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[-1 0 0]],
      maxAngleDif        = 222,
      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
    },


    {
      def                = [[HEATRAY]],
      badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[1 0 0]],
      maxAngleDif        = 222,
      onlyTargetCategory = [[FIXEDWING LAND SINK SHIP SWIM FLOAT GUNSHIP HOVER]],
    },


    {
      def                = [[LANDING]],
      badTargetCategory  = [[]],
      mainDir            = [[1 0 0]],
      maxAngleDif        = 0,
      onlyTargetCategory = [[]],
    },

  },


  weaponDefs          = {

    HEATRAY = {
      name                    = [[Heat Ray]],
      accuracy                = 512,
      areaOfEffect            = 20,
      beamWeapon              = true,
      cegTag                  = [[HEATRAY_CEG]],
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 35,
        planes  = 35,
        subs    = 1.75,
      },

      duration                = 0.3,
      dynDamageExp            = 1,
      dynDamageInverted       = false,
      explosionGenerator      = [[custom:HEATRAY_HIT]],
      fallOffRate             = 1,
      fireStarter             = 90,
      heightMod               = 1,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      lineOfSight             = true,
      lodDistance             = 10000,
      noSelfDamage            = true,
      proximityPriority       = 4,
      range                   = 430,
      reloadtime              = 0.1,
      renderType              = 0,
      rgbColor                = [[1 0.1 0]],
      rgbColor2               = [[1 1 0.25]],
      soundStart              = [[weapon/heatray_fire]],
      targetMoveError         = 0.25,
      thickness               = 3,
      tolerance               = 5000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 500,
    },


    LANDING = {
      name                    = [[Sumo Landing]],
      areaOfEffect            = 300,
      canattackground         = false,
      craterBoost             = 4,
      craterMult              = 6,

      damage                  = {
        default = 800,
        planes  = 800,
        subs    = 40,
      },

      edgeEffectiveness       = 0,
      explosionGenerator      = [[custom:FLASH64]],
      impulseBoost            = 1,
      impulseFactor           = 0.8,
      interceptedByShieldType = 1,
      lineOfSight             = true,
      noSelfDamage            = true,
      range                   = 5,
      reloadtime              = 2,
      renderType              = 4,
      soundHit                = [[krog_stomp]],
      soundStart              = [[krog_stomp]],
      soundStartVolume        = 3,
      startsmoke              = [[1]],
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 5,
    },

  },


  featureDefs         = {

    DEAD = {
      description      = [[Wreckage - Sumo]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 10000,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[20]],
      hitdensity       = [[100]],
      metal            = 900,
      object           = [[m-9_wreck.s3o]],
      reclaimable      = true,
      reclaimTime      = 900,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP = {
      description      = [[Debris - Sumo]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 10000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 440,
      object           = [[debris3x3a.s3o]],
      reclaimable      = true,
      reclaimTime      = 440,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ corsumo = unitDef })
