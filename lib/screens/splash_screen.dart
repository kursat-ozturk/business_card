import 'package:flutter/material.dart';
import 'package:flutter_kahvecisi/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration:
          const Duration(seconds: 2), // Splash ekranının görüntülenme süresi
    );

    _animation = CurvedAnimation(
      parent: _animationController!,
      curve: Curves.easeInOut, // Animasyon eğrisi (isteğe bağlı)
    );

    _animationController!.forward();

    // Belirli bir süre sonra ana sayfaya yönlendirme işlemi
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ), // Ana sayfa widget'ını buraya ekleyin
      );
    });
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: FadeTransition(
          opacity: _animation!,
          child: const Icon(
            Icons.coffee,
            size: 200,
            color: Colors.brown,
          ), // Animasyonlu logo veya istediğiniz başka bir bileşen
        ),
      ),
    );
  }
}
