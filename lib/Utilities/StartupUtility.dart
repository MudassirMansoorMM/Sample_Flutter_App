import 'package:sample_flutter_app/Utilities/StorageManager.dart';
import '../Constants.dart';



/// Startup Utility helps us prepare the app on startup
/// based upon user Preferences saved earlier.

class StartUpUtility{


  /// Get User details from Shared Preference and returns true if user exists
  Future<bool> getUser() async {

    email = await StorageManager().getString("email");

    if(email != null){

      return true;

    }else return false;



  }




}