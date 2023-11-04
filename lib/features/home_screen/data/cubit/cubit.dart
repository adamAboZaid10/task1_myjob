import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_job/features/home_screen/data/cubit/states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  bool isCategory = true;
  bool isServices = true;

  void changeCategory() {
    isCategory = !isCategory;
    emit(HomeChangeBottomNavBarState());
  }

  // List<Widget> screens = [
  //   const HomeView(),
  //   const AssetsView(),
  //   const SupportView(),
  //   const ProfileView(),
  // ];

  void changeBottomNavBar(index) {
    currentIndex = index;
    emit(HomeChangeBottomNavBarState());
  }
}
