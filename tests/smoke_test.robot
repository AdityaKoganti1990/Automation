*** Settings ***
Documentation     Sample test suite for VC Security application
Resource          ../resources/common.resource
Resource          ../keywords/image_editor.resource


# Suite Setup    Open VCSecurity Application
# Suite Teardown    Close VC Security Application

*** Variables ***
${locators}       ${CURDIR}/../locators/
${PID}=    Launch Application    ${APP_PATH}

*** Keywords ***
Open VCSecurity Application
    [Documentation]    Open the VC Security application and return its process ID
    ${PID}=    Launch Application    ${APP_PATH}
    Set Suite Variable    ${PID}

Close VC Security Application
    Close App   ${PID}

*** Test Cases ***
# MFVC-T143 - Verify the .tiff images are getting opened in the VC security application
#     [Documentation]    Open a .tiff image and verify it opens correctly
#     Open Image Button
#     Type File Name    purse.tiff
#     Image Should Be Opened
 
# MFVC-T45 - Verify the rectangle Annotation can be added on the image
#     [Documentation]    Test rectangle annotation functionality
#     Draw Rectangle Annotation
#     Rectangle Annotation Should Be Added
 
# MFVC-T114 - Verify the Rectangle annotation can be deleted
#     [Documentation]    Test rectangle annotation deletion functionality
#     Delete Annotation
#     Image Should Not Contain Annotation
 
# MFVC-T239 - Verify Image rotates 180 degrees clockwise when the "Rotate 180°" button is clicked.
#     [Documentation]    Verify that the image rotates correctly with annotations
#     Rotate 180° Image
#     Image Should Be Rotated

# MFVC-T92 - Verify the Sharpening enhancement is applied over the image on dragging the Sharpening slider
#     [Documentation]    Test sharpening enhancement functionality
#     Open Image Button
#     Type File Name    purse.tiff
#     Image Should Be Opened
#     Open Image Enhancement
#     Apply Sharpening Enhancement
#     Close Image Enhancement
#     Sharpening Enhancement Should Be Applied

# MFVC-T183 - Verify whether able to undo the applied filter over the image
#     [Documentation]    Test undo functionality for applied filter
#     Undo Last Action
#     Original Image Should Be Shown    

# MFVC-T184 - Verify the Text cursor can be added on the image
#     [Documentation]    Test text cursor functionality
#     Open Image Button
#     Type File Name    purse.tiff
#     Draw Text Annotation
#     Text Annotation Should Be Added

# MFVC-T185 - Verify the Text cursor can be deleted from the image
#     [Documentation]    Test text cursor deletion functionality
#     Delete Annotation
#     Image Should Not Contain Annotation

# MFVC-T186 - Verify the Line Profile Measurement annotation can be added on the image
#     [Documentation]    Test line profile measurement annotation functionality
#     Draw Line Profile Measurement Annotation
#     Line Profile Measurement Annotation Should Be Added

# MFVC-T187 - Verify the Line Profile Measurement annotation can be deleted from the image
#     [Documentation]    Test line profile measurement annotation deletion functionality
#     Delete Annotation
#     Image Should Not Contain Annotation

# MFVC-T188 - Verify the Ruler annotation can be added on the image
#     [Documentation]    Test ruler annotation functionality
#     Draw Ruler Annotation
#     Ruler annotation Should Be Added

# MFVC-T189 - Verify the Ruler annotation can be deleted from the image
#     [Documentation]    Test ruler annotation deletion functionality
#     Delete Annotation
#     Image Should Not Contain Annotation

# MFVC-T190 - Verify the Arrow annotation can be added on the image
#     [Documentation]    Test arrow annotation functionality
#     Draw Arrow Annotation
#     Arrow Annotation Should Be Added

# MFVC-T191 - Verify the Arrow annotation can be deleted from the image
#     [Documentation]    Test arrow annotation deletion functionality
#     Delete Annotation
#     Image Should Not Contain Annotation

# MFVC-T192 - Verify the Polygon annotation can be added on the image
#     [Documentation]    Test polygon annotation functionality
#     Draw Polygon Annotation
#     Polygon Annotation Should Be Added

# MFVC-T193 - Verify the Polygon annotation can be deleted from the image
#     [Documentation]    Test polygon annotation deletion functionality
#     Delete Annotation
#     Image Should Not Contain Annotation

# MFVC-T194 - Verify the Ellipse annotation can be added on the image
#     [Documentation]    Test ellipse annotation functionality
#     Draw Ellipse Annotation
#     Ellipse Annotation Should Be Added

# MFVC-T195 - Verify the Ellipse annotation can be deleted from the image
#     [Documentation]    Test ellipse annotation deletion functionality
#     Delete Annotation
#     Image Should Not Contain Annotation

# MFVC-T196 - Verify the Angle annotation can be added on the image
#     [Documentation]    Test angle annotation functionality
#     Draw Angle Annotation
#     Angle Annotation Should Be Added

# MFVC-T197 - Verify the Angle annotation can be deleted from the image
#     [Documentation]    Test angle annotation deletion functionality
#     Delete Annotation
#     Image Should Not Contain Annotation

# MFVC-T198 - Verify whether grid overlay is applied over the image
#     [Documentation]    Test grid overlay functionality
#     Click Grid Overlay Button
#     Compare Image Viewer    grid_overlay_viewer.png

# MFVC-T199 - Verify whether grid overlay is removed from the image
#     [Documentation]    Test grid overlay removal functionality
#     Click Grid Overlay Button
#     Compare Image Viewer    image_viewer.png

# MFVC-T200 - Verify the Invert is applied over the image in image viewer
#     [Documentation]    Test invert functionality
#     Click on Invert Image Button
#     Compare Image Viewer    invert_image_viewer1.png

# MFVC-T201 - Verify the Invert is removed from the image in image viewer
#     [Documentation]    Test invert removal functionality
#     Click on Invert Image Button
#     Compare Image Viewer    image_viewer.png

# MFVC-T202 - Verify the Zoom 1:1 is applied over the image in image viewer
#     [Documentation]    Test zoom 1:1 functionality
#     Click on Zoom 1:1 Button
#     Compare Image Viewer    zoom_1_1_viewer.png

# MFVC-T203 - Verify the Zoom 1:1 is removed from the image in image viewer
#     [Documentation]    Test zoom 1:1 removal functionality
#     Click on Zoom Fit Button
#     Compare Image Viewer    image_viewer.png

# MFVC-T204 - Verify the Zoom- is applied over the image in image viewer(not working)
#     [Documentation]    Test zoom- functionality
#     Click on Zoom- Button    3
#     Compare Image Viewer    zoom_minus_viewer.png

# MFVC-T205 - Verify the Zoom+ is applied over the image in image viewer(not working)
#     [Documentation]    Test zoom+ functionality
#     Click on Zoom+ Button    3
#     Compare Image Viewer    zoom_plus_viewer.png 

# MFVC-T206 - Verify the colormap1 is applied over the image in image viewer(not working)
#     [Documentation]    Test colormap functionality
#     Click on Colormap Button    1
#     Compare Image Viewer    colormap_viewer1.png

# MFVC-T207 - Verify the colormap1 is applied over the image in image viewer(not working)
#     [Documentation]    Test colormap functionality
#     Click on Colormap Button    2
#     Compare Image Viewer    colormap_viewer2.png

# MFVC-T208 - Verify the colormap1 is applied over the image in image viewer(not working)
#     [Documentation]    Test colormap functionality
#     Click on Colormap Button    3
#     Compare Image Viewer    colormap_viewer3.png

# MFVC-T209 - Verify the colormap1 is applied over the image in image viewer(not working)
#     [Documentation]    Test colormap functionality
#     Click on Colormap Button    4
#     Compare Image Viewer    colormap_viewer4.png

# MFVC-T210 - Verify the colormap1 is applied over the image in image viewer(not working)
#     [Documentation]    Test colormap functionality
#     Click on Colormap Button    5
#     Compare Image Viewer    colormap_viewer5.png

# MFVC-T211 - Verify the Thumbnail Nvigation window is opening
#     [Documentation]    Test thumbnail navigation window functionality
#     Open/Close Thumbnail Navigation Window
#     Compare Image Viewer    thumbnail_navigation_viewer.png

# MFVC-T212 - Verify the Thumbnail Navigation window is closing
#     [Documentation]    Test thumbnail navigation window functionality
#     Open/Close Thumbnail Navigation Window
#     Compare Image Viewer    image_viewer.png

# MFVC-T213 - Verify the Rotate 90Degrees Clockwise button is working (not working)
#     [Documentation]    Test rotate 90 degrees counter clockwise functionality
#     Rotate Image    90 Degrees Counterclockwise
#     Compare Image Viewer    rotate_90_counterclockwise_viewer.png
#     Rotate Image    90 Degrees Clockwise

# MFVC-T214 - Verify the Rotate 90Degrees Clockwise button is working (not working)
#     [Documentation]    Test rotate 90 degrees clockwise functionality
#     Rotate Image    90 Degrees Clockwise
#     Compare Image Viewer    rotate_90_clockwise_viewer.png
#     Rotate Image    90 Degrees Counterclockwise

# MFVC-T215 - Verify the Rotate 180Degrees Clockwise button is working (not working)
#     [Documentation]    Test rotate 180 degrees functionality
#     Rotate Image    180 Degrees
#     Compare Image Viewer    rotated_image.png
#     Rotate Image    180 Degrees

# MFVC-T216 - Verify the Rotate Mirror Horizontal button is working (not working)
#     [Documentation]    Test rotate mirror horizontal functionality
#     Rotate Image    Mirror Horizontal
#     Compare Image Viewer    rotate_mirror_horizontal_viewer.png
#     Rotate Image    Mirror Horizontal

# MFVC-T217 - Verify the Rotate Mirror Vertical button is working (not working)
#     [Documentation]    Test rotate mirror vertical functionality
#     Rotate Image    Mirror Vertical
#     Compare Image Viewer    rotate_mirror_vertical_viewer.png
#     Rotate Image    Mirror Vertical