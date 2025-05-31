import 'package:astrotalk_app/helper/color.dart';
import 'package:astrotalk_app/helper/custom_text_style.dart';
import 'package:astrotalk_app/widgets/my_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class EnterDetailsScreen extends StatefulWidget {
  const EnterDetailsScreen({super.key});

  @override
  State<EnterDetailsScreen> createState() => _EnterDetailsScreenState();
}

class _EnterDetailsScreenState extends State<EnterDetailsScreen> {
  /// editing text controller
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController(
    text: "New Delhi , Delhi , India",
  );

  late Size mqData = MediaQuery.of(context).size;

  /// controller
  final PageController _pageController = PageController();

  /// current index
  int _currentPage = 0;

  /// birth time
  String? _bornTime;

  /// gender
  String? _selectGender;

  /// selected language
  final List<String> _selectedLanguage = [];

  /// language
  final List<String> language = [
    "English",
    "Hindi",
    "Bengali",
    "Gujarati",
    "Kannada",
    "Malayalam",
    "Marathi",
    "Punjabi",
    "Tamil",
    "Telugu",
    "Urdu",
  ];

  /// list of indicator  icon
  List<dynamic> indicatorIcon = [
    Icons.person,
    Icons.female_rounded,
    Icons.calendar_month_rounded,
    Icons.access_time_rounded,
    Icons.location_on_outlined,
    Icons.language,
  ];

  /// date picker
  /// months
  final List<String> months = [
    "Jan",
    "Feb",
    "Mar",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];

  /// date 1 - 31
  final List<int> days = List.generate(31, (index) => index + 1);

  /// year
  final List<int> years = List.generate(100, (index) => 2025 - index);

  int selectedMonthIndex = 6;
  int selectedDayIndex = 6;
  int selectedYearIndex = 24;

  late final void Function(String selectedDate) onDateSelected;

  /// next page function
  void _nextPage() {
    if (_currentPage < 6) {
      setState(() {
        _currentPage++;
      });
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _backPage() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
      });
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  bool _isNameValid() {
    return _nameController.text.trim().isNotEmpty;
  }

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// app bar
      appBar: AppBar(
        title: Text("Enter Your Details", style: myTextStyle21()),
        leading: IconButton(
          onPressed: () => _backPage(),
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        backgroundColor: AppColors.lightBackground,
        elevation: 0,
      ),
      backgroundColor: AppColors.lightBackground,

      /// body
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              /// page indicator call here
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [_buildPageIndicator()],
              ),

              Expanded(
                child: PageView(
                  controller: _pageController,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    /// name page
                    _buildNamePage(),

                    /// gender
                    _buildGenderPage(),

                    /// date of birth
                    _buildDateOfBirth(),

                    /// birth time
                    _buildBirthTime(),

                    /// location
                    _buildLocationPage(),

                    /// language
                    _buildLanguagePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// page indicator
  Widget _buildPageIndicator() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(indicatorIcon.length, (index) {
          final isActive = _currentPage == index;
          final isCompleted = index < _currentPage;
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 3),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        isActive || isCompleted
                            ? AppColors.primary
                            : Colors.black12,
                  ),
                ),
                if (isActive)
                  Icon(indicatorIcon[index], size: 21, color: Colors.black),
              ],
            ),
          );
        }),
      ),
    );
  }

  /// name page
  Widget _buildNamePage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32),
        Text(
          "Hey there!",
          style: myTextStyle24(
            fontWeight: FontWeight.bold,
            textColor: Colors.black54,
          ),
        ),
        SizedBox(height: 4),
        Text(
          "What is your name?",
          style: myTextStyle24(
            fontWeight: FontWeight.bold,
            textColor: Colors.black54,
          ),
        ),

        SizedBox(height: 32),

        /// name text field
        TextField(
          autofocus: false,
          style: myTextStyle18(),
          controller: _nameController,
          decoration: InputDecoration(
            hintText: "Enter name",
            hintStyle: myTextStyle18(),
            filled: true,
            fillColor: Colors.white,

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(width: 1, color: Colors.black38),
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(width: 1, color: Colors.black38),
            ),
          ),
        ),

        SizedBox(height: 32),

        SizedBox(
          width: double.infinity,
          child: MyTextButton(
            btnText: "Next",
            onPress: () {
              if (_nameController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Please enter your name",
                      style: myTextStyle18(textColor: Colors.white),
                    ),
                    backgroundColor: Colors.red,
                  ),
                );
              } else {
                _nextPage();
              }
            },
            btnBackgroundColor:
                _isNameValid() ? AppColors.primary : Colors.grey.withAlpha(140),
            borderRadius: 16,
          ),
        ),
      ],
    );
  }

  /// gender
  Widget _buildGenderPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32),
        Text(
          "What is your gender?",
          style: myTextStyle24(
            fontWeight: FontWeight.bold,
            textColor: Colors.black54,
          ),
        ),

        SizedBox(height: 32),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            /// Male
            Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _selectGender = "Male";
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          _selectGender == "Male"
                              ? AppColors.primary
                              : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: AppColors.primary),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        "lib/assets/icons/man.png",
                        fit: BoxFit.cover,
                        height: mqData.height * 0.1,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Male",
                    style: myTextStyle21(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            /// female
            Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _selectGender = "Female";
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          _selectGender == "Female"
                              ? AppColors.primary
                              : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: AppColors.primary),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        "lib/assets/icons/woman.png",
                        fit: BoxFit.cover,
                        height: mqData.height * 0.1,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Female",
                    style: myTextStyle21(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),

        SizedBox(height: mqData.height * 0.05),

        if (_selectGender != null)
          SizedBox(
            width: double.infinity,
            child: MyTextButton(
              btnText: "Next",
              onPress: () {
                _nextPage();
              },
              btnBackgroundColor:
                  _isNameValid()
                      ? AppColors.primary
                      : Colors.grey.withAlpha(140),
              borderRadius: 16,
            ),
          ),
      ],
    );
  }

  Widget _buildDateOfBirth() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32),
        Text(
          "Enter your birth date ",
          style: myTextStyle24(
            fontWeight: FontWeight.bold,
            textColor: Colors.black54,
          ),
        ),
        SizedBox(height: mqData.height * 0.02),

        SizedBox(
          height: mqData.height * 0.14,
          child: Row(
            children: [
              /// months
              _buildPicker(
                items: months,
                selectedIndex: selectedMonthIndex,
                onSelectedItemChanged: (index) {
                  setState(() {
                    selectedMonthIndex = index;
                  });
                },
              ),

              /// days
              _buildPicker(
                items: days,
                selectedIndex: selectedDayIndex,
                onSelectedItemChanged: (index) {
                  setState(() {
                    selectedDayIndex = index;
                  });
                },
              ),

              /// year
              _buildPicker(
                items: years,
                selectedIndex: selectedYearIndex,
                onSelectedItemChanged: (index) {
                  setState(() {
                    selectedYearIndex = index;
                  });
                },
              ),
            ],
          ),
        ),
        SizedBox(height: mqData.height * 0.05),

        SizedBox(
          width: double.infinity,
          child: MyTextButton(
            btnText: 'Next',
            borderRadius: 16,
            onPress: () => _nextPage(),
          ),
        ),
      ],
    );
  }

  Widget _buildPicker<T>({
    required List<T> items,
    required int selectedIndex,
    required ValueChanged<int> onSelectedItemChanged,
  }) {
    return Expanded(
      child: CupertinoPicker(
        itemExtent: 60,
        looping: true,

        scrollController: FixedExtentScrollController(
          initialItem: selectedIndex,
        ),
        onSelectedItemChanged: onSelectedItemChanged,
        children:
            items.map((item) {
              return Center(
                child: Text(item.toString(), style: myTextStyle21()),
              );
            }).toList(),
      ),
    );
  }

  Widget _buildBirthTime() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32),
        Text(
          "Do you know your time of birth ",
          style: myTextStyle24(
            fontWeight: FontWeight.bold,
            textColor: Colors.black54,
          ),
        ),
        SizedBox(height: mqData.height * 0.02),

        GestureDetector(
          onTap: () {
            setState(() {
              _bornTime = "Yes";
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            height: mqData.height * 0.06,
            decoration: BoxDecoration(
              color: _bornTime == "Yes" ? AppColors.primary : Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(width: 1, color: Colors.black38),
            ),
            child: Row(
              children: [
                Icon(Icons.verified_user_outlined, color: Colors.green),
                SizedBox(width: 16),
                Text("Yes", style: myTextStyle21(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),

        SizedBox(height: 21),

        GestureDetector(
          onTap: () {
            setState(() {
              _bornTime = "No";
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            height: mqData.height * 0.06,
            decoration: BoxDecoration(
              color: _bornTime == "No" ? AppColors.primary : Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(width: 1, color: Colors.black38),
            ),
            child: Row(
              children: [
                Icon(Icons.close_rounded, color: Colors.red),
                SizedBox(width: 16),
                Text("No", style: myTextStyle21(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),

        SizedBox(height: mqData.height * 0.05),

        if (_bornTime != null)
          SizedBox(
            width: double.infinity,
            child: MyTextButton(
              btnText: 'Next',
              borderRadius: 16,
              onPress: () => _nextPage(),
            ),
          ),
      ],
    );
  }

  Widget _buildLocationPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32),
        Text(
          "Where were you born?",
          style: myTextStyle24(
            fontWeight: FontWeight.bold,
            textColor: Colors.black54,
          ),
        ),

        SizedBox(height: mqData.height * 0.05),

        /// name text field
        TextField(
          autofocus: false,
          style: myTextStyle18(),
          controller: _locationController,
          decoration: InputDecoration(
            hintText: "Enter your birth location",
            hintStyle: myTextStyle18(),
            filled: true,
            fillColor: Colors.white,
            suffixIcon: Icon(Icons.search, color: Colors.black38),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(width: 1, color: Colors.black38),
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(width: 1, color: Colors.black38),
            ),
          ),
        ),

        SizedBox(height: 32),

        SizedBox(
          width: double.infinity,
          child: MyTextButton(
            btnText: "Next",
            onPress: () {
              _nextPage();
            },

            btnBackgroundColor: AppColors.primary,
            borderRadius: 16,
          ),
        ),
      ],
    );
  }

  Widget _buildLanguagePage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32),
        Text(
          "Do you know your time of birth ",
          style: myTextStyle24(
            fontWeight: FontWeight.bold,
            textColor: Colors.black54,
          ),
        ),
        SizedBox(height: mqData.height * 0.02),

        /// language chip
        Wrap(
          spacing: 10,
          runSpacing: 8,
          children:
              language.map((lang) {
                final isSelected = _selectedLanguage.contains(lang);
                return FilterChip(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21),
                    side: BorderSide(width: 2, color: AppColors.primary),
                  ),
                  selectedColor: AppColors.primary,
                  elevation: 1,
                  showCheckmark: false,
                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(lang, style: myTextStyle15()),
                      Icon(isSelected ? Icons.check : Icons.add),
                    ],
                  ),
                  selected: isSelected,
                  onSelected: (selected) {
                    setState(() {
                      if (selected) {
                        setState(() {
                          _selectedLanguage.add(lang);
                        });
                      } else {
                        _selectedLanguage.remove(lang);
                      }
                    });
                  },
                );
              }).toList(),
        ),

        SizedBox(height: mqData.height * 0.05),

        if (_selectedLanguage.isNotEmpty)
          SizedBox(
            width: double.infinity,
            child: MyTextButton(
              btnText: 'Start chat with Astrologer',
              borderRadius: 16,
              onPress: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => LoginScreen()),
                );
              },
            ),
          ),
      ],
    );
  }
}
