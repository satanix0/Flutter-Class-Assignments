import 'dart:math';

void main() {
  doChores();
}

Future<String> makeToast() async {
  int randomValue = Random().nextInt(3);
  print("I opened the toaster's lid.");
  renmakeNotes();

  if (randomValue == 0) {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    return "success";
  } else if (randomValue == 1) {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    return "Failure";
  } else {
    throw Exception();
  }
}

Future<void> doChores() async {
  makeNotes();
  try {
    String makeToastFuture = await makeToast();
    if (makeToastFuture == 'success') {
      eatToast();
    } else {
      somethingWentWrong('Friend Took it');
    }
  } catch (err) {
    print('$err Electricity Went Out');
  }

  // pickToastFromKitchen();
}

void makeNotes() {
  print('I am making Notes');
}

void renmakeNotes() {
  print('I am remaking Notes');
}

void somethingWentWrong(String reason) {
  print("Couldn't have my toast because $reason");
}

void eatToast() {
  print('I ate Toast');
}
