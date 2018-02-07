-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 07 feb 2018 om 12:52
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dc-heroes`
--
CREATE DATABASE IF NOT EXISTS `dc-heroes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dc-heroes`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `hero`
--

CREATE TABLE IF NOT EXISTS `hero` (
  `heroId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable',
  `heroName` varchar(50) NOT NULL COMMENT 'the name of the hero, just a string',
  `heroDescription` text NOT NULL COMMENT 'some information of the hero, just a string',
  `heroPower` text NOT NULL,
  `heroImage` varchar(50) NOT NULL COMMENT 'the image of the hero is strored as a string. The actual image is strored on the server. Use the string as the source of the HTML img-tag.',
  `teamId` int(3) NOT NULL COMMENT 'this is the teamId. Used as a referenc to the team table.',
  PRIMARY KEY (`heroId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `hero`
--

INSERT INTO `hero` (`heroId`, `heroName`, `heroDescription`, `heroPower`, `heroImage`, `teamId`) VALUES
(1, 'Robin', 'Acrobat Dick Grayson was the youngest member of his parents’ death-defying circus act. But after their cold-blooded murder, Dick vowed revenge. Seeing a genuine piece of himself in the boy, Batman took him in—and gave him a better outlet for his anger. Becoming Batman’s protégé, Robin is an expert fighter and astounding acrobat—with the toughest example in the world to live up to.', '\r\nExceptional martial artist, Combat strategy, Advanced technology, Gymnastic ability', 'images/robin', 1),
(2, 'Wonder Woman', 'Wonder Woman is Princess Diana of the immortal Amazons from Greek mythology.  When army pilot Steve Trevor crashes on the warriors’ secluded island paradise, Diana wins the right to escort him home and make her people known to the world. Entering our cynical world for the first time, there’s a lot she must wrap her head around, especially our ways of war, hate, and, well… dating.', 'super strength, invulnerability, flight, combat skill, combat strategy, superhuman agility, healing factor, magic weaponry', 'images/WonderWoman', 1),
(3, 'Flash', 'Young Barry Allen’s life stopped the minute his mother was murdered. The true killer never found, its mystery obsessed Barry, driving him to become a forensic scientist. Consumed by his work, he spent his life chained to his desk, solving every case that flew across it. But when a freak lightning bolt hits a nearby shelf in his lab, Barry receives super-speed, becoming the Flash. Now, he’ll race up buildings, across oceans, and around the world to get his man—while getting introduced to a world so much bigger than his old life of microscopes and cold cases.', 'super speed, intangibility, superhuman agility\r\n', 'images/Flash', 1),
(4, 'Cyborg', 'Although a star athlete, Vic Stone only yearned for his father’s approval. But Dad was too focused on his scientific career to notice… until the day Vic became his greatest experiment. After Vic suffered a grave injury, his father saved him by replacing over half his body with cybernetic parts.', 'super strength, advanced technology, instant weaponry, genius-level intellect, control over technology, computer hacking, durability, teleportation', 'images/Cyborg', 1),
(5, 'Beast Boy', 'Beast Boy can transform into any animal he has seen—both in real life and in illustrations. Gorillas, rhinos, sharks and even dinosaurs are within his nimble reach. His powers allow him to alter his entire body mass, permitting him to morph into animals larger, smaller, lighter or heavier than himself. He can even radically alter his body structure to form beasts such as snakes, jellyfish or insects. While in animal form, Garfield retains his unusual skin coloration, however, he also gains the abilities of each animal, whether it’s the strength of a gorilla or the speed of a cheetah.', 'shapeshifting, animal-driven abilities', 'images/Beastboy', 1),
(6, 'Joker', 'Whether by way of award-winning films like \"The Dark Knight,\" Emmy-winning animated programs like \"Batman: The Animated Series,\" video game appearances such as the record-breaking \"Batman: Arkham Asylum,\" or the countless comics stacking comic book shelves and digital libraries, the Joker stands unquestionably as the most recognizable and popular comic book villain in pop culture history. Unpredictable, violent and incredibly dangerous, he is chaos personified and has taken on everyone from his archenemy Batman to even the Man of Steel.', 'complete unpredictability, intelligence', 'images/Joker', 2),
(7, 'Killer Croc', 'As he grew older, Waylon became bitter, developing into a violent and malevolent criminal and adopting a fearful name that matched his frightening appearance—Killer Croc. Waylon managed to engineer a career path that took him from sideshow wrestler to a formidable criminal figure in the Gotham City underworld, often finding himself at violent odds with Batman. And yet, perhaps because of his childhood, Waylon has a soft spot for abandoned and neglected children. He shelters many within his territory in the sewers of Gotham, something that has not gone unnoticed by the Dark Knight.', 'enhanced strength, durability, razor-sharp teeth and claws, expert wrestler', 'images/Killercroc', 2),
(8, 'Captain Boomerang', 'During his childhood in Australia, Digger became adept at crafting boomerangs. At first, they were playthings, but later in life, he learned to enhance his boomerangs with incendiary or electrifying components. Digger’s skill with the device led to a job as a performer and boomerang promoter in the U.S., but he didn’t receive a warm welcome. Laughter from the audience made him resentful, so he took his bitterness and poured it into a life of crime, taking on the moniker of Captain Boomerang.', 'boomerang throwing, unrivaled aim, combat skill, complete unpredictability', 'images/kaptanboomerang', 2),
(9, 'Deadshot', 'Part of Gotham City\'s long line of rogues, Deadshot is obsessed with precision, firmly believing that the target who’s been paid for should be the only one taken down. In the midst of a successful career, Lawton was taken down by the Dark Knight and sentenced to life in prison for the countless assassinations he committed. However, a man of Lawton\'s skills earns a reputation.', 'unrivaled aim, weapons expert, combat skill', 'images/Deadshot', 2),
(10, 'Reverse-Flash', 'Born in the 25th Century, Eobard Thawne grew up idolizing the Flash and studying the legacy of the Scarlet Speedster. However, as he learned more about the Flash, Eobard discovered how his own life was linked to his hero’s: He was destined to become one of Barry Allen’s greatest villains, a revelation that led Eobard to grow unhinged. When he eventually replicated the chemical accident that granted the Flash super speed, Eobard took on a new identity—that of the Reverse-Flash, a wicked subversion of everything the Flash stands for.', 'Super speed, Intangibility, Durability, Time travel, Intelligence, Superhuman agility', 'images/reverseflash', 2),
(11, 'Superman', 'The most recognized superhero in pop culture, Superman has been elevated to mythic folkhero status. Rocketed to Earth from the dying planet Krypton, baby Kal-El was found by a farming couple who named the boy Clark Kent and raised him as their own. Discovering his enormous powers, they instilled in him strong moral values—and inspired him to become a hero.', 'super strength, flight, invulnerability, super speed, heat vision, freeze breath, x-ray vision, superhuman hearing, healing factor', 'images/Superman', 3),
(12, 'Darkseid', 'The ruling dictator of the world of Apokolips, Darkseid operates on a scale that terrifyingly dwarfs those of the world\'s greatest heroes. He commands a legion of powerful creatures known as Parademons and his court consists of some of the most depraved, sadistic and frighteningly powerful beings in the universe. Darkseid\'s near limitless might is matched by his immeasurable intelligence, and while he generally prefers to manipulate and control others to reach his goals.', 'super strength, invulnerability, genius-level intellect, combat strategy, alien technology, teleportation, energy blasts', 'images/Darkseid', 3),
(13, 'Aquaman', 'Cast out from Atlantis as a baby, Arthur Curry grew up on land, thinking himself a normal human. But when he matured, Atlantis returned, claiming him as their rightful king. Caught between a surface world constantly ravaging the sea and Atlanteans looking to lash out in revolt, he’s committed to protecting the entire globe.', 'super strength, durability, control over sea life, exceptional swimming ability, ability to breathe underwater', 'images/Aquaman', 3),
(14, 'Green Arrow', 'What was the last thing you took home from an island getaway? A tacky souvenir? A great tan? More boring slideshows than you have friends to show?\r\nSpoiled billionaire Oliver Queen came home with an entirely different personality—and a newfound purpose in life. Completely self-absorbed and never caring about anything but himself, Queen was on a leisurely sailing trip when his assistant betrayed him, leaving him for dead on a desolate remote island. Stranded, he survived by, amongst other things, mastering a bow and arrow.', 'archery, unrivaled aim, exceptional martial artist, inexhaustible wealth', 'images/Greenarrow', 3),
(15, 'Martian Manhunter', 'What are our best traits as humans? Our empathy? Our intelligence? Our respect for life and constantly striving to do right? It’s ironic, then, that within the DC Universe, very few people embody those very human traits quite as well as J’onn J’onzz, the Martian Manhunter.', 'flight, super strength, invulnerability, enhanced speed, shapeshifting, invisibility, telepathy, telekinesis, intelligence, intangibility, optic blasts', 'images/MartianManhunter', 3),
(16, 'Thor', ' As the son of Odin and Gaea, Thor\'s strength, endurance and resistance to injury are greater than the vast majority of his superhuman race. He is extremely long-lived (though not completely immune to aging), immune to conventional disease and highly resistant to injury. His flesh and bones are several times denser than a human\'s.As Lord of Asgard, Thor possessed the Odinforce, which enabled him to tap into the near-infinite resources of cosmic and mystical energies, enhancing all of his abilities.', 'Thor is trained in the arts of war, being a superbly skilled warrior, highly proficient in hand-to-hand combat, swordsmanship and hammer throwing. ', 'images/Thor', 4),
(17, 'Spider-Man', 'Peter can cling to most surfaces, has superhuman strength (able to lift 10 tons optimally) and is roughly 15 times more agile than a regular human. The combination of his acrobatic leaps and web-slinging enables him to travel rapidly from place to place. His spider-sense provides an early warning detection system linked with his superhuman kinesthetics, enabling him the ability to evade most any injury, provided he doesn\'t cognitively override the autonomic reflexes. ', 'Peter is an accomplished scientist, inventor and photographer. ', 'images/Spiderman', 4),
(18, 'Hercules', 'Hercules\'s principal power is his superhuman strength. Hercules\'s strength is well in excess of the \"Class 100\" Level (able to lift/press in excess of 100 tons), making him, one of the strongest beings in the Marvel Universe. Hercules has highly developed leg muscles, although they do not match those of the Hulk. Hercules can make a standing high jump of at least 100 feet in Earth\'s gravity.', 'As Olympus\'s greatest hero, Hercules is highly expert in traditional means of hand-to-hand combat, as well as in wrestling.', 'images/Hercules', 4),
(19, 'Falcon', 'Originally possessed the ability to telepathically communicate with his pet falcon Redwing, but that ability has grown into the ability to telepathically communicate with any birds within an unknown radius. Through this telepathic link he is also able to receive mental images of what the birds see.', 'Avengers; formerly Initiative, “Secret Avengers”, Heroes for Hire, Night People, Queen\'s Vengeance and was a \"Defenders, Defender for a Day\" ', 'images/Falcon', 4),
(20, 'Vision', 'The metal monstrosity called Ultron created the synthetic humanoid known as the Vision from the remains of the original android Human Torch of the 1940s to serve as a vehicle of vengeance against the Avengers.', 'The metal monstrosity called Ultron created the synthetic humanoid known as the Vision from the remains of the original android Human Torch of the 1940s to serve as a vehicle of vengeance against the Avengers.', 'images/th', 4),
(21, 'The Top', 'Roscoe Dillon is a small-time crook who turns his childhood obsession with tops into a criminal persona. Roscoe taught himself how to spin around fast enough to deflect bullets and produce other semi-useful effects. Top soon discovers that the spinning somehow increased his intelligence as well, allowing him to create a variety of trick tops.', 'Increased intelligence\r\nMental powers\r\nUse of gimmicked tops\r\nAbility to spin at incredible speeds and induce vertigo in others', 'images/Top', 5),
(22, 'Pied Piper', 'Hartley Rathaway was born deaf, received assistive technology in the form of hearing implants thanks to research funded by his wealthy father (later it was revealed that the implants were made by Dr. Will Magnus).[1] He became obsessed with sound, and pursued little else in life; experimenting with sonic technology, Rathaway eventually invented a technique of hypnotism through music, and a way to cause deadly vibrations.', 'Enhanced Hearing\r\nSound Manipulation\r\nGenius Level Intellect\r\nMaster Musician\r\nWields a flute with hypnotic powers', 'images/PiedpiperJ', 5),
(23, 'Golden Glider', 'Lisa Snart is a figure skater, known by the alias Lisa Star, who has help in her career from her secret coach and lover, The Top, a foe of Flash Barry Allen who dies from complications of dueling with the scarlet speedster. Furious over his death, Snart vows revenge. She adopts an orange ice-skater\'s costume, a mask, and ice skates which create their own ice flow, allowing her to effectively skate on air. She also has diamonds and jewels that can be used as explosives or hypnotic devices.', 'Astral form that grants:\r\nFlight\r\nRibbon-like tendrils\r\nAbility to move at extreme speeds', 'images/Goldenglider', 5),
(24, 'Heat Wave', 'Born on a farm outside Central City Mick Rory became fascinated with fire, as a child. This fascination turned into an obsession and one night, he set his family\'s home ablaze. His obsession was so great, that he simply watched the flames engulf his house, instead of running to get help.', 'Chest based pyrokinesis/ Expert Burglar', 'images/Heatwave', 5),
(25, 'Weather Wizard', 'Escaping a prison transport by leaping from the window, Mark Mardon fled to his brother\'s house only to find him dead. Mardon\'s brother, Clyde, a scientist, had just discovered a way to control the weather before dying of a heart attack (although recent evidence implies that Mardon murdered his brother and either lied about or blocked out the memory of finding his body[1]). Mardon took Clyde\'s notes and used them to make a wand to generate weather and embarked on a criminal career as The Weather Wizard, sometimes using his powers on a small scale (such as zapping someone with lightning) and sometimes a larger scale (imprisoning a town in winter), almost always facing defeat by The Flash (Barry Allen).', 'Use of weather wand', 'images/Weatherwizard', 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `ratingId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique rating is, auto incremented',
  `heroId` int(3) NOT NULL COMMENT 'the heroId used as reference to the hero table, can''t be unique in thie table',
  `rating` int(3) NOT NULL COMMENT 'rating is defined as an integer from 0 (min) to 10 (max)',
  `ratingDate` int(5) NOT NULL COMMENT 'the date of this rating. Dates are presented as an integer (timestamp) and displayed as a human readable date and time string using the PHP strftime() function',
  `ratingReview` text NOT NULL COMMENT 'a textual review added by the user\\nthe form where the user can rate the hero by using stars (radio-buttons)',
  PRIMARY KEY (`ratingId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `teamId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable',
  `teamName` varchar(50) NOT NULL COMMENT 'team name, just an ordinary string',
  `teamDescription` text NOT NULL COMMENT 'team description, just a string',
  `teamImage` varchar(100) NOT NULL COMMENT 'team image, stored as a string and used with the source of the HTML-tag',
  PRIMARY KEY (`teamId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `team`
--

INSERT INTO `team` (`teamId`, `teamName`, `teamDescription`, `teamImage`) VALUES
(1, 'Teen Titans', 'The Teen Titans are the premier team of young heroes in the DCU. Currently led by Damian Wayne, the team fights for the greater good and to recruit other young heroes like them.', 'TeenTitanss.jpg'),
(2, 'Suicide Squad', 'A constantly changing group composed primarily of incarcerated super-villains who perform black ops missions with a low chance of survival in exchange for the possibility of a shortened sentence. This \"squad\" was organized and put together by Amanda Waller.', 'SuicideSquad.jpg'),
(3, 'Justice League', 'Sanctioned by the United Nations, the Justice League International is designed to be a publicly accountable answer to the Justice League.', 'JusticeLeague.jpg'),
(4, 'Avengers', 'The Avengers are Earth\'s mightiest heroes and foremost super-team... \"There came a day, a day unlike any other, when Earth\'s mightiest heroes found themselves united against a common threat. On that day, the Avengers were born - to fight the foes no single super hero could withstand! Heed the call, then - for now, the Avengers Assemble!\"', 'AvengersTeam.jpg'),
(5, 'Rogues', 'The Rogues are a tight-knit group of blue collar criminals operating in Central and Keystone Cities, home of the Flash.', 'knightsDC.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
