# В корне проекта
Get-ChildItem -Recurse -Include *.cpp,*.h | ForEach-Object {
    (Get-Content $_.FullName)	-replace 'cocos2d::log', 'AXLOG' `
								-replace 'ax::log', 'AXLOG' `
								-replace 'Ref\*', 'Object*' `
								-replace 'cocos\\cocos2d.h', 'axmol.h' `
								-replace 'cocos\/cocos2d.h', 'axmol.h' `
								-replace 'cocos2d.h', 'axmol.h' `
								-replace 'USING_NS_CC', 'USING_NS_AX' `
								-replace 'cocos2d::', 'ax::' `
								-replace 'Director::isDisplayStats\(', 'Director::isStatsDisplay(' `
								-replace 'CC_CALLBACK', 'AX_CALLBACK' `
								-replace 'CC_TARGET_PLATFORM', 'AX_TARGET_PLATFORM' `
								-replace 'CCLOG', 'AXLOG' `
								-replace 'getOpenGLView\(', 'getGLView(' `
								-replace 'setOpenGLView\(', 'setGLView(' `
								-replace 'setDisplayStats\(', 'setStatsDisplay(' `
								-replace 'FileUtils::createDirectory', 'FileUtils::createDirectories' `
								-replace 'FileUtils::getFileShortName', 'FileUtils::getPathBaseName' `
								-replace 'FileUtils::getFileExtension', 'FileUtils::getPathExtension' `
    | Set-Content $_.FullName
}