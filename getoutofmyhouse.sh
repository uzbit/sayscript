#!/bin/bash
# Updated by asking GPT4 how to make the current version.
# Get a list of available voices
voices=($(say -v '?' | awk '{print $1}'))

# How many words to speak
word_count=100

# Iterate and speak random words
for i in $(seq 1 $word_count); do
    # Select a random voice
    voice=${voices[$RANDOM % ${#voices[@]}]}

    # Select a random word
    word=$(shuf -n 1 /usr/share/dict/words)

    echo "Speaking word: $word with voice: $voice"
    say -v "$voice" "$word"
done
