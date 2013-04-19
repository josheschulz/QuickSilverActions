property appleID : "josh.schulz@gmail.com"
 
(*
See post at: http://n8henrie.com/2013/04/send-imessage-messages-with-quicksilver
Send an iMessage to a buddy with Quicksilver. 
 
Install by placing in ~/Library/Application Support/Quicksilver/Actions and restarting Quicksilver
First pane: pick buddy from contacts and right arrow in to select the correct phone number (or just type the phone number as text)
Second pane: choose this action. 
Third pane: Enter text to send.
 
*)
 
 
using terms from application "Quicksilver"
   on get direct types
      return {"NSStringPboardType"}
   end get direct types
   
   on get indirect types
      return {"NSStringPboardType"}
   end get indirect types
   
   on process text recipient with textToSend
      
      if appleID is "yourAppleID" then
         display dialog "You need to open the \"Send with Messages\" Action script and set your Apple ID. Exiting."
         return
      else
         
         try
            tell application "Messages"
               
               tell (first service whose (service type is iMessage and name is ("E:" & appleID)))
                  log in
                  
                  send textToSend to buddy recipient
                  
               end tell
               
            end tell
            
         on error a number b
            activate
            display dialog a with title "error with your QS action script"
         end try
      end if
   end process text
   
   on get argument count
      return 2
   end get argument count
   
end using terms from
