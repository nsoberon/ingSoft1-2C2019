function Suelo(porosidad, dureza) {
    this.porosidad = porosidad;
    this.dureza = dureza;
    return this;
}

function Excavadora(nombre) {
  const pinza = {
    estaAbierta: true,
  };
  const datosSuelos = {
    blando: {
      sentido: 'antihorario',
      velocidad: 100,
      tiempo: 5,
    },
    duro: {
      sentido: 'horario',
      velocidad: 150,
      tiempo: 10,
    },
  };
  invertir = sentido => sentido == 'horario' ? 'antihorario' : 'horario';
  abrirPinza = () => {
    pinza.estaAbierta = true;
    console.log('La pinza se abrio');
  };
  cerrarPinza = () => {
    pinza.estaAbierta = false;
    console.log('La pinza se cerro');
  };
  activarMecha = (sentido, velocidad, tiempo) => {
    console.log(`Mecha funcionando en sentido ${sentido} a ${velocidad} RPM, durante ${tiempo} minutos`);
  };
  analizarSuelo = (suelo) => {
    let analisisSuelo = {};
    const { porosidad, dureza } = suelo;
    if (porosidad === 'compacto' && dureza === 'duro') {
      analisisSuelo = datosSuelos.duro;
    } else if (porosidad === 'muy poroso' && dureza === 'blando') {
      analisisSuelo = datosSuelos.blando;
    }

    return analisisSuelo;
  };

  this.nombre = nombre;
  this.excavar = (suelo) => {
    const { sentido, velocidad, tiempo } = analizarSuelo(suelo);
    activarMecha(sentido, velocidad, tiempo);
    cerrarPinza();
    activarMecha(invertir(sentido), velocidad, tiempo);
  };
};

// Defino los suelos, la excavadora, y excavo los suelos
const sueloPiedra = new Suelo('compacto', 'duro');
const sueloPolvo = new Suelo('muy poroso', 'blando');

const lunarRover = new Excavadora('Lunar Rover');
console.log('Voy a excavar el suelo formado por Piedra');
lunarRover.excavar(sueloPiedra);
console.log('\n');
console.log('Voy a excavar el suelo formado por Polvo');
lunarRover.excavar(sueloPolvo);
