import 'package:notaryyy/core/app_export.dart';
import 'package:notaryyy/data/apiClient/api_client.dart';
import 'package:supabase/supabase.dart';

class InitialBindings extends Bindings {
  var supabaseUrl = 'https://fazqhcmnbpvnhegsglrj.supabase.co';

  var supabasePublicKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZhenFoY21uYnB2bmhlZ3NnbHJqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTU4MTc1MDUsImV4cCI6MTk3MTM5MzUwNX0.N-ifQz_jh-tNWkSvCjIJ8Ws7FnR6NosXVmLYyihZ2_A';

  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
    var supabaseClient = SupabaseClient(supabaseUrl, supabasePublicKey);
    Get.put(supabaseClient);
  }
}
