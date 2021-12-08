
=begin
==========================
         Problem
--------------------------
Read the text file in the #process method and pass the text to the block provided in each call. 
Everything you need to work on is either part of the #process method or part of the blocks. 
You need no other additions or changes.

You may assume that paragraphs have one empty line between them and that each line ends with a newline character. A single space appears between all words.
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: - everything you need is part of the process method in TextAnalyzer or blocks
-  Inputs: a text file
-  Output: 
3 paragraphs
15 lines
126 words
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------

--------------------------
Examples/Test Cases/Edge's
--------------------------

3 paragraphs
15 lines
126 words

--------------------------
     Data Structure
--------------------------
a regular text file 
--------------------------
       Algorithm
--------------------------
1. in the process method use a symbol to print words, paragraphs, or sentances 
2. make sure that text analyzer has acess to the file yes 
3. make an intialize so that the file is ready 

--------------------------
          Notes
--------------------------

=end

class TextAnalyzer
  attr_reader :file

  def initialize
    @file = File.open("yes.txt")
  end

  def process
    what = nil
    case yield
    when :para then what = "\n"
    when :lines then what = "."
    when :words then what = nil
    else nil
    end
    p file.read.count(what)
  end
end

analyzer = TextAnalyzer.new
analyzer.process {:para}
analyzer.process {:lines}
analyzer.process {:words}