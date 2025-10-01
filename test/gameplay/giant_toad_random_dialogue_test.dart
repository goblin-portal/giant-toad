import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad.dart';

void main() {
  test('deterministic RNG restores exact stream state', () {
    final first = GiantToadRandom(42);
    final prefix = [for (var i = 0; i < 3; i++) first.nextUint32()];
    final state = first.state;
    final suffix = [for (var i = 0; i < 3; i++) first.nextUint32()];
    final restored = GiantToadRandom(1)..state = state;

    expect(prefix, [11_355_432, 2_836_018_348, 476_557_059]);
    expect([for (var i = 0; i < 3; i++) restored.nextUint32()], suffix);
    expect(first.range(2, 2), 2);
  });

  test('typewriter reveals lines and selects stable controller values', () {
    final dialogue =
        GiantToadTypewriterDialogue<String>(charactersPerSecond: 10)..start(
          const [
            GiantToadTypewriterLine(text: 'Welcome!', speaker: 'Toad'),
            GiantToadTypewriterLine(text: 'Choose.'),
          ],
          choices: const [
            GiantToadValueChoice(text: 'Forest', value: 'forest'),
            GiantToadValueChoice(text: 'Village', value: 'village'),
          ],
        );
    dialogue.update(0.3);
    expect(dialogue.visibleText, 'Wel');
    dialogue.advance();
    expect(dialogue.visibleText, 'Welcome!');
    dialogue.advance();
    dialogue.update(1);
    dialogue.advance();
    expect(dialogue.showingChoices, isTrue);
    dialogue.moveChoice(-1);
    expect(dialogue.selectedChoice, 1);
    expect(dialogue.choose(), 'village');
    expect(dialogue.chosenValue, 'village');
    expect(dialogue.active, isFalse);
  });

  test('dialogue advances, filters choices, invokes effects, and restores', () {
    var selected = false;
    final dialogue = GiantToadDialogue(
      nodes: [
        const GiantToadDialogueNode(id: 'start', text: 'Hello', next: 'choice'),
        GiantToadDialogueNode(
          id: 'choice',
          text: 'Choose',
          choices: [
            GiantToadDialogueChoice(
              label: 'Hidden',
              next: null,
              enabled: () => false,
            ),
            GiantToadDialogueChoice(
              label: 'Go',
              next: 'end',
              onSelect: () => selected = true,
            ),
          ],
        ),
        const GiantToadDialogueNode(id: 'end', text: 'Done'),
      ],
    );

    dialogue.start('start');
    expect(dialogue.advance(), isTrue);
    expect(dialogue.choices.single.label, 'Go');
    dialogue.choose(0);
    expect(selected, isTrue);
    expect(dialogue.snapshot(), 'end');
    expect(dialogue.advance(), isTrue);
    expect(dialogue.active, isFalse);
    dialogue.restore('choice');
    expect(dialogue.current!.text, 'Choose');
  });

  test('diagnostics evaluate registered values on snapshot', () {
    var frames = 1;
    final diagnostics = GiantToadDiagnostics()
      ..register('frames', () => frames);
    expect(diagnostics.snapshot(), {'frames': 1});
    frames = 2;
    expect(diagnostics.snapshot(), {'frames': 2});
    diagnostics.unregister('frames');
    expect(diagnostics.snapshot(), isEmpty);
  });
}
