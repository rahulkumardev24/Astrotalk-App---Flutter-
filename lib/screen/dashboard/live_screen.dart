import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({super.key});

  @override
  State<LiveScreen> createState() => _AstroTalkLiveScreenState();
}

class _AstroTalkLiveScreenState extends State<LiveScreen> {
  late PageController _pageController;
  late List<VideoPlayerController> _controllers;
  int _currentPage = 0;

  // List of astrologer live videos (replace with actual URLs)
  final List<String> _liveVideos = [
    "lib/assets/video/SYSTEM.mp4",
    "lib/assets/video/reels.mp4",
    "lib/assets/video/Main-mera-dil-aur-tum-ho-yahan-Visit.mp4",
    "lib/assets/video/video.mp4",
  ];

  // Astrologer data
  final List<Map<String, dynamic>> _astrologers = [
    {
      "name": "Pandit Ravi",
      "specialty": "Vedic Astrology, Love Problems",
      "followers": "14.2k",
      "image": "lib/assets/images/ast3.jpg",
    },
    {
      "name": "Acharya Priya",
      "specialty": "Career Guidance, Palmistry",
      "followers": "8.7k",
      "image": "lib/assets/images/ast3.jpg",
    },
    {
      "name": "Swami Ji",
      "specialty": "Kundli, Marriage Prediction",
      "followers": "22.1k",
      "image": "lib/assets/images/ast3.jpg",
    },
    {
      "name": "Dr. Astro",
      "specialty": "Numerology, Gemstone Advice",
      "followers": "5.6k",
      "image": "lib/assets/images/ast3.jpg",
    },
  ];

  late Size mqData = MediaQuery.of(context).size;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _controllers =
        _liveVideos.map((url) => VideoPlayerController.asset(url)).toList();
    _initializeVideo(0);
  }

  Future<void> _initializeVideo(int index) async {
    try {
      await _controllers[index].initialize();
      _controllers[index].setLooping(true);
      _controllers[index].play();
      setState(() {});
    } catch (e) {
      print("Error initializing video: $e");
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _onPageChanged(int page) {
    // Pause previous video
    _controllers[_currentPage].pause();
    // Play new video
    _currentPage = page;
    if (!_controllers[page].value.isInitialized) {
      _initializeVideo(page);
    } else {
      _controllers[page].play();
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Video PageView
          PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            itemCount: _liveVideos.length,
            onPageChanged: _onPageChanged,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  /// Video Player
                  if (_controllers[index].value.isInitialized)
                    Center(
                      child: AspectRatio(
                        aspectRatio: _controllers[index].value.aspectRatio,
                        child: VideoPlayer(_controllers[index]),
                      ),
                    )
                  else
                    const Center(
                      child: CircularProgressIndicator(color: Colors.white),
                    ),

                  /// Tap to pause/play
                  GestureDetector(
                    onTap: () {
                      if (_controllers[index].value.isPlaying) {
                        _controllers[index].pause();
                      } else {
                        _controllers[index].play();
                      }
                      setState(() {});
                    },
                    behavior: HitTestBehavior.opaque,
                  ),
                ],
              );
            },
          ),

          /// Top bar
          Positioned(
            top: MediaQuery.of(context).padding.top + 10,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// profile and name
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child: Row(
                      children: [
                        /// profile
                        Container(
                          height: mqData.height * 0.05,
                          width: mqData.height * 0.05,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2, color: Colors.orange),
                            image: DecorationImage(
                              image: AssetImage(
                                _astrologers[_currentPage]["image"],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            _astrologers[_currentPage]["name"],
                            style: myTextStyle15(textColor: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Follow",
                        style: myTextStyle15(textColor: Colors.white),
                      ),
                    ),
                  ),

                  /// live watching
                  ///
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.visibility, color: Colors.white),
                          Text(
                            _astrologers[_currentPage]["followers"],
                            style: myTextStyle15(textColor: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.close, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // / Bottom info panel
          Positioned(
            bottom: 20,
            left: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(width: 12),
                    // Astrologer info
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: mqData.width * 0.4,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(21),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 12,
                              ),
                              child: Text(
                                "Say hi....",
                                style: myTextStyle15(textColor: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// call price
                    Container(
                      height: mqData.height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white24,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Icon(
                              Icons.currency_rupee_rounded,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              "24/m",
                              style: myTextStyle18(
                                textColor: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),
              ],
            ),
          ),

          // Right side action buttons
          Positioned(
            right: 16,
            bottom: 180,
            child: Column(
              children: [
                /// Share button
                Container(
                  height: mqData.height * 0.05,
                  width: mqData.height * 0.05,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black26,
                  ),
                  child: Icon(Icons.share, color: Colors.white),
                ),
                const SizedBox(height: 20),

                /// gift button
                Container(
                  height: mqData.height * 0.05,
                  width: mqData.height * 0.05,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black26,
                  ),
                  child: Icon(Icons.card_giftcard_rounded, color: Colors.white),
                ),

                const SizedBox(height: 20),

                /// timer
                Container(
                  height: mqData.height * 0.05,
                  width: mqData.height * 0.05,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black26,
                  ),
                  child: Icon(
                    Icons.hourglass_full_rounded,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),

                /// call
                Container(
                  height: mqData.height * 0.05,
                  width: mqData.height * 0.05,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black26,
                  ),
                  child: Icon(Icons.call, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
