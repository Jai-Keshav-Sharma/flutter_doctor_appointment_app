import 'package:flutter/material.dart';
import 'package:hossapp/utils/config.dart';

class DoctorCard extends StatefulWidget {
  const DoctorCard({Key? key}) : super(key: key);

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 150,
      child: GestureDetector(
        child: Card(
          elevation: 5,
          color: Colors.white,
          child: Row(
            children: [
              SizedBox(
                width: Config.widthSize * 0.33,
                child: Image.asset(
                  'assets/doctor_2.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              const Flexible(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Dr Richard Tan',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Dental',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.star_border,
                            color: Colors.yellow,
                            size: 16,
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text('4.5'),
                          Spacer(
                            flex: 1,
                          ),
                          Text('Reviews'),
                          Spacer(
                            flex: 1,
                          ),
                          Text('20'),
                          Spacer(
                            flex: 7,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
