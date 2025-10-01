import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:giant_toad/giant_toad_ui.dart';

Widget host(Widget child) => MaterialApp(
  home: Scaffold(
    body: GiantToadUiThemeScope(theme: const GiantToadUiTheme(), child: child),
  ),
);

void main() {
  testWidgets('icon button exposes Giant Toad selected state', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: GiantToadUiThemeScope(
          theme: GiantToadUiTheme(),
          child: GiantToadIconButton(
            icon: Icons.brush,
            onPressed: null,
            selected: true,
          ),
        ),
      ),
    );
    expect(
      tester
          .widget<GiantToadPixelButton>(find.byType(GiantToadPixelButton))
          .selected,
      isTrue,
    );
  });

  test('material host theme derives Giant Toad tokens', () {
    const theme = GiantToadUiTheme(
      panelColor: Color(0xff112233),
      focusColor: Color(0xffabcdef),
      fontFamily: 'Pixel',
    );
    final material = giantToadMaterialTheme(theme);
    expect(material.colorScheme.surface, theme.panelColor);
    expect(material.focusColor, theme.focusColor);
    expect(material.textTheme.bodyMedium?.fontFamily, theme.fontFamily);
  });

  testWidgets('pixel button exposes localized semantics and tooltip', (
    tester,
  ) async {
    var presses = 0;
    await tester.pumpWidget(
      host(
        GiantToadPixelButton(
          label: 'PLAY',
          semanticLabel: 'Start game',
          tooltip: 'Begin adventure',
          onPressed: () => presses++,
        ),
      ),
    );
    expect(find.bySemanticsLabel('Start game'), findsOneWidget);
    expect(find.byTooltip('Begin adventure'), findsOneWidget);
    final button = find.bySemanticsLabel('Start game');
    final restingSize = tester.getSize(button);
    final gesture = await tester.startGesture(tester.getCenter(button));
    await tester.pump();
    expect(tester.getSize(button), restingSize);
    await gesture.up();
    await tester.pump();
    expect(presses, 1);
  });

  testWidgets('checkbox slider dropdown and textbox emit typed values', (
    tester,
  ) async {
    var checked = false;
    var slider = 0.25;
    var dropdown = 'one';
    var text = '';
    await tester.pumpWidget(
      host(
        StatefulBuilder(
          builder: (context, setState) => Column(
            children: [
              GiantToadCheckbox(
                value: checked,
                label: 'Enabled',
                onChanged: (value) => setState(() => checked = value),
              ),
              GiantToadSlider(
                value: slider,
                onChanged: (value) => setState(() => slider = value),
              ),
              GiantToadDropdown<String>(
                value: dropdown,
                items: const ['one', 'two'],
                onChanged: (value) => setState(() => dropdown = value!),
              ),
              GiantToadTextField(onChanged: (value) => text = value),
            ],
          ),
        ),
      ),
    );

    await tester.tap(find.text('Enabled'));
    expect(checked, isTrue);
    await tester.enterText(find.byType(TextField), 'Toad');
    expect(text, 'Toad');
    expect(find.byType(GiantToadSlider), findsOneWidget);
    expect(find.byType(GiantToadDropdown<String>), findsOneWidget);
  });

  testWidgets('editor form adapters validate and expose typed selection', (
    tester,
  ) async {
    final formKey = GlobalKey<FormState>();
    String? selected = 'map';
    await tester.pumpWidget(
      host(
        Form(
          key: formKey,
          child: Column(
            children: [
              GiantToadFormField(
                initialValue: '',
                validator: (value) => value!.isEmpty ? 'Required' : null,
              ),
              GiantToadSelectFormField<String>(
                initialValue: selected,
                items: const [
                  DropdownMenuItem(value: 'map', child: Text('Map')),
                  DropdownMenuItem(value: 'objects', child: Text('Objects')),
                ],
                onChanged: (value) => selected = value,
              ),
            ],
          ),
        ),
      ),
    );
    expect(formKey.currentState!.validate(), isFalse);
    await tester.pump();
    expect(find.text('Required'), findsOneWidget);
    expect(selected, 'map');
  });

  testWidgets('editor buttons lists expansion and dialogs compose', (
    tester,
  ) async {
    await tester.pumpWidget(
      host(
        Column(
          children: [
            GiantToadButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Add'),
            ),
            const GiantToadListTile(title: Text('Layer')),
            const GiantToadExpansionPanel(
              title: Text('Details'),
              children: [Text('Expanded content')],
            ),
            const GiantToadCard(child: Text('Card content')),
          ],
        ),
      ),
    );
    expect(find.text('Add'), findsOneWidget);
    expect(find.text('Layer'), findsOneWidget);
    await tester.tap(find.text('Details'));
    await tester.pumpAndSettle();
    expect(find.text('Expanded content'), findsOneWidget);
  });

  testWidgets('tabs toolbar property rows and scroll panels compose', (
    tester,
  ) async {
    var selected = 0;
    await tester.pumpWidget(
      host(
        StatefulBuilder(
          builder: (context, setState) => GiantToadScrollPanel(
            child: Column(
              children: [
                GiantToadTabs(
                  tabs: const ['Map', 'Objects'],
                  selected: selected,
                  onSelected: (value) => setState(() => selected = value),
                ),
                const GiantToadToolbar(children: [Text('Tool')]),
                const GiantToadPropertyRow(label: 'Name', child: Text('Pond')),
              ],
            ),
          ),
        ),
      ),
    );

    await tester.tap(find.text('Objects'));
    expect(selected, 1);
    expect(find.text('Tool'), findsOneWidget);
    expect(find.text('Pond'), findsOneWidget);
  });
}
