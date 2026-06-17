{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sa240\partightenfactor0

\f0\fs24 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 $cachePath = "$env:windir\\ccmcache"\
\'a0\
if (Test-Path $cachePath) \{\uc0\u8232 \'a0\'a0\'a0 Write-Host "Cleaning CCM Cache (skipping restricted files)..."\
\'a0\
\'a0\'a0\'a0 Get-ChildItem $cachePath -Recurse -Force -ErrorAction SilentlyContinue | ForEach-Object \{\uc0\u8232 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 try \{\u8232 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0 Remove-Item $_.FullName -Force -Recurse -ErrorAction Stop\u8232 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0 Write-Host "Deleted: $($_.FullName)"\u8232 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 \}\u8232 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 catch \{\u8232 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0 Write-Host "Skipped (no permission): $($_.FullName)"\u8232 \'a0\'a0\'a0\'a0\'a0\'a0\'a0 \}\u8232 \'a0\'a0\'a0 \}\
\'a0\
\'a0\'a0\'a0 Write-Host "Cleanup completed (partial if permissions restricted)."\uc0\u8232 \} else \{\u8232 \'a0\'a0\'a0 Write-Host "CCM Cache folder not found."\u8232 \}\
\'a0\
Read-Host "Press Enter to exit"\
}