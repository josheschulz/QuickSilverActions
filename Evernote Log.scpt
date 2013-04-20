using terms from application "Quicksilver"
  on process text direct_object
   try
      set noteDate to do shell script "date +'%m/%d/%Y'"
      set noteTitle to "Daily Notes " & noteDate

      tell application "Evernote"
         ## Find todays note
         set matches to find notes "intitle:'" & noteTitle & "'"
         set num to count in matches
         if num > 0 then
            ## More than one matches.  Let's just pick
            ##    one and call it a day.
            set outputNote to some item of matches
         else if  num = 0  then
            ## Create a new note
            set outputNote to create note title noteTitle with text "Daily Notes"
            assign tag "daily" to outputNote
         end
         tell outputNote to append text direct_object & "\n\n"
      end tell
   on error errMsg
      tell application "Quicksilver" to show large type "ERROR: " & errMsg
   end try
  end process text
 
  --This handler may be omitted if the action accepts all direct object types.
  on get direct types
    return {"NSStringPboardType", "Apple URL pasteboard type"}
  end get direct types
 
end using terms from
