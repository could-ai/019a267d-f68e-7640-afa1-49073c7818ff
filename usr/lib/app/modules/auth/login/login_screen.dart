import 'package:flutter/material.dart';
import 'package:couldai_user_app/app/modules/auth/login/login_controller.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController _controller = LoginController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  bool _isOtpSent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '欢迎来到美食配送应用',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: '手机号码',
                hintText: '请输入您的手机号码',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            if (!_isOtpSent) ...[
              ElevatedButton(
                onPressed: _sendOtp,
                child: Text('发送验证码'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ] else ...[
              TextField(
                controller: _otpController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: '验证码',
                  hintText: '请输入6位验证码',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
                maxLength: 6,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _verifyOtp,
                child: Text('登录'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
              TextButton(
                onPressed: _resendOtp,
                child: Text('重新发送验证码'),
              ),
            ],
            SizedBox(height: 32),
            Text('或使用其他方式登录'),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: _loginWithGoogle,
                  icon: Icon(Icons.g_mobiledata, size: 40),
                  tooltip: 'Google登录',
                ),
                IconButton(
                  onPressed: _loginWithFacebook,
                  icon: Icon(Icons.facebook, size: 40),
                  tooltip: 'Facebook登录',
                ),
                IconButton(
                  onPressed: _loginWithApple,
                  icon: Icon(Icons.apple, size: 40),
                  tooltip: 'Apple登录',
                ),
              ],
            ),
            SizedBox(height: 32),
            TextButton(
              onPressed: _goToSignup,
              child: Text('还没有账号？注册'),
            ),
          ],
        ),
      ),
    );
  }

  void _sendOtp() {
    // TODO: 实现发送OTP逻辑（目前使用模拟）
    setState(() {
      _isOtpSent = true;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('验证码已发送到 ${_phoneController.text}')),
    );
  }

  void _verifyOtp() {
    // TODO: 实现OTP验证逻辑（目前使用模拟）
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('登录成功！')),
    );
    // Navigator.pushReplacementNamed(context, '/home');
  }

  void _resendOtp() {
    // TODO: 重新发送OTP
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('验证码已重新发送')),
    );
  }

  void _loginWithGoogle() {
    // TODO: Google登录
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Google登录 - 即将上线')),
    );
  }

  void _loginWithFacebook() {
    // TODO: Facebook登录
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Facebook登录 - 即将上线')),
    );
  }

  void _loginWithApple() {
    // TODO: Apple登录
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Apple登录 - 即将上线')),
    );
  }

  void _goToSignup() {
    // TODO: 跳转到注册页面
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('注册功能 - 即将上线')),
    );
  }
}