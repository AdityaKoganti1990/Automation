*** Settings ***
Documentation     Common resources for VC Security automation
Library           FlaUILibrary
Library           Process
Library          SikuliLibrary

*** Variables ***
${APP_PATH}       C:/Program Files/Scanna MSC/VCSecurity/VCSecurity.exe
${locators}       ${CURDIR}/../locators/
${test_data}    ${CURDIR}/../testdata/
${TIMEOUT}       15

*** Keywords ***
Open Image Button
    [Documentation]    Click the Open Image button in the VC Security application
    Wait Until Screen Contain    ${locators}open.png    ${TIMEOUT}
    SikuliLibrary.Click    ${locators}open.png

Type File Name
    [Arguments]    ${file_name}
    [Documentation]    Type the file name in the Open Image dialog
    Wait Until Screen Contain    ${locators}filename_field.png  ${TIMEOUT}
    SikuliLibrary.Input Text    ${locators}filename_field.png    ${test_data}${file_name}
    SikuliLibrary.Click    ${locators}open_button.png

Image Should Be Opened
    [Documentation]    Verify that the image is opened in the application
    Sleep    2
    Screen Should Contain    ${locators}image_viewer.png 

Draw Rectangle Annotation
    [Documentation]    Draw a rectangle annotation on the opened image
    SikuliLibrary.Click    ${locators}rectangle_annotation_button.png
    SikuliLibrary.Drag And Drop    ${locators}src.png    ${locators}tar.png 

Rectangle Annotation Should Be Added
    [Documentation]    Verify that the rectangle annotation is added
    Screen Should Contain    ${locators}rectangle_annotation.png

Delete Annotation
    [Documentation]    Delete the rectangle annotation
    SikuliLibrary.Click    ${locators}delete_annotation.png

Image Should Not Contain Annotation
    [Documentation]    Verify that the rectangle annotation is not present
    Image Should Be Opened

Rotate 180° Image
    [Documentation]    Rotate the image in the viewer
    SikuliLibrary.Click    ${locators}rotate_button.png
    SikuliLibrary.Click    ${locators}rotate_180_button.png

Image Should Be Rotated
    [Documentation]    Verify that the image is rotated correctly    
    Sleep    2
    Screen Should Contain    ${locators}rotated_image.png

Open Image Enhancement
    [Documentation]    Open the image enhancement dialog
    SikuliLibrary.Click    ${locators}enhancement_button.png

Apply Sharpening Enhancement
    [Documentation]    Apply sharpening enhancement to the image
    SikuliLibrary.Click    ${locators}sharpening_slider.png
    SikuliLibrary.Drag And Drop    ${locators}sharpening_slider.png    ${locators}sharpening_target.png

Close Image Enhancement
    [Documentation]    Close the sharpening enhancement dialog
    SikuliLibrary.Click    ${locators}close_enhancement.png

Sharpening Enhancement Should Be Applied
    [Documentation]    Verify that the sharpening enhancement is applied
    Sleep    2
    Screen Should Contain    ${locators}sharpened_image.png

Undo Last Action
    [Documentation]    Undo the last action performed on the image
    SikuliLibrary.Click    ${locators}undo_button.png

Original Image Should Be Shown
    [Documentation]    Verify that the original image is shown after undo
    Image Should Be Opened

Draw Text Annotation
    [Documentation]    Draw a text annotation on the image
    SikuliLibrary.Click    ${locators}text_annotation_button.png
    SikuliLibrary.Drag And Drop    ${locators}src.png    ${locators}tar.png

Text Annotation Should Be Added
    [Documentation]    Verify that the text annotation is added
    Screen Should Contain    ${locators}text_annotation.png
    
Delete Text Annotation
    [Documentation]    Delete the text annotation
    SikuliLibrary.Click    ${locators}delete_annotation.png

Draw Line Profile Measurement Annotation
    [Documentation]    Draw a line profile measurement annotation on the image
    SikuliLibrary.Click    ${locators}lineprofilermeasurement_button.png
    SikuliLibrary.Drag And Drop    ${locators}src.png    ${locators}tar.png

Line Profile Measurement Annotation Should Be Added
    [Documentation]    Verify that the line profile measurement annotation is added
    Screen Should Contain    ${locators}line_profile_measurement.png

Draw Ruler Annotation
    [Documentation]    Draw a ruler annotation on the image
    SikuliLibrary.Click    ${locators}ruler_button.png
    SikuliLibrary.Drag And Drop    ${locators}src.png    ${locators}tar.png
    sleep    5
    Mouse Move    ${locators}mouse_move.png
    sleep    5

Ruler annotation Should Be Added
    [Documentation]    Verify that the ruler annotation is added
    Screen Should Contain    ${locators}ruler_annotation.png

Draw Arrow Annotation
    [Documentation]    Draw an arrow annotation on the image
    SikuliLibrary.Click    ${locators}arrow_annotation_button.png
    SikuliLibrary.Drag And Drop    ${locators}src.png    ${locators}tar.png
    
Arrow Annotation Should Be Added
    [Documentation]    Verify that the arrow annotation is added
    Screen Should Contain    ${locators}arrow_annotation.png

Draw Polygon Annotation
    [Documentation]    Draw a polygon annotation on the image
    SikuliLibrary.Click    ${locators}polygon_annotation_button.png
    SikuliLibrary.Click    ${locators}polysrc1.png
    SikuliLibrary.Click    ${locators}polysrc2.png
    SikuliLibrary.Click    ${locators}polysrc3.png
    SikuliLibrary.Double Click    ${locators}polysrc4.png
    sleep    1

Polygon Annotation Should Be Added
    [Documentation]    Verify that the polygon annotation is added
    Screen Should Contain    ${locators}polygon_annotation.png

Draw Ellipse Annotation
    [Documentation]    Draw an ellipse annotation on the image
    SikuliLibrary.Click    ${locators}ellipse_annotation_button.png
    SikuliLibrary.Drag And Drop    ${locators}src.png    ${locators}tar.png

Ellipse Annotation Should Be Added
    [Documentation]    Verify that the ellipse annotation is added
    Screen Should Contain    ${locators}ellipse_annotation.png

Draw Angle Annotation
    [Documentation]    Draw an angle annotation on the image
    SikuliLibrary.Click    ${locators}angle_annotation_button.png
    SikuliLibrary.Click    ${locators}anglesrc1.png
    SikuliLibrary.Click    ${locators}anglesrc2.png
    SikuliLibrary.Click    ${locators}anglesrc3.png
    Sleep    1
    
Angle Annotation Should Be Added
    [Documentation]    Verify that the angle annotation is added
    Screen Should Contain    ${locators}angle_annotation.png

Click Grid Overlay Button
    [Documentation]    Click the grid overlay button to apply grid overlay on the image
    SikuliLibrary.Click    ${locators}grid_overlay_button.png

Compare Image Viewer
    [Arguments]    ${file_name}
    [Documentation]    Compare the image viewer with the expected image
    SikuliLibrary.Screen Should Contain    ${locators}${file_name}

Click on Invert Image Button
    [Documentation]    Click the Invert Image button in the image viewer
    SikuliLibrary.Click    ${locators}invert_image_button.png

Click on Zoom 1:1 Button
    [Documentation]    Click the Zoom 1:1 button in the image viewer
    SikuliLibrary.Click    ${locators}zoom_button.png
    SikuliLibrary.Click    ${locators}zoom_1_1_button.png
    SikuliLibrary.Click    ${locators}move_the_image.png

Click on Zoom Fit Button
    [Documentation]    Click the Zoom Fit button in the image viewer
    SikuliLibrary.Click    ${locators}zoom_button.png
    SikuliLibrary.Click    ${locators}zoom_fit_button.png
    SikuliLibrary.Click    ${locators}move_the_image.png

Click on Zoom- Button
    [Arguments]    ${zoomcount}
    [Documentation]    Click the Zoom- button in the image viewer
    SikuliLibrary.Click    ${locators}zoom_button.png
    IF    ${zoomcount} > 0
        FOR    ${i}    IN RANGE    ${zoomcount}
            SikuliLibrary.Click    ${locators}zoom_minus_button.png
    END
    END
    SikuliLibrary.Click    ${locators}move_the_image.png

Click on Zoom+ Button
    [Arguments]    ${zoomcount}
    [Documentation]    Click the Zoom+ button in the image viewer
    SikuliLibrary.Click    ${locators}zoom_button.png
    IF    ${zoomcount} > 0
        FOR    ${i}    IN RANGE    ${zoomcount}
            SikuliLibrary.Click    ${locators}zoom_plus_button.png
    END
    END
    SikuliLibrary.Click    ${locators}move_the_image.png

Click on Colormap Button
    [Arguments]    ${colormap}
    [Documentation]    Click the Colormap button in the image viewer
    SikuliLibrary.Click    ${locators}colormap_button.png
    IF    ${colormap} == "1"
        SikuliLibrary.Click    ${locators}colormap1.png
    ELSE IF    ${colormap} == "2"
        SikuliLibrary.Click    ${locators}colormap2.png
    ELSE IF    ${colormap} == "3"
        SikuliLibrary.Click    ${locators}colormap3.png
    ELSE IF    ${colormap} == "4"
        SikuliLibrary.Click    ${locators}colormap4.png
    ELSE IF    ${colormap} == "5"
        SikuliLibrary.Click    ${locators}colormap5.png
    END
   
Open/Close Thumbnail Navigation Window
    [Documentation]    Open or close the thumbnail navigation window
    SikuliLibrary.Click    ${locators}thumbnail_navigation_button.png

Rotate Image
    [Arguments]    ${degree}
    [Documentation]    Rotate the image
    SikuliLibrary.Click    ${locators}rotate_button.png
    Sleep    1
    IF    ${degree} == "90 Degrees Clockwise"
        SikuliLibrary.Click    ${locators}rotate_90_clockwise_button.png
    ELSE IF    ${degree} == "90 Degrees Counterclockwise"
        SikuliLibrary.Click    ${locators}rotate_90_counterclockwise_button.png
    ELSE IF    ${degree} == "180 Degrees"
        SikuliLibrary.Click    ${locators}rotate_180_button.png
    ELSE IF    ${degree} == "Mirror Horizontal"
        SikuliLibrary.Click    ${locators}mirror_horizontal_button.png
    ELSE IF    ${degree} == "Mirror Vertical"
        SikuliLibrary.Click    ${locators}mirror_vertical_button.png    
        
    END
    Sleep    1
    SikuliLibrary.Click    ${locators}move_the_image.png

