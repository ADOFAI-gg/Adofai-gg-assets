tag-1-name = Short
tag-1-description = This level is under a minute.

tag-2-name = Triplet
tag-2-description = This level includes several triplets.

tag-3-name = No Speed Changes
tag-3-description = This level's BPM remains constant throughout this level.

tag-4-name = NSFW
tag-4-description = This level includes NSFW content.

tag-5-name = Memorization
tag-5-description = This level requires memorization.

tag-6-name = No Twirls
tag-6-description = This level has no twirls.

tag-8-name = Magic Shape
tag-8-description = This level includes magic shapes.

tag-9-name = Septuplet
tag-9-description = This level includes septuplets.

tag-10-name = 64+ Beat
tag-10-description = This level includes beats higher than 64.

tag-11-name = Long
tag-11-description = This level is over 4 minutes.

tag-12-name = Funky Beat
tag-12-description = This level includes funky beats.

tag-13-name = Pseudo
tag-13-description = This level includes parts where you have to press two fingers at once.

tag-14-name = Gallop
tag-14-description = This level includes parts where you do fast streams.

tag-15-name = Pseudo +2
tag-15-description = This level includes parts where you have to press multiple fingers at once.

tag-16-name = Swing
tag-16-description = This level includes swing rhythms of more than 20%.

tag-17-name = Slow
tag-17-description = This level's BPM is under 300.

tag-18-name = Polyrhythm
tag-18-description = This level includes several polyrhythms.

tag-19-name = Quintuplet
tag-19-description = This level includes quintuplets.

tag-21-name = Tresillo
tag-21-description = This level includes several tresillos.

tag-22-name = Gimmick
tag-22-description = This level includes gimmicks.

tag-23-name = Speed Changes
tag-23-description = This level uses music that changes BPM.

tag-24-name = Sudden Acceleration
tag-24-description = This level includes a sharp increase in BPM.

tag-25-name = DLC
tag-25-description = This level requires the Neo Cosmos DLC to play.

tag-sw-name = Seizure Warning
tag-sw-description = This level features sections that include flashing imagery and could trigger photosensitive epilepsy.

group-chart = Chart&VFX Tags
group-rhythm = Pattern Tags
group-music = Music Tags

# Length
length-short-name = Short
length-medium-name = Medium
length-long-name = Long

length-medium-description = This level is 1~4 minutes.

length-from-video = About {$timeUnit ->
    *[seconds] -> {$time ->
        [one] -> A Second
        *[other] -> {$time} Seconds
    }
    [minutes] -> {$time ->
        [one] -> A Minute
        *[other] -> {$time} Minutes
    }
    [hours] -> {$time ->
        [one] -> An Hour
        *[other] -> {$time} Hours
    }
}
