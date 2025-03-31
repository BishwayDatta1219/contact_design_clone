import 'package:contact_design_clone/core/database/app_database.dart';
import 'package:contact_design_clone/domain/entity/contact_list_entity.dart';
import 'package:contact_design_clone/presentation/ui/pages/contact_details_page/contact_details_page.dart';
import 'package:contact_design_clone/presentation/ui/pages/home_page/widgets/contact_list_item.dart';
import 'package:flutter/material.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({super.key});

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  final List<ContactListEntity> _contacts = [];
  bool _isLoadingContacts = true;

  _setIsLoadingContacts(bool isLoading) {
    setState(() {
      _isLoadingContacts = isLoading;
    });
  }

  Future<void> _getContacts() async {
    _contacts.clear();
    _setIsLoadingContacts(true);
    await Future.delayed(Duration(seconds: 1));
    var dbContacts = AppDatabase.contact;
    _setIsLoadingContacts(false);
    setState(() {
      _contacts.addAll(dbContacts);
    });
  }

  _search(String keyword) {
    _contacts.clear();
    var searchedContacts = AppDatabase.contact
        .where((x) => x.userName.toLowerCase().contains(keyword.toLowerCase()))
        .toList();
    setState(() {
      _contacts.addAll(searchedContacts);
    });
  }

  _gotoDetailsPage(ContactListEntity currentContact) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ContactDetailsPage(
          contact: currentContact,
        ),
      ),
    );
  }

  @override
  void initState() {
    _getContacts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Contact',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "Add Contact",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Container(
            width: 376.0,
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey.shade100,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey.shade300,
                    size: 28.0,
                  ),
                ),
                Expanded(
                  child: TextField(
                    onChanged: (keyword) {
                      _search(keyword);
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search name, nummber, etc",
                      hintStyle: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: _isLoadingContacts
                ? _buildLoadingIndicator()
                : _buildContactList(),
          ),
        ],
      ),
    );
  }

  _buildLoadingIndicator() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(
            height: 10,
          ),
          Text("Loading your contacts...")
        ],
      ),
    );
  }

  _buildContactList() {
    if (_contacts.isEmpty) {
      return Center(
        child: Text("No contacts found!"),
      );
    }
    String? indexHeader;
    return ListView.builder(
      itemBuilder: (context, index) {
        var currentContact = _contacts[index];
        var isLastItem = index == (_contacts.length - 1);
        var currentHeader = currentContact.userName[0].toUpperCase();
        var showHeader = false;
        if (currentHeader != indexHeader) {
          indexHeader = currentHeader;
          showHeader = true;
        }
        var contactItem = ContactListItem(
          onPressed: () => _gotoDetailsPage(currentContact),
          contact: currentContact,
        );
        var header = Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          child: Text(
            currentHeader,
            textAlign: TextAlign.start,
          ),
        );
        var divider = Divider();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (showHeader) header,
            contactItem,
            if (!isLastItem) divider
          ],
        );
      },
      itemCount: _contacts.length,
    );
  }
}
