-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 20-05-2026 a las 00:54:19
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pokedex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `id_tipo1` int(11) NOT NULL DEFAULT 5,
  `id_tipo2` int(11) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`id`, `nombre`, `descripcion`, `id_tipo1`, `id_tipo2`, `imagen`) VALUES
(1, 'Bulbasaur', 'Una rara semilla le fue plantada en el lomo al nacer. La planta brota y crece con este Pokémon.', 4, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.pn'),
(2, 'Ivysaur', 'Este Pokémon tiene un bulbo en el lomo. Dicen que, al absorber nutrientes, el bulbo se transforma en una flor grande.', 4, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.pn'),
(3, 'Venusaur', 'Llena su cuerpo de energía con los rayos solares que captan los anchos pétalos de su flor.', 4, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.pn'),
(4, 'Charmander', 'La llama de su cola indica la fuerza vital de Charmander. Será brillante si está sano.', 2, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.pn'),
(5, 'Charmeleon', 'Suele usar la cola para derribar a su rival. Cuando lo tira, se vale de sus afiladas garras para acabar con él.', 2, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.pn'),
(6, 'Charizard', 'Cuando lanza una descarga de fuego supercaliente, la roja llama de su cola brilla más intensamente.', 2, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.pn'),
(7, 'Squirtle', 'Se protege con su caparazón y luego contraataca lanzando agua a presión cuando tiene oportunidad.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.pn'),
(8, 'Wartortle', 'Si es golpeado, esconderá su cabeza. Aun así, su cola puede seguir golpeando.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/8.pn'),
(9, 'Blastoise', 'Para acabar con su enemigo, lo aplasta con el peso de su cuerpo. En momentos de apuro, se esconde en el caparazón.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/9.pn'),
(10, 'Caterpie', 'Para protegerse despide un hedor horrible de sus antenas, con el que repele a sus enemigos.', 8, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10.p'),
(11, 'Metapod', 'Su frágil cuerpo está recubierto de una coraza dura como el acero. Permanece quieto en su desarrollo.', 8, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/11.p'),
(12, 'Butterfree', 'Adora el néctar de las flores. Puede localizar hasta las más pequeñas cantidades de polen.', 8, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/12.p'),
(13, 'Weedle', 'Suele habitar bosques y praderas. Tiene un afilado y venenoso aguijón de unos 5 cm encima de la cabeza.', 8, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/13.p'),
(14, 'Kakuna', 'Casi incapaz de moverse, este Pokémon solo puede endurecer su caparazón para protegerse.', 8, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/14.p'),
(15, 'Beedrill', 'Tiene 3 aguijones venenosos en sus patas y cola. Suelen pinchar a sus enemigos repetidas veces.', 8, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/15.p'),
(16, 'Pidgey', 'Muy común en bosques y selvas. Aletea al nivel del suelo para levantar la gravilla.', 5, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/16.p'),
(17, 'Pidgeotto', 'Tiene unas garras desarrolladas. Puede atrapar un Exeggcute y transportarlo desde una distancia de casi 100 km.', 5, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/17.p'),
(18, 'Pidgeot', 'Cuando caza, vuela muy deprisa a ras del agua y sorprende a inocentes presas como Magikarp.', 5, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/18.p'),
(19, 'Rattata', 'Vive allí donde haya comida disponible. Busca todo el día, sin descanso, algo comestible.', 5, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/19.p'),
(20, 'Raticate', 'Lima sus colmillos royendo objetos duros. Con ellos puede destruir incluso paredes de hormigón.', 5, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/20.p'),
(21, 'Spearow', 'Muy protector de su territorio, mueve sus cortas alas sin descanso para lanzarse a toda velocidad.', 5, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/21.p'),
(22, 'Fearow', 'Con sus enormes y magníficas alas, puede seguir volando sin tener que aterrizar para descansar.', 5, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/22.p'),
(23, 'Ekans', 'Cuanto más viejo, más crece este Pokémon. Por la noche, descansa en las ramas de los árboles.', 6, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/23.p'),
(24, 'Arbok', 'El dibujo que tiene en la panza aterroriza. Los rivales más débiles salen huyendo al verlo.', 6, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/24.p'),
(25, 'Pikachu', 'Levanta su cola para vigilar los alrededores. A veces, puede ser alcanzado por un rayo en esa pose.', 1, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.p'),
(26, 'Raichu', 'Cuando se carga de electricidad, sus músculos se tensan y se vuelve más agresivo de lo normal.', 1, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/26.p'),
(27, 'Sandshrew', 'Este Pokémon permanece bajo tierra. Si se siente amenazado, se enrosca para defenderse.', 10, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/27.p'),
(28, 'Sandslash', 'Si cava a gran velocidad, puede que se le caigan las garras y púas. Vuelven a crecerle en un día.', 10, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/28.p'),
(29, 'Nidoran-f', 'Aunque pequeñas, sus venenosas púas son muy peligrosas. Tienen un cuerno más pequeño que los machos.', 6, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/29.p'),
(30, 'Nidorina', 'Tiene un carácter afable. Emite ondas ultrasónicas para confundir al enemigo.', 6, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/30.p'),
(31, 'Nidoqueen', 'Usa su cuerpo duro y escamoso para sellar la entrada a su madriguera y protegerse de los depredadores.', 6, 10, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/31.p'),
(32, 'Nidoran-m', 'Saca las orejas por encima de la hierba para explorar el territorio. Le protege su cuerno venenoso.', 6, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/32.p'),
(33, 'Nidorino', 'Levanta sus grandes orejas para vigilar. Si detecta algo, atacará de inmediato.', 6, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/33.p'),
(34, 'Nidoking', 'Es fácil reconocerlo por tener una dura piel y un gran cuerno lleno de peligrosísimo veneno.', 6, 10, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/34.p'),
(35, 'Clefairy', 'Se dice que la felicidad llegará a quien vea a un grupo de Clefairy bailando a la luz de la luna llena.', 16, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/35.p'),
(36, 'Clefable', 'Su oído es tan agudo que puede oír una aguja caer a 1 km. Vive en montañas solitarias.', 16, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/36.p'),
(37, 'Vulpix', 'Cuando nace solo tiene una cola, pero a medida que crece, esta se va dividiendo desde la punta.', 2, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/37.p'),
(38, 'Ninetales', 'Tiene nueve colas y un pelaje de color dorado. Dicen que este Pokémon llega a vivir 1000 años.', 2, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/38.p'),
(39, 'Jigglypuff', 'Cautiva con la mirada a su enemigo y hace que se quede profundamente dormido mientras entona una dulce melodía.', 5, 16, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/39.p'),
(40, 'Wigglytuff', 'Su piel es tan suave que si dos de ellos se acurrucan juntos, no querrán separarse nunca.', 5, 16, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/40.p'),
(41, 'Zubat', 'Aunque carezca de ojos, puede detectar obstáculos con las ondas ultrasónicas que emite su boca.', 6, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/41.p'),
(42, 'Golbat', 'Cuando ataque, seguirá chupando energía de su víctima, aunque pese tanto que ya no pueda volar.', 6, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/42.p'),
(43, 'Oddish', 'Durante el día, se agazapa en el frío subsuelo huyendo del sol. La luz de la luna le hace crecer mucho.', 4, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/43.p'),
(44, 'Gloom', '¡Huele bastante mal! De todas formas, una de cada mil personas aprecian su fétido olor.', 4, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/44.p'),
(45, 'Vileplume', 'Cuanto mayores son sus pétalos, más tóxico es su polen. Le pesa la cabeza y le cuesta mantenerla erguida.', 4, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/45.p'),
(46, 'Paras', 'Lleva en el lomo dos setas parásitas llamadas tochukaso, que crecen con él.', 8, 4, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/46.p'),
(47, 'Parasect', 'Parasect está dominado por una seta parásita mayor que él. Dispersa esporas venenosas.', 8, 4, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/47.p'),
(48, 'Venonat', 'Sus grandes ojos son en realidad grupos de ojos diminutos. Por la noche se siente atraído por la luz.', 8, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/48.p'),
(49, 'Venomoth', 'Lanza unas escamas que paralizan a cualquiera. Quien las toque, no podrá ni ponerse de pie.', 8, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/49.p'),
(50, 'Diglett', 'Vive un metro por debajo del suelo, donde se alimenta de raíces. También aparece en la superficie.', 10, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/50.p'),
(51, 'Dugtrio', 'En combate, cava la tierra, se esconde y sale de repente para golpear a su rival. Nunca se sabe por dónde puede aparecer.', 10, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/51.p'),
(52, 'Meowth', 'Es de naturaleza nocturna. Le atraen los objetos brillantes.', 5, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/52.p'),
(53, 'Persian', 'Aunque es muy admirado por el pelo, es difícil de entrenar como mascota, porque es un poco travieso.', 5, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/53.p'),
(54, 'Psyduck', 'Padece continuamente dolores de cabeza. Cuando son muy fuertes, empieza a usar misteriosos poderes.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/54.p'),
(55, 'Golduck', 'Aparece en ríos al anochecer. Puede usar poderes telequinéticos si su frente brilla misteriosamente.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/55.p'),
(56, 'Mankey', 'Es peligroso acercarse si se enfada sin razón aparente, ya que no distingue entre amigos y enemigos.', 11, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/56.p'),
(57, 'Primeape', 'Solo se calma cuando nadie está cerca. Llegar a ver ese momento es realmente difícil.', 11, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/57.p'),
(58, 'Growlithe', 'Es muy agradable y leal. Para ahuyentar al enemigo, se pone a ladrar y a dar bocados.', 2, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/58.p'),
(59, 'Arcanine', 'Un Pokémon muy admirado desde la antigüedad por su belleza. Corre ágilmente como si tuviera alas.', 2, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/59.p'),
(60, 'Poliwag', 'Tiene una piel extraordinaria, fina y húmeda, que deja entrever las vísceras que tiene dispuestas en espiral.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/60.p'),
(61, 'Poliwhirl', 'Capaz de vivir dentro o fuera del agua. Fuera del agua suda para mantener baboso su cuerpo.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/61.p'),
(62, 'Poliwrath', 'Tiene músculos muy desarrollados. Es capaz de nadar en el océano sin descanso.', 3, 11, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/62.p'),
(63, 'Abra', 'Duerme 18 horas al día y mientras lo hace es capaz de usar una serie de poderes extrasensoriales.', 7, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/63.p'),
(64, 'Kadabra', 'Cuando utiliza su poder psíquico, emite poderosas ondas alfa que pueden destruir dispositivos.', 7, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/64.p'),
(65, 'Alakazam', 'Sus neuronas se multiplican continuamente durante su vida. Por eso, siempre lo recuerda todo.', 7, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/65.p'),
(66, 'Machop', 'Levanta un Graveler para mantener sus músculos en forma. Domina todas las artes marciales.', 11, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/66.p'),
(67, 'Machoke', 'Su musculoso cuerpo es tan fuerte que usa un cinto antifuerza para controlar sus movimientos.', 11, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/67.p'),
(68, 'Machamp', 'Tiene cuatro brazos tan bien desarrollados que puede dar una serie de 1000 puñetazos en cuestión de dos segundos.', 11, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/68.p'),
(69, 'Bellsprout', 'Aunque su cuerpo es extremadamente delgado, es muy rápido a la hora de capturar sus presas.', 4, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/69.p'),
(70, 'Weepinbell', 'Las hojas que tiene actúan como cuchillas en combate. Otra de sus armas es el corrosivo fluido que expulsa.', 4, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/70.p'),
(71, 'Victreebel', 'Dicen que vive en grandes colonias en el interior de las junglas, aunque nadie ha podido verificarlo.', 4, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/71.p'),
(72, 'Tentacool', 'Su cuerpo se compone casi en exclusiva de agua. Lanza extraños rayos con sus ojos cristalinos.', 3, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/72.p'),
(73, 'Tentacruel', 'Cuando caza, extiende los cortos tentáculos que tiene para atrapar e inmovilizar a su presa.', 3, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/73.p'),
(74, 'Geodude', 'Aparecen en llanos y montañas. Como parecen rocas, la gente se tropieza con ellos o los pisa.', 9, 10, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/74.p'),
(75, 'Graveler', 'De naturaleza descuidada y libre, no le importa dañarse cuando baja rodando montañas.', 9, 10, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/75.p'),
(76, 'Golem', 'Se lanza montaña abajo y deja un surco desde la cima hasta el pie. Es mejor mantenerse alejado.', 9, 10, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/76.p'),
(77, 'Ponyta', 'Cuando nace, apenas puede tenerse en pie. Pero va fortaleciendo las patas en cuanto empieza a galopar.', 2, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/77.p'),
(78, 'Rapidash', 'Galopa a casi 240 km por hora. Su crin ardiente parece una flecha cuando corre.', 2, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/78.p'),
(79, 'Slowpoke', 'Descansa ocioso junto al agua. Si algo muerde su cola, no lo notará en todo el día.', 3, 7, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/79.p'),
(80, 'Slowbro', 'Tiene una cola tan apetecible, que el Shellder que va enganchado a ella no se soltará por nada del mundo.', 3, 7, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/80.p'),
(81, 'Magnemite', 'Las unidades a los lados de su cuerpo generan energía antigravitatoria para mantenerlo en el aire.', 1, 17, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/81.p'),
(82, 'Magneton', 'Lo constituye un grupo de Magnemite. Descarga potentes ondas magnéticas de alto voltaje.', 1, 17, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/82.p'),
(83, 'Farfetchd', 'El puerro que lleva es su mejor arma. Suele usarlo como espada para cortar cosas.', 5, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/83.p'),
(84, 'Doduo', 'Este Pokémon de dos cabezas es el resultado de una mutación. Cuando corre, puede alcanzar casi 100 km por hora.', 5, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/84.p'),
(85, 'Dodrio', 'Más vale no perder de vista ninguna de las tres cabezas. De lo contrario, el número de picotazos será enorme.', 5, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/85.p'),
(86, 'Seel', 'Este Pokémon vive en icebergs. Nada en el mar y usa el cuerno de su cabeza para romper el hielo.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/86.p'),
(87, 'Dewgong', 'Está recubierto de un luminoso pelaje blanco. Este Pokémon aumenta su actividad cuando bajan las temperaturas.', 3, 13, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/87.p'),
(88, 'Grimer', 'Nace de lodo alterado al filtrarse en el agua los rayos X reflejados por la Luna. Se alimenta de sustancias desagradables.', 6, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/88.p'),
(89, 'Muk', 'Les encanta reunirse en zonas apestosas donde se acumula el lodo, haciendo su olor más insoportable.', 6, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/89.p'),
(90, 'Shellder', 'La concha lo protege de cualquier tipo de ataque. Solo es vulnerable cuando se abre.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/90.p'),
(91, 'Cloyster', 'A los Cloyster que viven en las fuertes corrientes marinas les crecen largas y afiladas púas en la concha.', 3, 13, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/91.p'),
(92, 'Gastly', 'Su etéreo cuerpo está hecho de gas. Puede envolver a un oponente de cualquier tamaño hasta ahogarlo.', 15, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/92.p'),
(93, 'Haunter', 'Cuando tienes la sensación de que te están observando, seguro que es porque Haunter está cerca.', 15, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/93.p'),
(94, 'Gengar', 'Se esconde entre las sombras. Se dice que donde Gengar acecha, la temperatura baja 5 °C.', 15, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/94.p'),
(95, 'Onix', 'Cava a gran velocidad en busca de comida. Los túneles que deja son usados por los Diglett.', 9, 10, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/95.p'),
(96, 'Drowzee', 'Adormece a sus enemigos y se come sus sueños. A veces se pone enfermo si come pesadillas.', 7, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/96.p'),
(97, 'Hypno', 'Lleva un péndulo en la mano. Una vez, hizo desaparecer a un niño al que había hipnotizado.', 7, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/97.p'),
(98, 'Krabby', 'Ante el peligro, se camufla con las burbujas que desprende su boca, para parecer más grande.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/98.p'),
(99, 'Kingler', 'La pinza tan grande que tiene posee una fuerza de 10 000 caballos de potencia. Pero, por su gran tamaño, cuesta moverla.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/99.p'),
(100, 'Voltorb', 'Fue descubierto cuando se crearon las Poké Balls. Se dice que tiene algo que ver con ellas.', 1, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/100.'),
(101, 'Electrode', 'Explotan a la mínima. Por eso se les tiene mucho miedo. Estos Pokémon reciben el mote de Bomba Ball.', 1, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/101.'),
(102, 'Exeggcute', 'Estos seis huevos se comunican por telepatía. Si se separan, se pueden reunir rápidamente.', 4, 7, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/102.'),
(103, 'Exeggutor', 'Sus tres cabezas piensan de forma independiente. Sin embargo, son amigas y no suelen discutir nunca.', 4, 7, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/103.'),
(104, 'Cubone', 'Lleva puesto el cráneo de su madre. Cuando se siente solo se pone a gritar muy fuerte.', 10, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/104.'),
(105, 'Marowak', 'Es pequeño y siempre ha sido muy débil. Cuando empezó a usar huesos, se volvió más violento.', 10, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/105.'),
(106, 'Hitmonlee', 'Encoge y estira las patas a su antojo. Cuando las estira, es capaz de propinar una buena patada al enemigo.', 11, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/106.'),
(107, 'Hitmonchan', 'Los potentes golpes de sus brazos pueden pulverizar el hormigón. Descansa tras luchar tres minutos.', 11, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/107.'),
(108, 'Lickitung', 'Su larga lengua, recubierta de saliva pegajosa, se pega a todo, por lo que es muy útil.', 5, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/108.'),
(109, 'Koffing', 'Tiene forma de globo y es muy ligero. Está compuesto por gases tóxicos y apesta.', 6, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/109.'),
(110, 'Weezing', 'Si uno de los gemelos Koffing se infla, el otro se desinfla. Mezclan constantemente sus venenosos gases.', 6, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/110.'),
(111, 'Rhyhorn', 'Es muy fuerte, pero no especialmente listo. Es capaz de derribar rascacielos usando Placaje varias veces.', 10, 9, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/111.'),
(112, 'Rhydon', 'La piel le sirve de escudo protector. Puede vivir en lava líquida a 2000 °C de temperatura.', 10, 9, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/112.'),
(113, 'Chansey', 'Se dice que reparte felicidad. Se caracteriza por su compasión y reparte sus huevos entre la gente herida.', 5, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/113.'),
(114, 'Tangela', 'Se camufla con la multitud de lianas que envuelven su cuerpo y que no dejan de crecer a lo largo de toda su vida.', 4, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/114.'),
(115, 'Kangaskhan', 'Lleva a su cría en la bolsa de su panza. Solo deja que su cría salga a jugar cuando no siente peligro.', 5, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/115.'),
(116, 'Horsea', 'Es famoso por derribar a bichos voladores lanzando tinta desde la superficie del agua.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/116.'),
(117, 'Seadra', 'Las afiladas púas que le recubren el cuerpo se le erizan y pueden causar el debilitamiento con solo tocarlo.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/117.'),
(118, 'Goldeen', 'Nada a una velocidad de cinco nudos. Si siente peligro, golpea con su afilado cuerno.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/118.'),
(119, 'Seaking', 'En otoño, cuando se reproducen, se les puede ver nadando con energía por ríos y arroyos.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/119.'),
(120, 'Staryu', 'Aunque sus brazos se rompan podrán regenerarse, siempre y cuando su núcleo siga intacto.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/120.'),
(121, 'Starmie', 'Su núcleo central brilla con los colores del arcoíris. Para algunos tiene el valor de una gema.', 3, 7, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/121.'),
(122, 'Mr-mime', 'Para repeler ataques, solidifica el aire y crea muros invisibles con emanaciones de sus dedos.', 7, 16, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/122.'),
(123, 'Scyther', 'Destroza a su presa con las guadañas que tiene. No es común que use las alas para volar.', 8, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/123.'),
(124, 'Jynx', 'Camina moviendo las caderas de forma llamativa. Puede hacer que la gente baile a su ritmo.', 13, 7, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/124.'),
(125, 'Electabuzz', 'Por la superficie de su piel corre la electricidad. En la oscuridad, su cuerpo se torna blanquecino.', 1, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/125.'),
(126, 'Magmar', 'A este Pokémon se lo encontraron cerca de un volcán. Esta criatura ígnea tiene una temperatura corporal de unos 1200 °C.', 2, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/126.'),
(127, 'Pinsir', 'Atrapa presas con sus pinzas hasta que las parte en dos. Lanza lejos lo que no puede quebrar.', 8, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/127.'),
(128, 'Tauros', 'Después de animarse a luchar fustigándose con sus tres colas, carga a toda velocidad.', 5, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/128.'),
(129, 'Magikarp', 'No es precisamente rápido ni fuerte. Es el Pokémon más debilucho y simplón de todos los que hay.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/129.'),
(130, 'Gyarados', 'En la literatura antigua se dice que un Gyarados rebosante de violencia arrasó un poblado.', 3, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/130.'),
(131, 'Lapras', 'Son buenos de corazón. Muchos fueron capturados por ser tan pacíficos. Ahora hay muchos menos.', 3, 13, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/131.'),
(132, 'Ditto', 'Puede alterar por completo su estructura celular para emular cualquier objeto que vea.', 5, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/132.'),
(133, 'Eevee', 'Un extraño Pokémon que se adapta a los entornos más hostiles gracias a sus diferentes evoluciones.', 5, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/133.'),
(134, 'Vaporeon', 'Prefiere las bellas costas. Con células parecidas al agua, podría fundirse en la misma.', 3, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/134.'),
(135, 'Jolteon', 'Todos los pelos de su cuerpo se ponen de punta si empieza a cargarse de electricidad.', 1, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/135.'),
(136, 'Flareon', 'Almacena llamas en su cuerpo, que alcanza una temperatura de 900 °C antes de un combate.', 2, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/136.'),
(137, 'Porygon', 'Pokémon creado por el hombre tras muchas investigaciones. Sus habilidades son básicas.', 5, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/137.'),
(138, 'Omanyte', 'Pokémon prehistórico que vivió en el océano primordial. Para nadar se valía de sus 10 tentáculos.', 9, 3, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/138.'),
(139, 'Omastar', 'Tiene los tentáculos tan desarrollados que le sirven de manos y pies. Con ellos atrapa a su presa y le da un bocado.', 9, 3, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/139.'),
(140, 'Kabuto', 'Se cree que habitó las playas hace 300 millones de años. Se protege con una dura concha.', 9, 3, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/140.'),
(141, 'Kabutops', 'Repliega sus extremidades en el agua para hacerse más compacto, y mueve su concha para nadar rápido.', 9, 3, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/141.'),
(142, 'Aerodactyl', 'Se regeneró a partir de material genético de un dinosaurio encontrado en ámbar. Cuando vuela emite escandalosos alaridos.', 9, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/142.'),
(143, 'Snorlax', 'No se encuentra satisfecho hasta que no se come 400 kg de comida cada día. Cuando acaba de comer, se queda dormido.', 5, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/143.'),
(144, 'Articuno', 'Legendario Pokémon pájaro capaz de generar ventiscas congelando la humedad del aire.', 13, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/144.'),
(145, 'Zapdos', 'Es un legendario pájaro Pokémon. Dicen que aparece entre las nubes lanzando enormes rayos brillantes.', 1, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/145.'),
(146, 'Moltres', 'Es más conocido como el legendario pájaro de fuego. Con cada aleteo crea brillantes llamas.', 2, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/146.'),
(147, 'Dratini', 'Se le llama el Pokémon Espejismo porque son muy pocos los que lo han visto. Se encontró su muda.', 14, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/147.'),
(148, 'Dragonair', 'Sus cristalinos orbes parecen darle al Pokémon el poder de controlar el clima libremente.', 14, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/148.'),
(149, 'Dragonite', 'A pesar del tamaño que tiene y de lo pesado que es, puede volar. Es capaz de dar la vuelta al mundo en solo 16 horas.', 14, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/149.'),
(150, 'Mewtwo', 'Fue creado por un científico tras años de horribles experimentos de ingeniería genética.', 7, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/150.'),
(151, 'Mew', 'Varios científicos lo consideran el antecesor de los Pokémon porque usa todo tipo de movimientos.', 7, NULL, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/151.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `imagen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id`, `descripcion`, `imagen`) VALUES
(1, 'Eléctrico', 'Eléctrico.png'),
(2, 'Fuego', 'Fuego.png'),
(3, 'Agua', 'Agua.png'),
(4, 'Planta', 'Planta.png'),
(5, 'Normal', 'Normal.png'),
(6, 'Veneno', 'Veneno.png'),
(7, 'Psíquico', 'Psíquico.png'),
(8, 'Bicho', 'Bicho.png'),
(9, 'Roca', 'Roca.png'),
(10, 'Tierra', 'Tierra.png'),
(11, 'Lucha', 'Lucha.png'),
(12, 'Volador', 'Volador.png'),
(13, 'Hielo', 'Hielo.png'),
(14, 'Dragón', 'Dragón.png'),
(15, 'Fantasma', 'Fantasma.png'),
(16, 'Hada', 'Hada.png'),
(17, 'Acero', 'Acero.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `id_tipo1` (`id_tipo1`),
  ADD KEY `id_tipo2` (`id_tipo2`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `pokemon_ibfk_1` FOREIGN KEY (`id_tipo1`) REFERENCES `tipo` (`id`),
  ADD CONSTRAINT `pokemon_ibfk_2` FOREIGN KEY (`id_tipo2`) REFERENCES `tipo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
