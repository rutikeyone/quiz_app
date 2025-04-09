import 'package:firebase_auth/firebase_auth.dart';

abstract interface class AuthService {
  bool get isAuthenticated;

  User? get currentUser;

  Stream<User?> get userStream;

  Stream<bool> get authStatusChanged;

  Future<void> signInWithEmailAndPassword(String email, String password);

  Future<void> registerWithEmailAndPassword(String email, String password);

  Future<void> signOut();
}

class AuthServiceImpl implements AuthService {
  final FirebaseAuth _firebaseAuth;

  @override
  bool get isAuthenticated => _firebaseAuth.currentUser != null;

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  Stream<User?> get userStream => _firebaseAuth.userChanges();

  @override
  Stream<bool> get authStatusChanged => userStream.map((e) => e != null);

  const AuthServiceImpl(FirebaseAuth firebaseAuth)
    : _firebaseAuth = firebaseAuth;

  @override
  Future<void> registerWithEmailAndPassword(String email, String password) {
    return _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) {
    return _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }
}
