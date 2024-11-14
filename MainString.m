%% Create, Concatenate, and Convert
close all
clc
% Create string arrays
strArray = ["hello", "world"]
emptyStrArray = strings(1,0)  % Create an empty string array
joinedStr = join(["join", "these", "strings"], " ")
appendedStr = "Start" + " middle" + " end"

% Character arrays
charArray = char('Example character array');
cellOfChars = cellstr(['row1'; 'row2']);  % Convert to cell array of character vectors
blanksArray = blanks(10);  % Create array of 10 blank spaces
newLineChar = newline;  % Create a newline character

% Character or String Arrays
composedStr = compose("Pi is approximately %0.2f", pi);
formattedStr = sprintf("Current year: %d", 2023);
concatStr = strcat("Hello", ", ", "world!");
combinedStr = append("This ", "is ", "combined.");

% Convert Input Arguments
charToStr = convertCharsToStrings('This is a char array');
strToChar = convertStringsToChars("This is a string array");

% Convert Between Numeric and Strings
numArray = [3.14159, 2.71828];
strFromNum = num2str(numArray);
doubleFromStr = str2double(["3.14", "2.71"]);

% Display results using displayResult function
displayResult('String Array', strArray);
displayResult('Joined String', joinedStr);
displayResult('Appended String', appendedStr);
displayResult('Character Array', charArray);
displayResult('Cell Array of Character Vectors', cellOfChars);
displayResult('Array of Blanks', blanksArray);
displayResult('New Line Character', newLineChar);
displayResult('Composed String', composedStr);
displayResult('Formatted String', formattedStr);
displayResult('Concatenated String', concatStr);
displayResult('Combined String', combinedStr);
displayResult('Converted from Character to String', charToStr);
displayResult('Converted from String to Character', strToChar);
displayResult('String from Number', strFromNum);
displayResult('Double from String', doubleFromStr);

%% 
close all
clc
% Sample data for demonstration
charArray = 'This is a character array';
cellStrArray = {'This', 'is', 'a', 'cell', 'array'};
strArray = ["This", "is", "a", "string", "array"];
singleStr = "SingleString";

% Data Type Checking
isChar = ischar(charArray);
isCellStr = iscellstr(cellStrArray);
isStr = isstring(strArray);
isStrScalar = isStringScalar(singleStr);

% Text Properties
strLen = strlength(singleStr);
strLetters = isletter(singleStr); % Check which characters are letters
strSpaces = isspace(singleStr); % Check which characters are spaces

% Display results
disp(['Is character array: ', num2str(isChar)]);
disp(['Is cell array of strings: ', num2str(isCellStr)]);
disp(['Is string array: ', num2str(isStr)]);
disp(['Is single string: ', num2str(isStrScalar)]);
disp(['Length of string: ', num2str(strLen)]);
disp(['Letters in string: ', num2str(strLetters)]);
disp(['Spaces in string: ', num2str(strSpaces)]);

%% Find and Replace
close all
clc
% Sample string data for demonstration
text = "Hello world, hello universe. The world is vast.";

% Find operations
containsResult = contains(text, "world");  % Check if 'world' is in the string
matchesResult = matches(text, "Hello");    % Check if string matches 'Hello' exactly
countResult = count(text, "hello");        % Count occurrences of 'hello'
endsWithResult = endsWith(text, "vast.");  % Check if string ends with 'vast.'
startsWithResult = startsWith(text, "Hello"); % Check if string starts with 'Hello'
strfindResult = strfind(text, "world");    % Find positions of 'world' in the string
sscanfResult = sscanf(text, "Hello %s");   % Read formatted data from string

% Replace operations
replaceResult = replace(text, "world", "planet"); % Replace 'world' with 'planet'
replaceBetweenResult = replaceBetween(text, 7, 11, "planet"); % Replace substring between indices
strrepResult = strrep(text, "hello", "hi"); % Replace all instances of 'hello' with 'hi'

% Display results
disp(['Contains "world": ', num2str(containsResult)]);
disp(['Matches "Hello": ', num2str(matchesResult)]);
disp(['Count of "hello": ', num2str(countResult)]);
disp(['Ends with "vast.": ', num2str(endsWithResult)]);
disp(['Starts with "Hello": ', num2str(startsWithResult)]);
disp(['Find "world" positions: ', num2str(strfindResult)]);
disp(['SSCANF read result: ', char(sscanfResult)]);
disp(['Replace "world" with "planet": ', replaceResult]);
disp(['Replace between indices 7 and 11: ', replaceBetweenResult]);
disp(['Strrep "hello" with "hi": ', strrepResult]);

%% Edit
close all
clc

% Sample text for demonstration
text = " Hello world! Welcome to MATLAB. ";

% Erase operations
erasedText = erase(text, "world");  % Erase 'world' from the text
erasedBetweenText = eraseBetween(text, 7, 12); % Erase text between indices

% Insert operations
insertedAfter = insertAfter(text, "world", " beautiful");  % Insert after 'world'
insertedBefore = insertBefore(text, "Welcome", "big ");  % Insert before 'Welcome'

% Pad and trim operations
paddedText = pad(text, 40, 'both'); % Pad text to length 40
strippedText = strip(text);  % Remove leading and trailing whitespaces
lowerText = lower(text);  % Convert text to lowercase
upperText = upper(text);  % Convert text to uppercase
reversedText = reverse(text);  % Reverse the text
deblankedText = deblank(text);  % Remove trailing spaces
trimmedText = strtrim(text);  % Remove leading and trailing whitespaces
justifiedText = strjust(text, 'right');  % Right justify the text

% Display results
disp(['Erased "world": ', erasedText]);
disp(['Erased between indices: ', erasedBetweenText]);
disp(['Inserted After: ', insertedAfter]);
disp(['Inserted Before: ', insertedBefore]);
disp(['Padded Text: ', paddedText]);
disp(['Stripped Text: ', strippedText]);
disp(['Lowercase Text: ', lowerText]);
disp(['Uppercase Text: ', upperText]);
disp(['Reversed Text: ', reversedText]);
disp(['Deblanked Text: ', deblankedText]);
disp(['Trimmed Text: ', trimmedText]);
disp(['Justified Text: ', justifiedText]);


%% Compare

% Sample strings for demonstration
str1 = "Hello World";
str2 = "hello world";
str3 = "Hello";

% Check if the entire string matches
matchesResult = matches(str1, "Hello World");

% Compare two strings for exact match (case sensitive)
strcmpResult = strcmp(str1, str2);

% Compare two strings for exact match (case insensitive)
strcmpiResult = strcmpi(str1, str2);

% Compare first n characters of strings (case sensitive)
strncmpResult = strncmp(str1, str3, 5);

% Compare first n characters of strings (case insensitive)
strncmpiResult = strncmpi(str1, str3, 5);

% Display results
disp(['Matches "Hello World": ', num2str(matchesResult)]);
disp(['strcmp exact match: ', num2str(strcmpResult)]);
disp(['strcmpi exact match (case insensitive): ', num2str(strcmpiResult)]);
disp(['strncmp first 5 characters match: ', num2str(strncmpResult)]);
disp(['strncmpi first 5 characters match (case insensitive): ', num2str(strncmpiResult)]);











