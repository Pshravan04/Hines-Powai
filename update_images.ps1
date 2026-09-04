$brainDir = "C:\Users\Admin\.gemini\antigravity-ide\brain\c90b2e38-8290-470a-bd2c-5f3ba9c19927"
$assetsDir = "d:\TGM - sites\hiens\assets"

Copy-Item "$brainDir\hero_1_1788524079996.jpg" -Destination "$assetsDir\hero_1.jpg" -Force
Copy-Item "$brainDir\hero_2_1788524097980.jpg" -Destination "$assetsDir\hero_2.jpg" -Force
Copy-Item "$brainDir\about_1_1788524143705.jpg" -Destination "$assetsDir\about_1.jpg" -Force
Copy-Item "$brainDir\gallery_1_1788524162797.jpg" -Destination "$assetsDir\gallery_1.jpg" -Force
Copy-Item "$brainDir\gallery_2_1788524178164.jpg" -Destination "$assetsDir\gallery_2.jpg" -Force
Copy-Item "$brainDir\gallery_3_1788524194414.jpg" -Destination "$assetsDir\gallery_3.jpg" -Force
Copy-Item "$brainDir\gallery_4_1788524208387.jpg" -Destination "$assetsDir\gallery_4.jpg" -Force
Copy-Item "$brainDir\virtual_tour_blur_1788524223487.jpg" -Destination "$assetsDir\virtual_tour_blur.jpg" -Force
Copy-Item "$brainDir\amenity_activity_1788524254467.jpg" -Destination "$assetsDir\new_amenity_activity.jpg" -Force
Copy-Item "$brainDir\amenity_banquet_1788524271620.jpg" -Destination "$assetsDir\new_amenity_banquet.jpg" -Force
Copy-Item "$brainDir\amenity_gym_1788524288055.jpg" -Destination "$assetsDir\new_amenity_gym.jpg" -Force
Copy-Item "$brainDir\amenity_indoor_games_1788524302016.jpg" -Destination "$assetsDir\new_amenity_indoor_games.jpg" -Force
Copy-Item "$brainDir\amenity_kids_1788524317918.jpg" -Destination "$assetsDir\new_amenity_kids.jpg" -Force

$content = Get-Content "d:\TGM - sites\hiens\index.html" -Raw -Encoding UTF8

# Hero
$content = $content.Replace('src="assets/hines-powai (1).png"', 'src="assets/hero_1.jpg"')
# There might be a second hero image, let's just make sure both are distinct if we find them, but it looks like only (1) is used twice in hero (lines 338, 342).
# Let's replace the second occurrence manually or use multi_replace. Let's do it cleanly via multi_replace later if needed. For now, replacing all will make both hero_1.jpg.
# Let's actually use the first hero_1.jpg for both since the HTML has it duplicated (perhaps mobile vs desktop). Wait, line 342 is just the same image for a different breakpoint or wrapper. Let's leave it as hero_1.jpg for both.

# About
$content = $content.Replace('src="assets/banner-3.png"', 'src="assets/about_1.jpg"')

# Gallery (lines 1024-1036)
# Right now they might also be hines-powai (1).png which we just replaced with hero_1.jpg.
# Let's do a better targeted replace below.

Set-Content "d:\TGM - sites\hiens\index.html" -Value $content -Encoding UTF8
