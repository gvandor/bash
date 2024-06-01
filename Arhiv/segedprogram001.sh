# A txt szöveg fájl neve
file_name="words.txt"

# A szavak beolvasása a txt szöveg fájlból
words=$(cat $file_name)

# Minden szó idézőjelbe tétele
quoted_words=""
for word in $words; do
  quoted_word="\"$word\""
  quoted_words="$quoted_words$quoted_word"
done

# Vesszőt tenni a szavak végén levő időzőjel után
if [[ "$quoted_words" == *"."* ]]; then
  quoted_words="$quoted_words,"
fi

# A módosított szavak kiírása a fájlba
echo "$quoted_words" > 01.txt
