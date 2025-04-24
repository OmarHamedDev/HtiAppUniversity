part of 'section_cubit.dart';

@immutable
sealed class SectionState {}

final class SectionInitial extends SectionState {}
class ChangeSectionState extends SectionState {}