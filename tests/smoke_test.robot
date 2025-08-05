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
MFVC-T143 - Verify the .tiff images are getting opened in the VC security application
    [Documentation]    Open a .tiff image and verify it opens correctly
    Open Image Button
    Type File Name    purse.tiff
    Compare Image Viewer    image_viewer.png
 
MFVC-T45 - Verify the rectangle Annotation can be added on the image
    [Documentation]    Test rectangle annotation functionality
    Draw Annotation    rectangle
    Compare Image Viewer    rectangle_annotation.png

MFVC-T114 - Verify the Rectangle annotation can be deleted
    [Documentation]    Test rectangle annotation deletion functionality
    Delete Annotation
    Compare Image Viewer    image_viewer.png

MFVC-T184 - Verify the Text cursor can be added on the image
    [Documentation]    Test text cursor functionality
    Open Image Button
    Type File Name    purse.tiff
    Draw Annotation    text
    Compare Image Viewer    text_annotation.png

MFVC-T185 - Verify the Text cursor can be deleted from the image
    [Documentation]    Test text cursor deletion functionality
    Delete Annotation
    Compare Image Viewer    image_viewer.png

MFVC-T186 - Verify the Line Profile Measurement annotation can be added on the image
    [Documentation]    Test line profile measurement annotation functionality
    Draw Annotation    line profile measurement
    Compare Image Viewer    line_profile_measurement.png

MFVC-T187 - Verify the Line Profile Measurement annotation can be deleted from the image
    [Documentation]    Test line profile measurement annotation deletion functionality
    Delete Annotation
    Compare Image Viewer    image_viewer.png

MFVC-T188 - Verify the Ruler annotation can be added on the image
    [Documentation]    Test ruler annotation functionality
    Draw Annotation    ruler
    Compare Image Viewer    ruler_annotation.png

MFVC-T189 - Verify the Ruler annotation can be deleted from the image
    [Documentation]    Test ruler annotation deletion functionality
    Delete Annotation
    Compare Image Viewer    image_viewer.png

MFVC-T190 - Verify the Arrow annotation can be added on the image
    [Documentation]    Test arrow annotation functionality
    Draw Annotation    arrow
    Compare Image Viewer    arrow_annotation.png

MFVC-T191 - Verify the Arrow annotation can be deleted from the image
    [Documentation]    Test arrow annotation deletion functionality
    Delete Annotation
    Compare Image Viewer    image_viewer.png

MFVC-T192 - Verify the Polygon annotation can be added on the image
    [Documentation]    Test polygon annotation functionality
    Draw Annotation    polygon
    Compare Image Viewer    polygon_annotation.png

MFVC-T193 - Verify the Polygon annotation can be deleted from the image
    [Documentation]    Test polygon annotation deletion functionality
    Delete Annotation
    Compare Image Viewer    image_viewer.png

MFVC-T194 - Verify the Ellipse annotation can be added on the image
    [Documentation]    Test ellipse annotation functionality
    Draw Annotation    ellipse
    Compare Image Viewer    ellipse_annotation.png

MFVC-T195 - Verify the Ellipse annotation can be deleted from the image
    [Documentation]    Test ellipse annotation deletion functionality
    Delete Annotation
    Compare Image Viewer    image_viewer.png

MFVC-T196 - Verify the Angle annotation can be added on the image
    [Documentation]    Test angle annotation functionality
    Draw Annotation    angle
    Compare Image Viewer    angle_annotation.png

MFVC-T197 - Verify the Angle annotation can be deleted from the image
    [Documentation]    Test angle annotation deletion functionality
    Delete Annotation
    Compare Image Viewer    image_viewer.png

MFVC-T198 - Verify whether grid overlay is applied over the image
    [Documentation]    Test grid overlay functionality
    Click Grid Overlay Button
    Compare Image Viewer    grid_overlay_viewer.png

MFVC-T199 - Verify whether grid overlay is removed from the image
    [Documentation]    Test grid overlay removal functionality
    Click Grid Overlay Button
    Compare Image Viewer    image_viewer.png

MFVC-T200 - Verify the Invert is applied over the image in image viewer
    [Documentation]    Test invert functionality
    Click on Invert Image Button
    Compare Image Viewer    invert_image_viewer1.png

MFVC-T201 - Verify the Invert is removed from the image in image viewer
    [Documentation]    Test invert removal functionality
    Click on Invert Image Button
    Compare Image Viewer    image_viewer.png

MFVC-T202 - Verify the Zoom 1:1 is applied over the image in image viewer
    [Documentation]    Test zoom 1:1 functionality
    Apply Zoom    1:1    1
    Compare Image Viewer    zoom_1_1_viewer.png

MFVC-T203 - Verify the Zoom 1:1 is removed from the image in image viewer
    [Documentation]    Test zoom 1:1 removal functionality
    Apply Zoom    Fit    1
    Compare Image Viewer    image_viewer.png

MFVC-T203_2 - Verify the Zoom Fit is pplied over the image in image viewer
    [Documentation]    Test zoom fit functionality
    Apply Zoom    Fit    1
    Compare Image Viewer    image_viewer.png

MFVC-T203_3 - Verify the Zoom Fit is removed from the image in image viewer
    [Documentation]    Test zoom fit functionality
    Apply Zoom    Fit    1
    Compare Image Viewer    image_viewer.png

MFVC-T204 - Verify the Zoom- is applied over the image in image viewer(not working)
    [Documentation]    Test zoom- functionality
    Click on Zoom- Button    3
    Run Keyword And Continue On Failure    Compare Image Viewer    zoom_minus_viewer.png
    Click on Zoom Fit Button
    
MFVC-T205 - Verify the Zoom+ is applied over the image in image viewer(not working)
    [Documentation]    Test zoom+ functionality
    Click on Zoom+ Button    3
    Run Keyword And Continue On Failure    Compare Image Viewer    zoom_plus_viewer.png
    Click on Zoom Fit Button 

MFVC-T206 - Verify the colormap1 is applied over the image in image viewer
    [Documentation]    Test colormap functionality
    Click on Colormap Button    1
    Compare Image Viewer    colormap_viewer1.png

MFVC-T207 - Verify the colormap1 is applied over the image in image viewer
    [Documentation]    Test colormap functionality
    Click on Colormap Button    2
    Compare Image Viewer    colormap_viewer2.png

MFVC-T208 - Verify the colormap1 is applied over the image in image viewer
    [Documentation]    Test colormap functionality
    Click on Colormap Button    3
    Compare Image Viewer    colormap_viewer3.png

MFVC-T209 - Verify the colormap1 is applied over the image in image viewer
    [Documentation]    Test colormap functionality
    Click on Colormap Button    4
    Compare Image Viewer    colormap_viewer4.png

MFVC-T210 - Verify the colormap1 is applied over the image in image viewer
    [Documentation]    Test colormap functionality
    Click on Colormap Button    5
    Compare Image Viewer    colormap_viewer5.png

MFVC-T211 - Verify the Thumbnail Nvigation window is opening
    [Documentation]    Test thumbnail navigation window functionality
    Open/Close Thumbnail Navigation Window
    Compare Image Viewer    thumbnail_navigation_viewer.png

MFVC-T212 - Verify the Thumbnail Navigation window is closing
    [Documentation]    Test thumbnail navigation window functionality
    Open/Close Thumbnail Navigation Window
    Compare Image Viewer    image_viewer.png

MFVC-T213 - Verify the Rotate 90Degrees Clockwise button is working (not working)
    [Documentation]    Test rotate 90 degrees counter clockwise functionality
    Rotate Image    90 Degrees Counterclockwise
    Run Keyword And Continue On Failure    Compare Image Viewer    rotate_90_counterclockwise_viewer.png
    Rotate Image    90 Degrees Clockwise

MFVC-T214 - Verify the Rotate 90Degrees Clockwise button is working (not working)
    [Documentation]    Test rotate 90 degrees clockwise functionality
    Rotate Image    90 Degrees Clockwise
    Run Keyword And Continue On Failure    Compare Image Viewer    rotate_90_clockwise_viewer.png
    Rotate Image    90 Degrees Counterclockwise

MFVC-T239 - Verify the Rotate 180Degrees Clockwise button is working (not working)
    [Documentation]    Test rotate 180 degrees functionality
    Rotate Image    180 Degrees
    Run Keyword And Continue On Failure    Compare Image Viewer    rotated_image.png
    Rotate Image    180 Degrees

MFVC-T216 - Verify the Rotate Mirror Horizontal button is working (not working)
    [Documentation]    Test rotate mirror horizontal functionality
    Rotate Image    Mirror Horizontal
    Run Keyword And Continue On Failure    Compare Image Viewer    rotate_mirror_horizontal_viewer.png
    Rotate Image    Mirror Horizontal

MFVC-T217 - Verify the Rotate Mirror Vertical button is working (not working)
    [Documentation]    Test rotate mirror vertical functionality
    Rotate Image    Mirror Vertical
    Run Keyword And Continue On Failure    Compare Image Viewer    rotate_mirror_vertical_viewer.png
    Rotate Image    Mirror Vertical

MFVC-T183 - Verify whether able to undo the applied filter over the image
    [Documentation]    Test undo functionality for applied filter
    Apply Filter    Sharpening
    Undo Last Action
    Compare Image Viewer    image_viewer.png

MFVC-T93 - Verify the Gamma Filter is applied over the image on dragging the Gamma slider
    [Documentation]    Test gamma filter functionality
    Open Image Button
    Type File Name    purse.tiff
    Apply Filter    Gamma
    Compare Image Viewer    gamma_filtered_image.png

MFVC-T94 - Verify the Median Filter is applied over the image on dragging the Median slider
    [Documentation]    Test median filter functionality
    Open Image Button
    Type File Name    purse.tiff
    Apply Filter    Median
    Compare Image Viewer    median_filtered_image.png

MFVC-T95 - Verify the Noisereduction Filter is applied over the image on dragging the Noisereduction slider
    [Documentation]    Test noisereduction filter functionality
    Open Image Button
    Type File Name    purse.tiff
    Apply Filter    Noisereduction
    Compare Image Viewer    noisereduction_filtered_image.png

MFVC-T96 - Verify the Contrast Filter is applied over the image on dragging the Contrast slider
    [Documentation]    Test contrast filter functionality
    Open Image Button
    Type File Name    purse.tiff
    Apply Filter    Contrast
    Compare Image Viewer    contrast_filtered_image.png

MFVC-T92 - Verify the Sharpening enhancement is applied over the image on dragging the Sharpening slider
    [Documentation]    Test sharpening enhancement functionality
    Open Image Button
    Type File Name    purse.tiff
    Apply Filter    Sharpening
    Compare Image Viewer    sharpened_image.png

MFVC-T97 Verify the Emboss Filter is applied over the image on dragging the Emboss slider
    [Documentation]    Test emboss filter functionality
    Close VC Security Application
    Open VCSecurity Application
    Open Image Button
    Type File Name    purse.tiff
    Apply Filter    Emboss
    Compare Image Viewer    emboss_filtered_image.png

MFVC-T98 - Verify the window level is applied over the image in image viewer
    [Documentation]    Test window level functionality
    Open Image Button
    Type File Name    purse.tiff
    Apply Window Level    1
    Run Keyword And Continue On Failure    Compare Image Viewer    window_level_viewer.png
    Open Image Button
    Type File Name    purse.tiff

MFVC-T99 - Verify the Histogram window can be opened.
    [Documentation]    Test histogram window functionality
    Open/Close Histogram Window
    Compare Image Viewer    histogram_viewer.png

MFVC-T100 - Verify the Histogram window can be closed.
    [Documentation]    Test histogram window close functionality
    Open/Close Histogram Window
    Compare Image Viewer    image_viewer.png

MFVC-T101 - Verify the Place Enhancement ROI is applied over the image in image viewer
    [Documentation]    Test place enhancement ROI functionality
    Place_Enhancement_ROI    Sharpening
    Run Keyword And Continue On Failure    Compare Image Viewer    roi_sharpening_viewer.png

MFVC-T102 - Verify the Place Enhancement ROI is removed from the image in image viewer
    [Documentation]    Test place enhancement ROI removal functionality
    Delete Annotation
    Run Keyword And Continue On Failure    Compare Image Viewer    image_viewer.png

MFVC-T103 - Verify whether auto window level is applied over the image in image viewer
    [Documentation]    Test auto window level functionality
    Apply Window Level    1
    Apply Auto Window Level
    Run Keyword And Continue On Failure    Compare Image Viewer    image_viewer.png

