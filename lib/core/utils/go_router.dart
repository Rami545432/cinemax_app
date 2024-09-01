import 'package:cinemax_app/core/utils/get_it.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/initial_auth_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/new_password_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/reset_password_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/sign_in_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/sign_up_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/verify_account_view.dart';
import 'package:cinemax_app/features/home/data/repos/home_repo_impl.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:cinemax_app/features/home/domian/uses_cases/fetch_most_popular.dart';
import 'package:cinemax_app/features/home/domian/uses_cases/fetch_movie_details.dart';
import 'package:cinemax_app/features/home/domian/uses_cases/fetch_newst_movies.dart';
import 'package:cinemax_app/features/home/presentaion/manger/fetch_movie_details_cubit/fetch_movie_details_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/manger/fetch_newst_movies_cubit/fetch_newset_movies_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/manger/fetch_popular_movie_cubit/fetch_popular_movies_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/views/see_all_view.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/youtube_player.dart';
import 'package:cinemax_app/features/onBoarding/presentaion/view_models/widgets/page_view.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/views/home_view.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/views/movie_details_view.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/views/search_view.dart';
import 'package:cinemax_app/features/splash/presentaion/views_models/views/splash_view.dart';
import 'package:cinemax_app/features/wishList/presentaion/view_models/views/wish_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class Approuter {
  static const String kOnBoarding1 = '/onboarding1';
  static const String kInitialAuth = '/initailauth';
  static const String kSignUpView = '/signupview';
  static const String kSignInView = '/signInview';
  static const String kResetPasswordView = '/resetpasswordview';
  static const String kNewPasswordView = '/newpasswordview';
  static const String kVerficationView = '/verificationview';
  static const String kSearchView = '/searchview';
  static const String kHomeview = '/homeview';
  static const String kDetailView = '/detailview';
  static const String kWishListView = '/wishlistview';
  static const String kYoutubePlayer = '/youtubePlayerVideo';
  static const String kSeeAllView = '/seeAllview';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeview,
      builder: (context, state) => MultiBlocProvider(providers: [
        BlocProvider(
            create: (context) => FetchNewsetMoviesCubit(
                  FetchNewstMovieCase(
                    homeRepo: getIt.get<HomeRepoImpl>(),
                  ),
                )..fetchNewsetMovies()),
        BlocProvider(
            create: (context) => FetchPopularMoviesCubit(
                  FetchMostPopularUseCase(
                    homeRepo: getIt.get<HomeRepoImpl>(),
                  ),
                )..fetchPopularMovie('')),
      ], child: const HomeView()),
    ),
    GoRoute(
      path: kOnBoarding1,
      builder: (context, state) => const OnBoardingTransistion(),
    ),
    GoRoute(
      path: kInitialAuth,
      builder: (context, state) => const InitialAuthView(),
    ),
    GoRoute(
      path: kSignUpView,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: kSignInView,
      builder: (context, state) => const SignInView(),
    ),
    GoRoute(
      path: kResetPasswordView,
      builder: (context, state) => const ResetPasswordView(),
    ),
    GoRoute(
      path: kNewPasswordView,
      builder: (context, state) => const NewPasswordView(),
    ),
    GoRoute(
      path: kVerficationView,
      builder: (context, state) => const VerifyAccountView(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: kDetailView,
      builder: (context, state) => BlocProvider(
        create: (context) => FetchMovieDetailsCubit(
          FetchMovieDetailsUseCase(
            homeRepo: getIt.get<HomeRepoImpl>(),
          ),
        ),
        child: MovieDetailsView(
          movieEntity: state.extra as MovieEntity,
        ),
      ),
    ),
    GoRoute(
      path: kWishListView,
      builder: (context, state) => const WishListView(),
    ),
    GoRoute(
      path: kYoutubePlayer,
      builder: (context, state) => YoutubeVideoPlayer(
        movieDetailsEntity: state.extra as MovieDetailsEntity,
      ),
    ),
    GoRoute(
      path: kSeeAllView,
      builder: (context, state) => BlocProvider(
        create: (context) => FetchMovieDetailsCubit(
          FetchMovieDetailsUseCase(homeRepo: getIt.get<HomeRepoImpl>()),
        ),
        child: SeeAllView(
          movieEntity: state.extra as List<MovieEntity>,
        ),
      ),
    ),
  ]);
}
