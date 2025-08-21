-- Example configuration for using Kitty terminal image preview with Telekasten
-- Add this to your Neovim configuration

require('telekasten').setup({
    -- Your existing configuration options...
    
    -- Enable Kitty terminal image preview
    media_previewer = "kitty-previewer",
    
    -- Define which file extensions to preview
    media_extensions = {
        ".png",
        ".jpg",
        ".jpeg",
        ".gif",
        ".bmp",
        ".webp",
        ".svg",
    },
    
    -- Other configuration options...
})

-- Usage:
-- 1. Make sure you're using Kitty terminal
-- 2. Use :Telekasten preview_img to preview images
-- 3. Use :Telekasten browse_media to browse media files
-- 4. Use :Telekasten insert_img_link to insert image links