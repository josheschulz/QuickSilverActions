using terms from application "Quicksilver"
  on process text direct_object
   try
      tell application "Evernote"
         set query string of window 1 whose class = collection window to direct_object
         activate

      end tell
   on error a number b
      activate
      display dialog a
   end try       
 
  end process text
 
  --This handler may be omitted if the action accepts all direct object types.
  on get direct types
    return {"NSStringPboardType", "Apple URL pasteboard type"}
  end get direct types
 
end using terms from
