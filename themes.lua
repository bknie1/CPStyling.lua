-- MIT License
--
-- CPStyling.lua https://github.com/Nats-ji/CPStyling.lua
--
-- This file is a part of CPStyling.lua
--
-- Copyright (c) 2021 Mingming Cui
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

local colors = {}
local currentFilePath = "CPStyling/"
colors = require(currentFilePath.."colors")

local themes = {
  cyberpunk = {
    Text                                        =           { 1.00, 0.38, 0.33, 1.00 },
    TextDisabled                                =           { 0.48, 0.39, 0.40, 1.00 },
    WindowBg                                    =           { 0.06, 0.04, 0.06, 0.90 },
    ChildBg                                     =           { 0.00, 0.00, 0.00, 0.00 },
    PopupBg                                     =           { 0.06, 0.04, 0.06, 0.90 },
    Border                                      =           { 0.30, 0.07, 0.08, 1.00 },
    BorderShadow                                =           { 0.00, 0.00, 0.00, 0.00 },
    FrameBg                                     =           { 0.50, 0.13, 0.16, 0.50 },
    FrameBgHovered                              =           { 0.32, 0.11, 0.12, 0.50 },
    FrameBgActive                               =           { 0.50, 0.13, 0.16, 0.50 },
    -- FrameBgDisabled                          =           { 0.48, 0.39, 0.40, 1.00 },
    -- FrameBgHoveredDisabled                   =           { 0.48, 0.39, 0.40, 1.00 },
    -- FrameBgActiveDisabled                    =           { 0.48, 0.39, 0.40, 1.00 },
    TitleBg                                     =           { 0.06, 0.04, 0.06, 0.90 },
    TitleBgActive                               =           { 0.06, 0.04, 0.06, 0.90 },
    TitleBgCollapsed                            =           { 0.06, 0.04, 0.06, 0.90 },
    MenuBarBg                                   =           { 0.00, 0.00, 0.00, 0.00 },
    ScrollbarBg                                 =           { 0.23, 0.07, 0.09, 1.00 },
    ScrollbarGrab                               =           { 0.95, 0.30, 0.28, 1.00 },
    ScrollbarGrabHovered                        =           { 0.95, 0.30, 0.28, 1.00 },
    ScrollbarGrabActive                         =           { 0.95, 0.30, 0.28, 1.00 },
    CheckMark                                   =           { 1.00, 0.44, 0.40, 1.00 },
    -- CheckMarkTrueDisabled                    =           { 0.34, 0.22, 0.24, 1.00 },
    -- CheckMarkFalseDisabled                   =           { 0.48, 0.39, 0.40, 1.00 },
    SliderGrab                                  =           { 0.64, 0.22, 0.21, 1.00 },
    SliderGrabActive                            =           { 0.64, 0.22, 0.21, 1.00 },
    Button                                      =           { 0.57, 0.17, 0.16, 1.00 },
    ButtonHovered                               =           { 0.45, 0.13, 0.14, 1.00 },
    ButtonActive                                =           { 0.57, 0.17, 0.16, 1.00 },
    Header                                      =           { 0.08, 0.08, 0.15, 1.00 },
    HeaderHovered                               =           { 0.22, 0.64, 0.69, 0.30 },
    HeaderActive                                =           { 0.22, 0.64, 0.69, 0.50 },
    Separator                                   =           { 0.26, 0.09, 0.09, 1.00 },
    SeparatorHovered                            =           { 0.26, 0.09, 0.09, 1.00 },
    SeparatorActive                             =           { 0.26, 0.09, 0.09, 1.00 },
    ResizeGrip                                  =           { 0.00, 0.00, 0.00, 0.00 },
    ResizeGripHovered                           =           { 0.45, 0.13, 0.14, 1.00 },
    ResizeGripActive                            =           { 0.57, 0.17, 0.16, 1.00 },
    Tab                                         =           { 0.57, 0.17, 0.16, 1.00 },
    TabHovered                                  =           { 0.45, 0.13, 0.14, 1.00 },
    TabActive                                   =           { 0.57, 0.17, 0.16, 1.00 },
    TabUnfocused                                =           { 0.45, 0.14, 0.13, 1.00 },
    TabUnfocusedActive                          =           { 0.58, 0.18, 0.16, 1.00 },
    -- PlotLines                                =           { 0.00, 0.00, 0.00, 0.00 },
    -- PlotLinesHovered                         =           { 0.00, 0.00, 0.00, 0.00 },
    -- PlotHistogram                            =           { 0.00, 0.00, 0.00, 0.00 },
    -- PlotHistogramHovered                     =           { 0.00, 0.00, 0.00, 0.00 },
    TextSelectedBg                              =           { 0.06, 0.06, 0.12, 1.00 },
    -- DragDropTarget                           =           { 0.00, 0.00, 0.00, 0.00 },
    -- NavHighlight                             =           { 0.00, 0.00, 0.00, 0.00 },
    -- NavWindowingHighlight                    =           { 0.00, 0.00, 0.00, 0.00 },
    -- NavWindowingDimBg                        =           { 0.00, 0.00, 0.00, 0.00 },
    ModalWindowDimBg                            =           { 0.00, 0.00, 0.00, 0.40 },
    CPButton                                    =           { 0.06, 0.06, 0.12, 1.00 },
    CPButtonHovered                             =           { 0.43, 0.13, 0.13, 1.00 },
    CPButtonActive                              =           { 0.57, 0.16, 0.16, 1.00 },
    CPButtonText                                =           { 0.34, 0.95, 0.98, 1.00 },
    CPButtonBorder                              =           { 0.40, 0.08, 0.09, 1.00 },
    CPButtonBorderHovered                       =           { 0.34, 0.95, 0.98, 1.00 },
    CPToggleOn                                  =           { 0.37, 0.96, 1.00, 1.00 },
    CPToggleOnHovered                           =           { 0.29, 0.77, 0.80, 1.00 },
    CPToggleOnText                              =           { 0.00, 0.00, 0.00, 1.00 },
    CPToggleOnTextHovered                       =           { 0.00, 0.00, 0.00, 1.00 },
    CPToggleOnBorder                            =           { 0.29, 0.61, 0.58, 1.00 },
    CPToggleOnBorderHovered                     =           { 0.26, 0.66, 0.65, 1.00 },
    CPToggleOnDisabled                          =           { 0.03, 0.12, 0.12, 1.00 },
    CPToggleOnDisabledHovered                   =           { 0.05, 0.16, 0.16, 1.00 },
    CPToggleOnDisabledText                      =           { 0.08, 0.23, 0.25, 1.00 },
    CPToggleOnDisabledTextHovered               =           { 0.09, 0.29, 0.30, 1.00 },
    CPToggleOnDisabledBorder                    =           { 0.06, 0.15, 0.15, 1.00 },
    CPToggleOnDisabledBorderHovered             =           { 0.09, 0.24, 0.25, 1.00 },
    CPToggleOff                                 =           { 0.58, 0.18, 0.16, 1.00 },
    CPToggleOffHovered                          =           { 0.45, 0.14, 0.13, 1.00 },
    CPToggleOffText                             =           { 1.00, 0.44, 0.41, 1.00 },
    CPToggleOffTextHovered                      =           { 1.00, 0.36, 0.33, 1.00 },
    CPToggleOffBorder                           =           { 0.92, 0.29, 0.26, 1.00 },
    CPToggleOffBorderHovered                    =           { 0.76, 0.23, 0.21, 1.00 },
    CPToggleOffDisabled                         =           { 0.09, 0.04, 0.07, 1.00 },
    CPToggleOffDisabledHovered                  =           { 0.16, 0.06, 0.07, 1.00 },
    CPToggleOffDisabledText                     =           { 0.32, 0.09, 0.10, 1.00 },
    CPToggleOffDisabledTextHovered              =           { 0.36, 0.11, 0.11, 1.00 },
    CPToggleOffDisabledBorder                   =           { 0.19, 0.08, 0.09, 1.00 },
    CPToggleOffDisabledBorderHovered            =           { 0.30, 0.09, 0.10, 1.00 },
    CPFrameBg                                   =           { 0.06, 0.06, 0.12, 1.00 },
    CPFrameBgHovered                            =           { 0.31, 0.11, 0.11, 1.00 },
    CPFrameBgActive                             =           { 0.57, 0.19, 0.19, 1.00 },
    CPSliderGrab                                =           { 0.64, 0.21, 0.21, 1.00 },
    CPSliderGrabActive                          =           { 0.64, 0.21, 0.21, 1.00 },
    CPFrameBorder                               =           { 0.40, 0.08, 0.09, 1.00 },
    CPTextSelectedBg                            =           { 0.45, 0.14, 0.13, 1.00 },
    CPToolTip2Bg                                =           { 0.11, 0.22, 0.25, 0.60 },
    CPToolTip2Border                            =           { 0.18, 0.42, 0.46, 1.00 },
    CPToolTip2Separator                         =           { 0.24, 0.55, 0.58, 1.00 },
    CPToolTip2SideBg                            =           { 0.12, 0.24, 0.27, 1.00 },
    Hidden                                      =           { 0.00, 0.00, 0.00, 0.00 }
  },

  cyberpunkHighContrast = {
    Text                                        =           colors.basic.white,
    TextDisabled                                =           colors.basic.gray,
    WindowBg                                    =           colors.basic.black,
    ChildBg                                     =           colors.basic.gray90,
    PopupBg                                     =           colors.basic.gray80,
    Border                                      =           colors.advanced.darkred,
    BorderShadow                                =           colors.advanced.smokyblack,
    FrameBg                                     =           colors.basic.black,
    FrameBgHovered                              =           colors.basic.gray90,
    FrameBgActive                               =           colors.basic.gray90,
    -- FrameBgDisabled                          =           { 0.48, 0.39, 0.40, 1.00 },
    -- FrameBgHoveredDisabled                   =           { 0.48, 0.39, 0.40, 1.00 },
    -- FrameBgActiveDisabled                    =           { 0.48, 0.39, 0.40, 1.00 },
    TitleBg                                     =           colors.advanced.sepiablack,
    TitleBgActive                               =           colors.advanced.cannonblack,
    TitleBgCollapsed                            =           colors.basic.black,
    MenuBarBg                                   =           colors.basic.gray80,
    ScrollbarBg                                 =           colors.basic.red,
    ScrollbarGrab                               =           colors.basic.black,
    ScrollbarGrabHovered                        =           colors.basic.gray80,
    ScrollbarGrabActive                         =           colors.basic.gray90,
    CheckMark                                   =           colors.basic.white,
    -- CheckMarkTrueDisabled                    =           { 0.34, 0.22, 0.24, 1.00 },
    -- CheckMarkFalseDisabled                   =           { 0.48, 0.39, 0.40, 1.00 },
    SliderGrab                                  =           colors.basic.black,
    SliderGrabActive                            =           colors.basic.gray90,
    Button                                      =           colors.basic.gray80,
    ButtonHovered                               =           colors.basic.gray,
    ButtonActive                                =           colors.basic.gray70,
    Header                                      =           colors.basic.white,
    HeaderHovered                               =           colors.basic.white,
    HeaderActive                                =           colors.basic.white,
    Separator                                   =           colors.advanced.darkred,
    SeparatorHovered                            =           colors.advanced.darkred,
    SeparatorActive                             =           colors.advanced.darkred,
    ResizeGrip                                  =           colors.advanced.darkred,
    ResizeGripHovered                           =           colors.basic.red,
    ResizeGripActive                            =           colors.basic.red,
    Tab                                         =           colors.basic.gray70,
    TabHovered                                  =           colors.basic.gray50,
    TabActive                                   =           colors.basic.gray,
    TabUnfocused                                =           colors.basic.gray70,
    TabUnfocusedActive                          =           colors.basic.gray,
    -- PlotLines                                =           { 0.00, 0.00, 0.00, 0.00 },
    -- PlotLinesHovered                         =           { 0.00, 0.00, 0.00, 0.00 },
    -- PlotHistogram                            =           { 0.00, 0.00, 0.00, 0.00 },
    -- PlotHistogramHovered                     =           { 0.00, 0.00, 0.00, 0.00 },
    TextSelectedBg                              =           colors.basic.gray80,
    -- DragDropTarget                           =           { 0.00, 0.00, 0.00, 0.00 },
    -- NavHighlight                             =           { 0.00, 0.00, 0.00, 0.00 },
    -- NavWindowingHighlight                    =           { 0.00, 0.00, 0.00, 0.00 },
    -- NavWindowingDimBg                        =           { 0.00, 0.00, 0.00, 0.00 },
    ModalWindowDimBg                            =           colors.basic.gray90,
    CPButton                                    =           colors.basic.gray80,
    CPButtonHovered                             =           colors.basic.gray70,
    CPButtonActive                              =           colors.basic.gray70,
    CPButtonText                                =           colors.basic.white,
    CPButtonBorder                              =           colors.advanced.cyan,
    CPButtonBorderHovered                       =           colors.basic.cyan,
    CPToggleOn                                  =           colors.basic.gray80,
    CPToggleOnHovered                           =           colors.basic.gray70,
    CPToggleOnText                              =           colors.basic.white,
    CPToggleOnTextHovered                       =           colors.basic.white,
    CPToggleOnBorder                            =           colors.basic.green,
    CPToggleOnBorderHovered                     =           colors.basic.green,
    CPToggleOnDisabled                          =           colors.basic.gray80,
    CPToggleOnDisabledHovered                   =           colors.basic.gray80,
    CPToggleOnDisabledText                      =           colors.basic.gray20,
    CPToggleOnDisabledTextHovered               =           colors.basic.gray20,
    CPToggleOnDisabledBorder                    =           colors.basic.gray80,
    CPToggleOnDisabledBorderHovered             =           colors.basic.gray50,
    CPToggleOff                                 =           colors.basic.gray80,
    CPToggleOffHovered                          =           colors.basic.gray70,
    CPToggleOffText                             =           colors.basic.white,
    CPToggleOffTextHovered                      =           colors.basic.gray20,
    CPToggleOffBorder                           =           colors.basic.red,
    CPToggleOffBorderHovered                    =           colors.basic.red,
    CPToggleOffDisabled                         =           colors.basic.gray,
    CPToggleOffDisabledHovered                  =           colors.basic.gray,
    CPToggleOffDisabledText                     =           colors.basic.gray20,
    CPToggleOffDisabledTextHovered              =           colors.basic.gray20,
    CPToggleOffDisabledBorder                   =           colors.basic.gray,
    CPToggleOffDisabledBorderHovered            =           colors.basic.gray70,
    CPFrameBg                                   =           colors.basic.black,
    CPFrameBgHovered                            =           colors.basic.gray90,
    CPFrameBgActive                             =           colors.basic.gray80,
    CPSliderGrab                                =           colors.basic.black,
    CPSliderGrabActive                          =           colors.basic.gray90,
    CPFrameBorder                               =           colors.advanced.cyan,
    CPTextSelectedBg                            =           colors.basic.gray90,
    CPToolTip2Bg                                =           colors.basic.gray80,
    CPToolTip2Border                            =           colors.basic.red,
    CPToolTip2Separator                         =           colors.advanced.deepred,
    CPToolTip2SideBg                            =           colors.basic.red,
    Hidden                                      =           { 0.00, 0.00, 0.00, 0.00 }
  }
}

return themes