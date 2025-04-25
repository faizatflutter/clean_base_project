import 'package:dartz/dartz.dart';
import 'package:clean_base_project/src/features/habit_tracker/domain/entity/habit.dart';
import 'package:clean_base_project/src/features/habit_tracker/domain/repository/habit_repo_abstract.dart';
import 'package:clean_base_project/src/shared/domain/entity/failure.dart';

class AddHabitUseCase {
  final HabitRepository habitRepository;

  AddHabitUseCase(this.habitRepository);

  Future<Either<Failure, void>> call(Habit habit) async {
    return await habitRepository.addHabit(habit);
  }
}

class GetAllHabitsUseCase {
  final HabitRepository habitRepository;

  GetAllHabitsUseCase(this.habitRepository);

  Future<Either<Failure, List<Habit>>> call() async {
    return await habitRepository.getAllHabits();
  }
}

class MarkHabitDoneUseCase {
  final HabitRepository habitRepository;

  MarkHabitDoneUseCase(this.habitRepository);

  Future<Either<Failure, void>> call(String habitId, DateTime date) async {
    return await habitRepository.markHabitDone(habitId, date);
  }
}
