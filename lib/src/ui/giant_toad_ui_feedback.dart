/// Optional application-provided feedback callbacks for pixel UI interactions.
class GiantToadUiFeedback {
  const GiantToadUiFeedback({this.onHover, this.onPress, this.onDisabled});
  final void Function()? onHover;
  final void Function()? onPress;
  final void Function()? onDisabled;
}
