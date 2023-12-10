import 'package:equatable/equatable.dart';

abstract class NewsEvents extends Equatable {
  const NewsEvents();

  @override
  List<Object> get props => [];
}

class GetAllNewsEvent extends NewsEvents {}

class GetDetailedNewsEvent extends NewsEvents {}
