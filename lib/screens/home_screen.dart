import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_ui/screens/hotel_view.dart';
import 'package:ticket_booking_ui/utils/app_styles.dart';
import 'package:ticket_booking_ui/screens/ticket_view.dart';
import 'package:ticket_booking_ui/utils/hotel_list_info.dart';
import 'package:ticket_booking_ui/utils/ticket_list_info.dart';
import 'package:ticket_booking_ui/widgets/double_text_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headlineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headlineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img_1.png'),
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search_outlined,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        'Search',
                        style: Styles.headlineStyle4,
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                const DoubleTextWidgets(
                  bigText: "Upcoming Flights",
                  smallText: 'View all',
                )
              ],
            ),
          ),
          const Gap(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList
                  .map((singleTicket) => TicketView(ticket: singleTicket))
                  .toList(),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const DoubleTextWidgets(
              bigText: 'Hotels',
              smallText: 'View all',
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: hotelList
                  .map((singleHotel) => HotelView(hotel: singleHotel))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
