import 'package:contact_design_clone/domain/entity/contact_details_entity.dart';
import 'package:contact_design_clone/presentation/ui/pages/contact_details_page/widgets/contact_details_item.dart';
import 'package:flutter/material.dart';

class ContactDetailsPage extends StatefulWidget {
  const ContactDetailsPage({super.key});

  @override
  State<ContactDetailsPage> createState() => _ContactDetailsPageState();
}

class _ContactDetailsPageState extends State<ContactDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF154edc),
        body: ContactDetailsItem(),
      ),
    );
  }
}
