// RICHIESTA 1
// Stampa a video questa figura:
// ******
// *****
// ****
// ***
// **
// *
void main() {
  for (int i = 0; i<7; i++) {
    var stars = '';
    for (int j = (7-i); j>1; j--) {
      stars += '*';
    }
    print(stars);
  }
  
}

// RICHIESTA 2
// Data la stringa “ingegni”, verifica se è una parola palindroma, in tal caso stampa “La stringa è palindroma”, altrimenti “La stringa non è palindroma”.
//Per esempio, se la stringa ha il valore esempio “ingegni” → stampa “La stringa è palindroma”.
void main() {
String word = 'osso';
    List<String> wordDivided = word.split('');
    String wordDividedReversed = wordDivided.reversed.join();
    
    if (word.toLowerCase() == wordDividedReversed.toLowerCase() ) {
      print('parola PALINDROMA');
    } else print('parola NON palindroma');
}

// RICHIESTA 3
// Completa la funzione in modo tale che stampi l’area del rettangolo avendo come parametri l’altezza e la base. 
final int base = 4;
final int altezza = 6;

void main() {
  stampaAreaRettangolo(){
    print(base * altezza);
  }
  stampaAreaRettangolo();
}

// RICHIESTA 4
//Completa la funzione in modo tale che stampi la somma di due numeri interi, 
//se i due valori sono uguali fai la stampa del triplo della loro somma.

final int firstNumber = 2;
final int secondNumber = 2

void main() {
  calculateProductSum(int a, int b) {
    if (a == b) {
      print((a+b) * 3);
    } else print(a+b);
  }
  calculateProductSum(firstNumber, secondNumber);
}

// RICHIESTA 5
//Scrivi la funzione che calcoli il risultato dell’esame di uno studente. 
//Il voto ottenuto nella prova scritta può variare da +8 a -8.
//Il voto ottenuto nella prova pratica può variare da 0 a 24.
//Il risultato finale è la somma dei dati di pratica e di teoria.
//Se lo studente prende come voto 18 è promosso, se prende meno è bocciato.
//Se il voto complessivo tra teoria e pratica fa 31 o 32, il risultato sarà 30 e lode.
void main() {
 void calculateResult(int writtenTest, int practicalTest) {
    int total = writtenTest + practicalTest;
    if ( total > 18) {
      print('Complimenti esame superato con un punteggio di ${total > 30 ? "30 e LODE" : total}' );
    } else {
      print("Purtroppo non hai superato l'esame. Hai totalizzato un punteggio di ${total}");
    }
  }
    
  void checkTestValue(int writtenTest, int practicalTest) {
    if (writtenTest < -8 || writtenTest > 8) {
      print('il valore della PROVA SCRITTA deve essere compreso tra -8 e 8');
      return;
    }
    if (practicalTest < 0 || practicalTest > 24) {
      print('il valore della PROVA PRATICA deve essere compreso tra 0 e 24');
      return;
    }
    calculateResult(writtenTest, practicalTest);
  }
  checkTestValue(6, 49);
}



//RICHIESTA 6
// Data la classe Persona, richiama nel main due differenti oggetti aventi nome, cognome, email, password e data di nascita.

class Persona {
  String? name;
  String? surname;
  String? email;
  String? password;
  String? birthDate;

  void showPersonaData(){
    print(name);
    print(surname);
    print(email);
    print(password);
    print(birthDate);
  }
  
    
}

void main() {
  Persona persona = new Persona();
  persona.name = 'Mark';
  persona.surname = 'Rossi';
  persona.email = 'mario_rossi@gmail.com';
  persona.password = '12345abcde';
  persona.birthDate = '01-12-1990';
  
  persona.showPersonaData();
}


// RICHIESTA 7
//Dato l’array [6,3,1,2,9] calcola la media dei numeri all’interno dell’array.
var myArray = [6,3,1,2,9];
void main() {
  calculateMedia() {
    int total = 0;
    for(int num in myArray) {
      total = total + num;
    }
    print(total / myArray.length);
  }
  
  calculateMedia();
}

// RICHIESTA 8

// Scrivi una classe astratta di tipo Persona che abbia come parametri nome, cognome, codice ed età. 

// Scrivi una classe Docente che estende la classe Persona e rappresenti le seguenti informazioni relative a un docente: nome, cognome, codice ed età (da classe astratta), 
//e contenga i metodi getCodice, getCognome, GetNome e getEta che restituiscono rispettivamente il codice, il cognome, il nome e l’età del docente. 

// Scrivi una classe Studenti che rappresenti le seguenti informazioni relative a uno studente e i get come sopra (che estende anch’essa la classe astratta): nome, cognome, età e codice.

// Scrivi poi una classe Università, che rappresenti un insieme di docenti universitari tramite un array di tipo Docente e un insieme di studenti (array di studenti).

// Inserisci nell’Univeristà i seguenti metodi: 
// cercaDocentiByCodice
// cercaDocentiByCognome
// cercaStudentiByCodice
// cercaStudenteByCognome
// mediaEtàStudenti
// mediaEtàDocenti

abstract class Persona { 
  //declaring propreties  
  String? nome;
  String? cognome;
  String? codice;
  int? eta;
  
  //declaring abstract method  
  void getNome();
  void getCognome();
  void getCodice();
  void getEta();
}  

class Docente extends Persona{  
  Docente(String name, String surname, String code, int age) {
    nome = name;
    cognome = surname;
    codice = code;
    eta = age;
  }
  // Overriding method 
  @override 
  void getNome() {  
    print(nome);  
  }  
  
  void getCognome() {  
    print(cognome);  
  }
  
    void getCodice() {  
    print(codice);  
  }
  
   void getEta() {  
    print(eta);  
  }
}  

class Studente extends Persona{  
  Studente(String name, String surname, String code, int age) {
    nome = name;
    cognome = surname;
    codice = code;
    eta = age;
  }
  // Overriding method 
  @override 
  void getNome() {  
    print(nome);  
  }  
  
  void getCognome() {  
    print(cognome);  
  }
  
    void getCodice() {  
    print(codice);  
  }
  
   void getEta() {  
    print(eta);  
  }
} 
  
void main() {  
  // Creating Object of class Docente 
  Docente docente = new Docente('Luca', 'Rossi', 'gafadrew452', 46); 
  Studente studente = new Studente('Gianfranco', 'Bianchi', '53r4fcdsac', 21);

  docente.getNome();  
  docente.getCognome(); 
  docente.getCodice();
  docente.getEta();
  print('');
  studente.getNome();  
  studente.getCognome(); 
  studente.getCodice();
  studente.getEta();
}  



