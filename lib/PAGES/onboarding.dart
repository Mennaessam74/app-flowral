


// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, unused_import

import 'package:flutter/material.dart';


    String _currentPageText = '';
    String _buttonText = '';
    List<String> _pages = [
      'Welcome to Boarding Screen!',
      'This is the second page.',
      'This is the final page. Tap to finish.'
    ];

    @override
    void initState() {
      super.initState();
      _updatePage(_currentPageIndex);
    }

    void _updatePage(int index) {
      setState(() {
        _currentPageIndex = index;
        _currentPageText = _pages[index];
        if (index < _pages.length - 1) {
          _buttonText = 'Next';
        } else {
          _buttonText = 'Finish';
        }
      });
    }

    void _nextPage() {
      if (_currentPageIndex < _pages.length - 1) {
        _updatePage(_currentPageIndex + 1);
      } else {
        // Navigate to next page or perform any other action
        // when the boarding process is finished.
        print('Boarding finished!');
      }
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Boarding Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _currentPageText,
                style: TextStyle(fontSize: 24.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: _nextPage,
                child: Text(_buttonText),
              ),
            ],
          ),
        ),
      );
    }

