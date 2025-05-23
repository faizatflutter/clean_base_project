import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:clean_base_project/src/core/constants/app_strings.dart';
import 'package:clean_base_project/src/features/habit_tracker/data/data_sources/remote_data_source.dart';
import 'package:clean_base_project/src/features/habit_tracker/data/models/habit_model.dart';
import 'package:clean_base_project/src/features/habit_tracker/domain/entity/habit.dart';
import 'package:clean_base_project/src/features/habit_tracker/domain/repository/habit_repo_abstract.dart';
import 'package:clean_base_project/src/shared/domain/entity/failure.dart';

class HabitRepositoryImpl implements HabitRepository {
  final HabitRemoteDataSource remoteDataSource;

  HabitRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, void>> addHabit(Habit habit) async {
    final habitModel = HabitModel(
      id: habit.id,
      name: habit.name,
      frequency: habit.frequency,
      startDate: habit.startDate,
      streakCount: habit.streakCount,
      completedDates: habit.completedDates,
    );

    try {
      await remoteDataSource.addHabit(habitModel);
      return Right(null);
    } on FirebaseException catch (e) {
      return Left(ServerFailure(e.message ?? AppStrings.serverError));
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Habit>>> getAllHabits() async {
    try {
      List<Habit> habits = await remoteDataSource.getAllHabits();
      return Right(habits);
    } on FirebaseException catch (e) {
      return Left(ServerFailure(e.message ?? AppStrings.serverError));
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> markHabitDone(String habitId, DateTime date) async {
    try {
      await remoteDataSource.markHabitAsDone(habitId, date);
      return Right(null);
    } on FirebaseException catch (e) {
      return Left(ServerFailure(e.message ?? AppStrings.serverError));
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }
}
