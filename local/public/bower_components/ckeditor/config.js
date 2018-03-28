/**
 * @license Copyright (c) 2003-2018, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	config.uiColor = '#5fb435';
    config.filebrowserBrowseUrl = './local/public/bower_components/ckeditor/ckfinder/ckfinder.html';
    config.filebrowserImageBrowseUrl = './local/public/bower_components/ckeditor/ckfinder/ckfinder.html?type=Images';
    config.filebrowserFlashBrowseUrl = './local/public/bower_components/ckeditor/ckfinder/ckfinder.html?type=Flash';
    config.filebrowserUploadUrl = './local/public/bower_components/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files';
    config.filebrowserImageUploadUrl = './local/public/bower_components/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images';
    config.filebrowserFlashUploadUrl = './local/public/bower_components/ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash';
};