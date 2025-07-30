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
#     Orginal Image Should Be Shown

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

MFVC-T198 - Verify whether grid overlay is applied over the image
    [Documentation]    Test grid overlay functionality
    Click Grid Overlay Button
    Compare Image Viewer    grid_overlay_viewer.png

MFVC-T199 - Verify whether grid overlay is removed from the image
    [Documentation]    Test grid overlay removal functionality
    Click Grid Overlay Button
    Compare Image Viewer    image_viewer.png

