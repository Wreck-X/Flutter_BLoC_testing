abstract class ChangeColourEvent {}

class ToggleColourtopurple extends ChangeColourEvent {}

class ToggleColourtored extends ChangeColourEvent {}

abstract class MessageEvents {}

class MessageReceived extends MessageEvents {}

class MessageSent extends MessageEvents {}
