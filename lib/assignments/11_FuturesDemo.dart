import 'dart:math';

void main() {
  doChores();
}

Future<String> makeToast() async {
  int randomValue = Random().nextInt(3);
  if (randomValue == 0) {
    await Future.delayed(
      Duration(seconds: 2),
    );
    return "success";
  } else if (randomValue == 1) {
    await Future.delayed(
      Duration(seconds: 2),
    );
    return "Failure";
  } else {
    throw Exception();
  }
}

Future<void> doChores() async {
  makeNotes();
  String makeToastFuture = await makeToast();
  if (makeToastFuture == 'success') {
    eatToast();
  } else {
    somethingWentWrong('Friend Took it');
  }
  renmakeNotes();
  // pickToastFromKitchen();
}

void makeNotes() {
  print('I am Printing Notes');
}

void renmakeNotes() {
  print('I am remaking Notes');
}

void pickToastFromKitchen() {
  print('Took the Toast');
}

void somethingWentWrong(String reason) {
  print("Couldn't have my toast because $reason");
}

void eatToast() {
  print('I ate Toast');
}
