require 'diary'
require 'diary_entry'

RSpec.describe "integration" do
    context "after adding some entries" do
        it "lists out the entries added" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my title", "my contents")
            diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.all).to eq [diary_entry_1, diary_entry_2]
        end
    end

    context "when all is called" do
        xit "returns entry list" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my title", "my contents")
            diary.add(entry)
            expect(diary.all). to eq "Entry: #{entries}"

        end
    end

    describe "@count_words" do
        it "counts the words in all diary entries' contents" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my title", "my contents")
            diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.count_words).to eq 5
         end
     end 
    describe "reading time behaviour" do
        it "fails where wpm is 0" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my title", "my contents 1")
            diary.add(diary_entry_1)
            expect { diary.reading_time(0)}.to raise_error("WPM must be positive")
        end
        #remember the case where apm is 0
        it "calculates the reading time for all entries" do 
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my title", "my contents 1")
            diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.reading_time(2)).to eq 3
         end

        it "calculates the reading time for all entries where it falls ove a min" do 
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my title", "my contents 1")
            diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.reading_time(2)).to eq 3
        end
     end 
      # `wpm` is an integer representing the number of words the user can read
          # per minute.
          # `minutes` is an integer representing the number of minutes the user
          # has to read.
     describe "best reading time entry behaviour" do
        context "where we just have one entry" do
             it "should return that entry" do
                 diary = Diary.new
                 diary_entry_1 = DiaryEntry.new("my title", "my contents")
                 diary.add(diary_entry_1)
                 result = diary.find_best_entry_for_reading_time(2,1)
                expect(result).to eq diary_entry_1
            end
        end

        context "where we just have one entry which is readable in the time" do
            it "should return nil" do
                diary = Diary.new
                diary_entry_1 = DiaryEntry.new("my title", "Longer contents now ")
                diary.add(diary_entry_1)
                result = diary.find_best_entry_for_reading_time(2,1)
               expect(result).to eq nil
           end
       end
    end

end

# require 'music_library.rb'
# require 'track.rb'

# RSpec.describe 'integration' do
#     context 'when we add a track to the library' do
#         it 'comes back in the list' do
#             music_library = MusicLibrary.new
#             track_1 = Track.new("my_title_1", "my_artist_2")
#             track_2 = Track.new("my_title_2", "my_artist_2")
#             music_library.add(track_1)
#             music_library.add(track_2)
#             expect(music_library.all).to eq [track_1, track_2]
#         end
#     end

#     context "with some tracks added" do
#         it "searches for those tracks by full title" do
#             music_library = MusicLibrary.new
#             track_1 = Track.new("my_title_1", "my_artist_2")
#             track_2 = Track.new("my_title_2", "my_artist_2")
#             music_library.add(track_1)
#             music_library.add(track_2)
#             result = music_library.search_by_title("my_title_2")
#             expect(result).to eq [track_2]
#         end

#         it "searches for those tracks by partial title" do
#             music_library = MusicLibrary.new
#             track_1 = Track.new("my_title_1", "my_artist_2")
#             track_2 = Track.new("my_title_2", "my_artist_2")
#             music_library.add(track_1)
#             music_library.add(track_2)
#             result = music_library.search_by_title("title_2")
#             expect(result).to eq [track_2]
#         end

#         context "where there are no tracks matching" do
#             it "yields an empty list when searching" do
#             music_library = MusicLibrary.new
#             track_1 = Track.new("my_title_1", "my_artist_2")
#             music_library.add(track_1)
#             result = music_library.search_by_title("fred")
#             expect(result).to eq []
#             end
#         end
#     end
# end