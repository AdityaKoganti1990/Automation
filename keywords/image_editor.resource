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

Draw Annotation
    [Arguments]    ${annotation type}
    [Documentation]    Draw an annotation on the opened image
    Sleep    1
    Run Keyword If    '${annotation type}' == 'rectangle'    Draw Rectangle Annotation
    ...    ELSE IF    '${annotation type}' == 'text'    Draw Text Annotation
    ...    ELSE IF    '${annotation type}' == 'line profile measurement'    Draw Line Profile Measurement Annotation
    ...    ELSE IF    '${annotation type}' == 'ruler'    Draw Ruler Annotation
    ...    ELSE IF    '${annotation type}' == 'arrow'    Draw Arrow Annotation
    ...    ELSE IF    '${annotation type}' == 'polygon'    Draw Polygon Annotation
    ...    ELSE IF    '${annotation type}' == 'ellipse'    Draw Ellipse Annotation
    ...    ELSE IF    '${annotation type}' == 'angle'    Draw Angle Annotation

Draw Rectangle Annotation
    [Documentation]    Draw a rectangle annotation on the opened image
    SikuliLibrary.Click    ${locators}rectangle_annotation_button.png
    SikuliLibrary.Drag And Drop    ${locators}src.png    ${locators}tar.png 

Delete Annotation
    [Documentation]    Delete the rectangle annotation
    SikuliLibrary.Click    ${locators}delete_annotation.png

Rotate 180° Image
    [Documentation]    Rotate the image in the viewer
    SikuliLibrary.Click    ${locators}rotate_button.png
    SikuliLibrary.Click    ${locators}rotate_180_button.png

Open Image Enhancement
    [Documentation]    Open the image enhancement dialog
    SikuliLibrary.Click    ${locators}enhancement_button.png
    
Undo Last Action
    [Documentation]    Undo the last action performed on the image
    SikuliLibrary.Click    ${locators}undo_button.png
    Sleep    1

Draw Text Annotation
    [Documentation]    Draw a text annotation on the image
    SikuliLibrary.Click    ${locators}text_annotation_button.png
    SikuliLibrary.Drag And Drop    ${locators}src.png    ${locators}tar.png
    
Draw Line Profile Measurement Annotation
    [Documentation]    Draw a line profile measurement annotation on the image
    SikuliLibrary.Click    ${locators}lineprofilermeasurement_button.png
    SikuliLibrary.Drag And Drop    ${locators}src.png    ${locators}tar.png

Draw Ruler Annotation
    [Documentation]    Draw a ruler annotation on the image
    SikuliLibrary.Click    ${locators}ruler_button.png
    SikuliLibrary.Drag And Drop    ${locators}src.png    ${locators}tar.png
    sleep    5
    Mouse Move    ${locators}mouse_move.png
    sleep    5

Draw Arrow Annotation
    [Documentation]    Draw an arrow annotation on the image
    SikuliLibrary.Click    ${locators}arrow_annotation_button.png
    SikuliLibrary.Drag And Drop    ${locators}src.png    ${locators}tar.png
    
Draw Polygon Annotation
    [Documentation]    Draw a polygon annotation on the image
    SikuliLibrary.Click    ${locators}polygon_annotation_button.png
    SikuliLibrary.Click    ${locators}polysrc1.png
    SikuliLibrary.Click    ${locators}polysrc2.png
    SikuliLibrary.Click    ${locators}polysrc3.png
    SikuliLibrary.Double Click    ${locators}polysrc4.png
    sleep    1

Draw Ellipse Annotation
    [Documentation]    Draw an ellipse annotation on the image
    SikuliLibrary.Click    ${locators}ellipse_annotation_button.png
    SikuliLibrary.Drag And Drop    ${locators}src.png    ${locators}tar.png

Draw Angle Annotation
    [Documentation]    Draw an angle annotation on the image
    SikuliLibrary.Click    ${locators}angle_annotation_button.png
    SikuliLibrary.Click    ${locators}anglesrc1.png
    SikuliLibrary.Click    ${locators}anglesrc2.png
    SikuliLibrary.Click    ${locators}anglesrc3.png
    Sleep    1
    
Click Grid Overlay Button
    [Documentation]    Click the grid overlay button to apply grid overlay on the image
    SikuliLibrary.Click    ${locators}grid_overlay_button.png

Compare Image Viewer
    [Arguments]    ${file_name}
    [Documentation]    Compare the image viewer with the expected image
    Sleep    1
    Screen Should Contain    ${locators}${file_name}

Click on Invert Image Button
    [Documentation]    Click the Invert Image button in the image viewer
    SikuliLibrary.Click    ${locators}invert_image_button.png

Apply Zoom
    [Arguments]    ${zoom_Type}    ${zoom_level}
    [Documentation]    Apply zoom to the image in the viewer
    SikuliLibrary.Click    ${locators}zoom_button.png
    Sleep    1
    Run Keyword If    '${zoom_Type}' == '1:1'
    ...    SikuliLibrary.Click    ${locators}zoom_1_1_button.png
    ...  ELSE IF    '${zoom_Type}' == 'Fit'
    ...    SikuliLibrary.Click    ${locators}zoom_fit_button.png
    ...  ELSE IF    '${zoom_Type}' == 'Zoom-'
    ...    Repeat Keyword    ${zoom_level}    SikuliLibrary.Click    ${locators}zoom_minus_button.png
    ...  ELSE IF    '${zoom_Type}' == 'Zoom+'
    ...    Repeat Keyword    ${zoom_level}    SikuliLibrary.Click    ${locators}zoom_plus_button.png
    SikuliLibrary.Click    ${locators}move_the_image.png

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
    Sleep    1
    IF    ${zoomcount} > 0
        FOR    ${i}    IN RANGE    ${zoomcount}
            SikuliLibrary.Click    ${locators}zoom_minus_button.png
    END
    END
    Sleep    1
    SikuliLibrary.Click    ${locators}move_the_image.png

Click on Zoom+ Button
    [Arguments]    ${zoomcount}
    [Documentation]    Click the Zoom+ button in the image viewer
    SikuliLibrary.Click    ${locators}zoom_button.png
    Sleep    1
    IF    ${zoomcount} > 0
        FOR    ${i}    IN RANGE    ${zoomcount}
            SikuliLibrary.Click    ${locators}zoom_plus_button.png
    END
    END
    Sleep    1
    SikuliLibrary.Click    ${locators}move_the_image.png

Click on Colormap Button
    [Arguments]    ${colormap}
    [Documentation]    Click the Colormap button in the image viewer
    SikuliLibrary.Click    ${locators}colormap_button.png
    Run Keyword If    '${colormap}' == '1'    SikuliLibrary.Click    ${locators}colormap1.png
    ...    ELSE IF    '${colormap}' == '2'    SikuliLibrary.Click    ${locators}colormap2.png
    ...    ELSE IF    '${colormap}' == '3'    SikuliLibrary.Click    ${locators}colormap3.png
    ...    ELSE IF    '${colormap}' == '4'    SikuliLibrary.Click    ${locators}colormap4.png
    ...    ELSE IF    '${colormap}' == '5'    SikuliLibrary.Click    ${locators}colormap5.png
    SikuliLibrary.Click    ${locators}move_the_image.png
   
Open/Close Thumbnail Navigation Window
    [Documentation]    Open or close the thumbnail navigation window
    SikuliLibrary.Click    ${locators}thumbnail_navigation_button.png

Rotate Image
    [Arguments]    ${degree}
    [Documentation]    Rotate the image
    SikuliLibrary.Click    ${locators}rotate_button.png
    Run Keyword If    '${degree}' == '90 Degrees Clockwise'         SikuliLibrary.Click    ${locators}rotate_90_clockwise_button.png
    ...    ELSE IF    '${degree}' == '90 Degrees Counterclockwise'  SikuliLibrary.Click    ${locators}rotate_90_counterclockwise_button.png
    ...    ELSE IF    '${degree}' == '180 Degrees'                  SikuliLibrary.Click    ${locators}rotate_180_button.png
    ...    ELSE IF    '${degree}' == 'Mirror Horizontal'            SikuliLibrary.Click    ${locators}mirror_horizontal_button.png
    ...    ELSE IF    '${degree}' == 'Mirror Vertical'              SikuliLibrary.Click    ${locators}mirror_vertical_button.png
    Sleep    3
    SikuliLibrary.Click    ${locators}move_the_image.png

Apply Filter
    [Arguments]    ${filter_type}
    [Documentation]    Apply a filter to the image
    SikuliLibrary.Click    ${locators}enhancement_button.png
    Sleep    1
    Run Keyword If    '${filter_type}' == 'Sharpening'    Run Keywords    SikuliLibrary.Click    ${locators}sharpening_slider.png    AND    SikuliLibrary.Drag And Drop    ${locators}sharpening_slider.png    ${locators}sharpening_target.png
    ...    ELSE IF    '${filter_type}' == 'Gamma'         Run Keywords    SikuliLibrary.Click    ${locators}gamma_slider.png    AND    SikuliLibrary.Drag And Drop    ${locators}gamma_slider.png    ${locators}gamma_target.png
    ...    ELSE IF    '${filter_type}' == 'Median'    Run Keywords    SikuliLibrary.Click    ${locators}median_slider.png    AND    SikuliLibrary.Drag And Drop    ${locators}median_slider.png    ${locators}median_target.png
    ...    ELSE IF    '${filter_type}' == 'Noisereduction'     Run Keywords    SikuliLibrary.Click    ${locators}noisereduction_slider.png    AND    SikuliLibrary.Drag And Drop    ${locators}noisereduction_slider.png    ${locators}noisereduction_target.png
    ...    ELSE IF    '${filter_type}' == 'Contrast'         Run Keywords    SikuliLibrary.Click    ${locators}contrast_slider.png    AND    SikuliLibrary.Drag And Drop    ${locators}contrast_slider.png    ${locators}contrast_target.png
    ...    ELSE IF    '${filter_type}' == 'Emboss'         Run Keywords    SikuliLibrary.Drag And Drop    ${locators}mouse_wheel_down_1.png    ${locators}mouse_wheel_down_2.png    AND    SikuliLibrary.Click    ${locators}emboss_slider.png    AND    SikuliLibrary.Drag And Drop    ${locators}emboss_slider.png    ${locators}emboss_target.png
    Sleep    1
    SikuliLibrary.Click    ${locators}close_enhancement.png