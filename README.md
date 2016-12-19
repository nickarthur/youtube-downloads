# youtube-downloads
bourne shell scripts for getting youtube streams as json for UNITY 3D AVPRO Video by using  a file of input urls

# Example Usage


command:

$ youtube-grabber.sh < ./motown_playlist_input_urls > motown_playlist.json


OUTPUT:
this will create motown_playlist.json 

NOTE:  Currently there is a bug where there is a comma after the last json object in the array.  so remove the comma before feeding the file to Unity3D

