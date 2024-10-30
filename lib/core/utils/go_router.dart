import 'package:cinemax_app/core/utils/bloc_provieders_views/home_view_provieder.dart';
import 'package:cinemax_app/core/utils/bloc_provieders_views/search_provider.dart';
import 'package:cinemax_app/core/utils/get_it.dart';
import 'package:cinemax_app/core/utils/navigation_views.dart';
import 'package:cinemax_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:cinemax_app/features/auth/domain/use_cases/facebook_sign_in_use_case.dart';
import 'package:cinemax_app/features/auth/domain/use_cases/google_sign_in_use_case.dart';
import 'package:cinemax_app/features/auth/domain/use_cases/register_account_use_case.dart';
import 'package:cinemax_app/features/auth/domain/use_cases/sign_in_use_case.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/manger/google_sign_in_cubit/google_sign_in_cubit.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/manger/sign_up_cubit/sign_up_cubit.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/email_reset_passoword_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/initial_auth_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/new_password_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/reset_password_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/sign_in_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/sign_up_view.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/views/verify_account_view.dart';
import 'package:cinemax_app/features/home/data/repos/home_repo_impl.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:cinemax_app/features/home/domian/uses_cases/fetch_most_popular.dart';

import 'package:cinemax_app/features/home/domian/uses_cases/fetch_movie_details.dart';
import 'package:cinemax_app/features/home/presentaion/manger/fetch_movie_details_cubit/fetch_movie_details_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/manger/fetch_popular_movie_cubit/fetch_popular_movies_cubit.dart';

import 'package:cinemax_app/features/home/presentaion/views_models/views/see_all_view.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/youtube_player.dart';
import 'package:cinemax_app/features/onBoarding/presentaion/view_models/widgets/page_view.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/views/movie_details_view.dart';
import 'package:cinemax_app/features/profile/presentaion/views/edit_profile_view.dart';
import 'package:cinemax_app/features/profile/presentaion/views/profile_view.dart';
import 'package:cinemax_app/features/search/data/repos/search_repo_impl.dart';
import 'package:cinemax_app/features/search/domain/use_case/search_actor_use_case.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/manger/search_actor_cubit/seach_actor_cubit.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/views/search_actors_view.dart';
import 'package:cinemax_app/features/seires/data/repos/series_repo_impl.dart';
import 'package:cinemax_app/features/seires/domain/use_cases/fetch_popular_use_case.dart';
import 'package:cinemax_app/features/seires/domain/use_cases/fetch_top_rated_use_case.dart';
import 'package:cinemax_app/features/seires/domain/use_cases/fetch_tv_show_details_use_case.dart';
import 'package:cinemax_app/features/seires/presentaion/manger/fetch_popular_tv_shows_cubit/fetch_popular_tv_shows_cubit.dart';
import 'package:cinemax_app/features/seires/presentaion/manger/fetch_top_rated_tv_shows_cubit/fetch_top_rated_tv_shows_cubit.dart';
import 'package:cinemax_app/features/seires/presentaion/manger/fetch_tv_show_details_cubit/fetch_tv_show_details_cubit.dart';
import 'package:cinemax_app/features/seires/presentaion/views/see_all_popular_tv_view.dart';
import 'package:cinemax_app/features/seires/presentaion/views/series_details_view.dart';
import 'package:cinemax_app/features/seires/presentaion/views/top_rated_see_all_view.dart';
import 'package:cinemax_app/features/splash/presentaion/views_models/views/splash_view.dart';
import 'package:cinemax_app/features/wishList/presentaion/view_models/views/wish_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentaion/views_models/manger/sign_in_cubit/sign_in_cubit.dart';
import 'bloc_provieders_views/seires_tv_shows_providers.dart';

abstract class Approuter {
  static const String kOnBoarding1 = '/onboarding1';
  static const String kSpalshView = '/splashview';
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
  static const String kActorSearchView = '/actorSearchview';
  static const String kRecommendedSeeAllview = '/recomseeAll';
  static const String kVerficationPasswordEmailView = '/verficationPassword';
  static const String kProfileView = '/profileView';
  static const String kEditProfileView = '/editProfileView';
  static const String kCustomWebView = '/customWebView';
  static const String kSerirsView = '/seriesView';
  static const String kNavigationView = '/navigationView';
  static const String kTvDetailsView = '/detailsTvView';
  static const String kTvSeeAllPopularView = '/seeAllTvPopularView';
  static const String kTopRatedSeeAll = '/topRatedSeeAll';

  static final GoRouter router = GoRouter(
      // initialLocation: '/',
      // redirect: (context, state) {
      //   final signInCubit = context.read<SignInCubit>();
      //   final currentState = signInCubit.state;
      //   if (currentState is SignInSuccess) {
      //     return kNavigationView;
      //   } else if (state.fullPath == '/' && currentState is SignInInitial) {
      //     return kOnBoarding1;
      //   } else if (state.fullPath == kOnBoarding1 &&
      //       currentState is SignInSuccess) {
      //     return kNavigationView;
      //   }
      //   return null;
     
      // },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SplashView(),
        ),
        GoRoute(
          path: kHomeview,
          builder: (context, state) => const HomeViewProviders(),
        ),
        GoRoute(
          path: kOnBoarding1,
          builder: (context, state) => const OnBoardingTransistion(),
        ),
        GoRoute(
          path: kInitialAuth,
          builder: (context, state) => BlocProvider(
            create: (context) => AuthSignUpCubit(
                GoogleSignInUseCase(
                  authRepo: AuthRepoImpl(),
                ),
                FacebookSignInUseCase(
                  authRepo: AuthRepoImpl(),
                )),
            child: const InitialAuthView(),
          ),
        ),
        GoRoute(
          path: kSignUpView,
          builder: (context, state) => BlocProvider(
            create: (context) => SignUpCubit(
              SignUpUseCase(
                authRepo: AuthRepoImpl(),
              ),
            ),
            child: const SignUpView(),
          ),
        ),
        GoRoute(
          path: kSignInView,
          builder: (context, state) => BlocProvider(
            create: (context) => SignInCubit(
              SignInUseCase(
                authRepo: AuthRepoImpl(),
              ),
            ),
            child: const SignInView(),
          ),
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
          builder: (context, state) => const SearchMultiProviders(),
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
              movieEntity: state.extra as int,
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
            create: (context) => FetchPopularMoviesCubit(
              FetchMostPopularUseCase(
                homeRepo: getIt.get<HomeRepoImpl>(),
              ),
            ),
            child: const SeeAllView(),
          ),
        ),
        GoRoute(
          path: kActorSearchView,
          builder: (context, state) => BlocProvider(
            create: (context) => SearchActorCubit(
                SearchActorUseCase(searchRepo: getIt.get<SearchRepoImpl>())),
            child: const SearchActorsView(),
          ),
        ),
        GoRoute(
          path: kVerficationPasswordEmailView,
          builder: (context, state) => EmailResetPassowordView(
            email: state.extra as String,
          ),
        ),
        GoRoute(
          path: kEditProfileView,
          builder: (context, state) => const EditProfileView(),
        ),
        GoRoute(
          path: kProfileView,
          builder: (context, state) => const ProfileView(),
        ),
        GoRoute(
          path: kSerirsView,
          builder: (context, state) => const SeiresTvShowsProviders(),
        ),
        GoRoute(
          path: kNavigationView,
          builder: (context, state) => const NavigationViews(),
        ),
        GoRoute(
          path: kTvDetailsView,
          builder: (context, state) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => FetchTvShowDetailsCubit(
                  FetchTvShowDetailsUseCase(
                    seriesRepo: getIt.get<SeriesRepoImpl>(),
                  ),
                ),
              ),
            ],
            child: SeriesDetailsView(
              tvId: state.extra as int,
            ),
          ),
        ),
        GoRoute(
          path: kTvSeeAllPopularView,
          builder: (context, state) => BlocProvider(
            create: (context) => FetchPopularTvShowsCubit(
              FetchPopularTvShowsUseCase(
                seriesRepo: getIt.get<SeriesRepoImpl>(),
              ),
            ),
            child: const SeeAllPopularTvView(),
          ),
        ),
        GoRoute(
          path: kTopRatedSeeAll,
          builder: (context, state) => BlocProvider(
            create: (context) => FetchTopRatedTvShowsCubit(
              FetchTopRatedTvShowsUseCase(
                seriesRepo: getIt.get<SeriesRepoImpl>(),
              ),
            ),
            child: TopRatedSeeAllView(),
          ),
        ),
      ]);
}
