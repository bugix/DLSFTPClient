Pod::Spec.new do |s|
  s.name         = "DLSFTPClient"
  s.version      = "1.0.6"
  s.summary      = "DLSFTPClient is an SFTP Client library for iOS, using libssh2"
  s.homepage     = "https://github.com/bugix/DLSFTPClient"
  s.social_media_url = 'https://twitter.com/leehro'
  s.license      = { :type => 'BSD', :file => 'LICENSE' }
  s.author       = { "Dan Leehr" => "dan@hammockdistrict.com" }
  s.source       = {
    :git => "https://github.com/bugix/DLSFTPClient.git",
    :tag => s.version.to_s
  }

  s.platform     = :ios, '10.0'
  s.requires_arc = true

  s.source_files = 'DLSFTPClient/Classes/*.{h,m}', 'DLSFTPClient/Libraries/include/**/*.h'
  s.vendored_libraries = 'DLSFTPClient/Libraries/lib/libssh2.a', 'DLSFTPClient/Libraries/lib/libssl.a', 'DLSFTPClient/Libraries/lib/libcrypto.a'
  s.libraries = 'z'
  s.framework	 = 'Foundation', 'CFNetwork'
end
