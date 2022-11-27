CREATE TABLE "users" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY NOT NULL,
  "login" VARCHAR(75) NOT NULL,
  "email" VARCHAR(255) UNIQUE NOT NULL,
  "password" VARCHAR(255) NOT NULL,
  "is_admin" BOOLEAN NOT NULL
);

CREATE TABLE "books" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY NOT NULL,
  "name" VARCHAR(255) NOT NULL,
  "description" VARCHAR(500) NOT NULL,
  "number_of_pages" INT NOT NULL,
  "language_id" INT NOT NULL,
  "path" VARCHAR(500) UNIQUE NOT NULL,
  "downloads" INT NOT NULL
);

CREATE TABLE "authors" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY NOT NULL,
  "fullname" VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE "books_authors" (
  "book_id" INT NOT NULL,
  "author_id" INT NOT NULL
);

CREATE TABLE "tags" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY NOT NULL,
  "name" VARCHAR(50) UNIQUE NOT NULL,
  "description" VARCHAR(500) NOT NULL

);

CREATE TABLE "books_tags" (
  "book_id" INT NOT NULL,
  "tag_id" INT NOT NULL
);

CREATE TABLE "languages" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY NOT NULL,
  "name" VARCHAR(50) NOT NULL
);

CREATE TABLE "books_users" (
  "book_id" INT NOT NULL,
  "user_id" INT NOT NULL
);

ALTER TABLE "books" ADD FOREIGN KEY ("language_id") REFERENCES "languages" ("id");

ALTER TABLE "books_authors" ADD FOREIGN KEY ("book_id") REFERENCES "books" ("id");

ALTER TABLE "books_authors" ADD FOREIGN KEY ("author_id") REFERENCES "authors" ("id");

ALTER TABLE "books_tags" ADD FOREIGN KEY ("book_id") REFERENCES "books" ("id");

ALTER TABLE "books_tags" ADD FOREIGN KEY ("tag_id") REFERENCES "tags" ("id");

ALTER TABLE "books_users" ADD FOREIGN KEY ("book_id") REFERENCES "books" ("id");

ALTER TABLE "books_users" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

-- Default User admin
-- login : admin
-- email: admin@admin.com
-- password : admin
 
INSERT INTO public.users(login, email, "password", is_admin)VALUES('admin', 'admin@admin.com', '$2b$10$y25zy37aMWarlzyN8wPKLesjtPs0fXDr.HFugzsgR1/aXC/94G8ei', true);


-- Authors 

INSERT INTO public.authors ("fullname") VALUES ('Fyodor Dostoevsky');
INSERT INTO public.authors ("fullname") VALUES ('Dante Alighieri');
INSERT INTO public.authors ("fullname") VALUES ('Lev Tolstoy');
INSERT INTO public.authors ("fullname") VALUES ('Victor Hugo');
INSERT INTO public.authors ("fullname") VALUES ('William Shakespeare');
INSERT INTO public.authors ("fullname") VALUES ('Johann Wolfgang von Goethe');
INSERT INTO public.authors ("fullname") VALUES ('Miguel de Cervantes y Saavedra');
INSERT INTO public.authors ("fullname") VALUES ('Italo Calvino');
INSERT INTO public.authors ("fullname") VALUES ('Stendhal');
INSERT INTO public.authors ("fullname") VALUES ('Charles Baudelaire');
INSERT INTO public.authors ("fullname") VALUES ('Marcel Proust');
INSERT INTO public.authors ("fullname") VALUES ('Giovanni Boccaccio');
INSERT INTO public.authors ("fullname") VALUES ('Alexander Pushkin');
INSERT INTO public.authors ("fullname") VALUES ('Jalaluddin Muhammad Rumi');
INSERT INTO public.authors ("fullname") VALUES ('Franz Kafka');
INSERT INTO public.authors ("fullname") VALUES ('Anton Chekhov');
INSERT INTO public.authors ("fullname") VALUES ('Gabriel García Márquez');
INSERT INTO public.authors ("fullname") VALUES ('Umberto Eco');
INSERT INTO public.authors ("fullname") VALUES ('J.R.R. Tolkien');
INSERT INTO public.authors ("fullname") VALUES ('William Faulkner');
INSERT INTO public.authors ("fullname") VALUES ('Aesop');
INSERT INTO public.authors ("fullname") VALUES ('Arthur Rimbaud');
INSERT INTO public.authors ("fullname") VALUES ('Aristophanes');
INSERT INTO public.authors ("fullname") VALUES ('Ivan Turgenev');
INSERT INTO public.authors ("fullname") VALUES ('Sophocles');
INSERT INTO public.authors ("fullname") VALUES ('Molière');
INSERT INTO public.authors ("fullname") VALUES ('Charles Dickens');
INSERT INTO public.authors ("fullname") VALUES ('Maxim Gorky');
INSERT INTO public.authors ("fullname") VALUES ('George Orwell');
INSERT INTO public.authors ("fullname") VALUES ('Edgar Allan Poe');
INSERT INTO public.authors ("fullname") VALUES ('Publius Vergilius Maro');
INSERT INTO public.authors ("fullname") VALUES ('Julio Cortázar');
INSERT INTO public.authors ("fullname") VALUES ('Nazim Hikmet');
INSERT INTO public.authors ("fullname") VALUES ('Oscar Wilde');
INSERT INTO public.authors ("fullname") VALUES ('Jean de La Fontaine');
INSERT INTO public.authors ("fullname") VALUES ('Rainer Maria Rilke');
INSERT INTO public.authors ("fullname") VALUES ('Lord Byron');
INSERT INTO public.authors ("fullname") VALUES ('Hans Christian Andersen');
INSERT INTO public.authors ("fullname") VALUES ('Thomas Mann');
INSERT INTO public.authors ("fullname") VALUES ('Alexandre Dumas');
INSERT INTO public.authors ("fullname") VALUES ('James Joyce');
INSERT INTO public.authors ("fullname") VALUES ('Louis-Ferdinand Céline');
INSERT INTO public.authors ("fullname") VALUES ('Boris Pasternak');
INSERT INTO public.authors ("fullname") VALUES ('Federico García Lorca');
INSERT INTO public.authors ("fullname") VALUES ('Pablo Neruda');
INSERT INTO public.authors ("fullname") VALUES ('Borges');
INSERT INTO public.authors ("fullname") VALUES ('Beaumarchais');
INSERT INTO public.authors ("fullname") VALUES ('Najeeb Mahfouz');
INSERT INTO public.authors ("fullname") VALUES ('Ursula K. Le Guin');
INSERT INTO public.authors ("fullname") VALUES ('Nikolay Gogol');
INSERT INTO public.authors ("fullname") VALUES ('Honoré de Balzac');
INSERT INTO public.authors ("fullname") VALUES ('Ernest Hemingway');
INSERT INTO public.authors ("fullname") VALUES ('Neil Gaiman');
INSERT INTO public.authors ("fullname") VALUES ('Jean Racine');
INSERT INTO public.authors ("fullname") VALUES ('Albert Camus');
INSERT INTO public.authors ("fullname") VALUES ('Jean-Paul Sartre');
INSERT INTO public.authors ("fullname") VALUES ('Chingiz Aitmatov');
INSERT INTO public.authors ("fullname") VALUES ('John Steinbeck');
INSERT INTO public.authors ("fullname") VALUES ('Milan Kundera');
INSERT INTO public.authors ("fullname") VALUES ('Jules Verne');
INSERT INTO public.authors ("fullname") VALUES ('Mark Twain');
INSERT INTO public.authors ("fullname") VALUES ('Francois Rabelais');
INSERT INTO public.authors ("fullname") VALUES ('Yasar Kemal');
INSERT INTO public.authors ("fullname") VALUES ('George Bernard Shaw');
INSERT INTO public.authors ("fullname") VALUES ('Arthur Conan Doyle');
INSERT INTO public.authors ("fullname") VALUES ('Jane Austen');
INSERT INTO public.authors ("fullname") VALUES ('Geoffrey Chaucer');
INSERT INTO public.authors ("fullname") VALUES ('Antoine de Saint-Exupéry');
INSERT INTO public.authors ("fullname") VALUES ('Erich Maria Remarque');
INSERT INTO public.authors ("fullname") VALUES ('J.D. Salinger');
INSERT INTO public.authors ("fullname") VALUES ('Virginia Woolf');
INSERT INTO public.authors ("fullname") VALUES ('Louis Aragon');
INSERT INTO public.authors ("fullname") VALUES ('Herman Melville');
INSERT INTO public.authors ("fullname") VALUES ('Alphonse Daudet');
INSERT INTO public.authors ("fullname") VALUES ('Mikhail Sholokhov');
INSERT INTO public.authors ("fullname") VALUES ('Stefan Zweig');
INSERT INTO public.authors ("fullname") VALUES ('José Saramago');
INSERT INTO public.authors ("fullname") VALUES ('Bertolt Brecht');
INSERT INTO public.authors ("fullname") VALUES ('Mario Vargas Llosa');
INSERT INTO public.authors ("fullname") VALUES ('T.S. Eliot');
INSERT INTO public.authors ("fullname") VALUES ('Guy de Maupassant');
INSERT INTO public.authors ("fullname") VALUES ('John Keats');
INSERT INTO public.authors ("fullname") VALUES ('Sabahattin Ali');
INSERT INTO public.authors ("fullname") VALUES ('Ahmet Hamdi Tanpinar');
INSERT INTO public.authors ("fullname") VALUES ('John Fante');
INSERT INTO public.authors ("fullname") VALUES ('Henri-Frédéric Blanc');
INSERT INTO public.authors ("fullname") VALUES ('Isaac Asimov');
INSERT INTO public.authors ("fullname") VALUES ('Fitzgerald Scott');
INSERT INTO public.authors ("fullname") VALUES ('J.M. Coetzee');
INSERT INTO public.authors ("fullname") VALUES ('Kazuo Ishiguro');
INSERT INTO public.authors ("fullname") VALUES ('Hermann Hesse');
INSERT INTO public.authors ("fullname") VALUES ('Robert Louis Stevenson');
INSERT INTO public.authors ("fullname") VALUES ('Salman Rushdie');
INSERT INTO public.authors ("fullname") VALUES ('Aldous Huxley');
INSERT INTO public.authors ("fullname") VALUES ('Paul Valéry');
INSERT INTO public.authors ("fullname") VALUES ('Thomas Pynchon');
INSERT INTO public.authors ("fullname") VALUES ('H.P. Lovecraft');
INSERT INTO public.authors ("fullname") VALUES ('Haruki Murakami');
INSERT INTO public.authors ("fullname") VALUES ('Nikos Kazantzakis');




-- Default tags
INSERT INTO public.tags("name", "description")VALUES('Literary Fiction', 'Literary fiction novels are considered works with artistic value and literary merit. They often include political criticism, social commentary, and reflections on humanity. Literary fiction novels are typically character-driven, as opposed to being plot-driven, and follow a character’s inner story.');
INSERT INTO public.tags("name", "description")VALUES('Mystery', 'Mystery novels, also called detective fiction, follow a detective solving a case from start to finish. They drop clues and slowly reveal information, turning the reader into a detective trying to solve the case, too. Mystery novels start with an exciting hook, keep readers interested with suspenseful pacing, and end with a satisfying conclusion that answers all of the reader’s outstanding questions. ');
INSERT INTO public.tags("name", "description")VALUES('Thriller', 'Thriller novels are dark, mysterious, and suspenseful plot-driven stories. They very seldom include comedic elements, but what they lack in humor, they make up for in suspense. Thrillers keep readers on their toes and use plot twists, red herrings, and cliffhangers to keep them guessing until the end.');
INSERT INTO public.tags("name", "description")VALUES('Horror', 'Horror novels are meant to scare, startle, shock, and even repulse readers. Generally focusing on themes of death, demons, evil spirits, and the afterlife, they prey on fears with scary beings like ghosts, vampires, werewolves, witches, and monsters. In horror fiction, plot and characters are tools used to elicit a terrifying sense of dread.');
INSERT INTO public.tags("name", "description")VALUES('Historical', ' Historical fiction novels take place in the past. Written with a careful balance of research and creativity, they transport readers to another time and place—which can be real, imagined, or a combination of both. Many historical novels tell stories that involve actual historical figures or historical events within historical settings. ');
INSERT INTO public.tags("name", "description")VALUES('Romance', 'Romantic fiction centers around love stories between two people. They’re lighthearted, optimistic, and have an emotionally satisfying ending. Romance novels do contain conflict, but it doesn’t overshadow the romantic relationship, which always prevails in the end. ');
INSERT INTO public.tags("name", "description")VALUES('Western', 'Western novels tell the stories of cowboys, settlers, and outlaws exploring the western frontier and taming the American Old West. They’re shaped specifically by their genre-specific elements and rely on them in ways that novels in other fiction genres don’t. Westerns aren’t as popular as they once were; the golden age of the genre coincided with the popularity of western films in the 1940s, ‘50s, and ‘60s. ');
INSERT INTO public.tags("name", "description")VALUES('Bildungsroman', 'Bildungsroman is a literary genre of stories about a character growing psychologically and morally from their youth into adulthood. Generally, they experience a profound emotional loss, set out on a journey, encounter conflict, and grow into a mature person by the end of the story. Literally translated, a bildungsroman is “a novel of education” or “a novel of formation.”');
INSERT INTO public.tags("name", "description")VALUES('Speculative Fiction', 'Speculative fiction is a supergenre that encompasses a number of different types of fiction, from science fiction to fantasy to dystopian. The stories take place in a world different from our own. Speculative fiction knows no boundaries; there are no limits to what exists beyond the real world.');
INSERT INTO public.tags("name", "description")VALUES('Science Fiction', 'Sci-fi novels are speculative stories with imagined elements that don’t exist in the real world. Some are inspired by “hard” natural sciences like physics, chemistry, and astronomy; others are inspired by “soft” social sciences like psychology, anthropology, and sociology. Common elements of sci-fi novels include time travel, space exploration, and futuristic societies. ');
INSERT INTO public.tags("name", "description")VALUES('Fantasy', 'Fantasy novels are speculative fiction stories with imaginary characters set in imaginary universes. They’re inspired by mythology and folklore and often include elements of magic. The genre attracts both children and adults; well-known titles include Alice’s Adventures in Wonderland by Lewis Carroll and the Harry Potter series by J.K. Rowling.');
INSERT INTO public.tags("name", "description")VALUES('Dystopian', 'Dystopian novels are a genre of science fiction. They’re set in societies viewed as worse than the one in which we live. Dystopian fiction exists in contrast to utopian fiction, which is set in societies viewed as better than the one in which we live.');
INSERT INTO public.tags("name", "description")VALUES('Magical Realism', '. Magical realism novels depict the world truthfully, plus add magical elements. The fantastical elements aren’t viewed as odd or unique; they’re considered normal in the world in which the story takes place. The genre was born out of the realist art movement and is closely associated with Latin American authors. ');
INSERT INTO public.tags("name", "description")VALUES('Realist Literature', 'Realist fiction novels are set in a time and place that could actually happen in the real world. They depict real people, places, and stories in order to be as truthful as possible. Realist works of fiction remain true to everyday life and abide by the laws of nature as we currently understand them.');
INSERT INTO public.tags("name", "description")VALUES('Manga', 'Manga is a type of Japanese comic book, which often contains material that is intended for adults.');
INSERT INTO public.tags("name", "description")VALUES('Comics', 'A comic book is a magazine that contains stories told in pictures. ');
INSERT INTO public.tags("name", "description")VALUES('Computer science', 'Books about computer science');
INSERT INTO public.tags("name", "description")VALUES('Medecine', 'Books about medecine');
INSERT INTO public.tags("name", "description")VALUES('Other', '');


-- Every languages
INSERT INTO public.languages ("name") VALUES('Afrikaans');
INSERT INTO public.languages ("name") VALUES('Albanian');
INSERT INTO public.languages ("name") VALUES('Arabic');
INSERT INTO public.languages ("name") VALUES('Armenian');
INSERT INTO public.languages ("name") VALUES('Basque');
INSERT INTO public.languages ("name") VALUES('Bengali');
INSERT INTO public.languages ("name") VALUES('Bulgarian');
INSERT INTO public.languages ("name") VALUES('Catalan');
INSERT INTO public.languages ("name") VALUES('Cambodian');
INSERT INTO public.languages ("name") VALUES('Chinese (Mandarin)');
INSERT INTO public.languages ("name") VALUES('Croatian');
INSERT INTO public.languages ("name") VALUES('Czech');
INSERT INTO public.languages ("name") VALUES('Danish');
INSERT INTO public.languages ("name") VALUES('Dutch');
INSERT INTO public.languages ("name") VALUES('English');
INSERT INTO public.languages ("name") VALUES('Estonian');
INSERT INTO public.languages ("name") VALUES('Fiji');
INSERT INTO public.languages ("name") VALUES('Finnish');
INSERT INTO public.languages ("name") VALUES('French');
INSERT INTO public.languages ("name") VALUES('Georgian');
INSERT INTO public.languages ("name") VALUES('German');
INSERT INTO public.languages ("name") VALUES('Greek');
INSERT INTO public.languages ("name") VALUES('Gujarati');
INSERT INTO public.languages ("name") VALUES('Hebrew');
INSERT INTO public.languages ("name") VALUES('Hindi');
INSERT INTO public.languages ("name") VALUES('Hungarian');
INSERT INTO public.languages ("name") VALUES('Icelandic');
INSERT INTO public.languages ("name") VALUES('Indonesian');
INSERT INTO public.languages ("name") VALUES('Irish');
INSERT INTO public.languages ("name") VALUES('Italian');
INSERT INTO public.languages ("name") VALUES('Japanese');
INSERT INTO public.languages ("name") VALUES('Javanese');
INSERT INTO public.languages ("name") VALUES('Korean');
INSERT INTO public.languages ("name") VALUES('Latin');
INSERT INTO public.languages ("name") VALUES('Latvian');
INSERT INTO public.languages ("name") VALUES('Lithuanian');
INSERT INTO public.languages ("name") VALUES('Macedonian');
INSERT INTO public.languages ("name") VALUES('Malay');
INSERT INTO public.languages ("name") VALUES('Malayalam');
INSERT INTO public.languages ("name") VALUES('Maltese');
INSERT INTO public.languages ("name") VALUES('Maori');
INSERT INTO public.languages ("name") VALUES('Marathi');
INSERT INTO public.languages ("name") VALUES('Mongolian');
INSERT INTO public.languages ("name") VALUES('Nepali');
INSERT INTO public.languages ("name") VALUES('Norwegian');
INSERT INTO public.languages ("name") VALUES('Persian');
INSERT INTO public.languages ("name") VALUES('Polish');
INSERT INTO public.languages ("name") VALUES('Portuguese');
INSERT INTO public.languages ("name") VALUES('Punjabi');
INSERT INTO public.languages ("name") VALUES('Quechua');
INSERT INTO public.languages ("name") VALUES('Romanian');
INSERT INTO public.languages ("name") VALUES('Russian');
INSERT INTO public.languages ("name") VALUES('Samoan');
INSERT INTO public.languages ("name") VALUES('Serbian');
INSERT INTO public.languages ("name") VALUES('Slovak');
INSERT INTO public.languages ("name") VALUES('Slovenian');
INSERT INTO public.languages ("name") VALUES('Spanish');
INSERT INTO public.languages ("name") VALUES('Swahili');
INSERT INTO public.languages ("name") VALUES('Swedish ');
INSERT INTO public.languages ("name") VALUES('Tamil');
INSERT INTO public.languages ("name") VALUES('Tatar');
INSERT INTO public.languages ("name") VALUES('Telugu');
INSERT INTO public.languages ("name") VALUES('Thai');
INSERT INTO public.languages ("name") VALUES('Tibetan');
INSERT INTO public.languages ("name") VALUES('Tonga');
INSERT INTO public.languages ("name") VALUES('Turkish');
INSERT INTO public.languages ("name") VALUES('Ukrainian');
INSERT INTO public.languages ("name") VALUES('Urdu');
INSERT INTO public.languages ("name") VALUES('Uzbek');
INSERT INTO public.languages ("name") VALUES('Vietnamese');
INSERT INTO public.languages ("name") VALUES('Welsh');
INSERT INTO public.languages ("name") VALUES('Xhosa');
