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
      iniciar: {
        sentido: 'antihorario',
        velocidad: 100,
        tiempo: 5,
      },
      terminar: {
        sentido: 'horario',
        velocidad: 100,
        tiempo: 5,
      },
    },
    duro: {
      iniciar: {
        sentido: 'horario',
        velocidad: 150,
        tiempo: 10,
      },
      terminar: {
        sentido: 'antihorario',
        velocidad: 150,
        tiempo: 10,
      },
    },
    intermedio: {
      iniciar: {
        sentido: 'horario',
        velocidad: 150,
        tiempo: 5,
      },
      terminar: {
        sentido: 'antihorario',
        velocidad: 100,
        tiempo: 10,
      },
    },
  };

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
    } else if (porosidad === 'intermedio' && dureza === 'intermedio') {
      analisisSuelo = datosSuelos.intermedio;
    }

    return analisisSuelo;
  };

  this.nombre = nombre;
  this.excavar = (suelo) => {
    const { iniciar, terminar } = analizarSuelo(suelo, 'iniciar');
    activarMecha(iniciar.sentido, iniciar.velocidad, iniciar.tiempo);
    cerrarPinza();
    activarMecha(terminar.sentido, terminar.velocidad, terminar.tiempo);
  };
};

// Defino los suelos, la excavadora, y excavo los suelos
const sueloPiedra = new Suelo('compacto', 'duro');
const sueloPolvo = new Suelo('muy poroso', 'blando');
const sueloIntermedio = new Suelo('intermedio', 'intermedio');

const lunarRover = new Excavadora('Lunar Rover');
console.log('Voy a excavar el suelo formado por Piedra');
lunarRover.excavar(sueloPiedra);
console.log('\n');
console.log('Voy a excavar el suelo formado por Polvo');
lunarRover.excavar(sueloPolvo);
console.log('\n');
console.log('Voy a excavar el suelo Intermedio');
lunarRover.excavar(sueloIntermedio);
