return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
        },

        config = function()
            local harpoon = require("harpoon")
            harpoon:setup({})

            vim.keymap.set("n", "<leader>a", function()
                harpoon:list():add()
            end)

            -- Telescope Harpoon list
            local conf = require("telescope.config").values

            local function toggle_telescope(harpoon_files)
                local file_paths = {}

                for _, item in ipairs(harpoon_files.items) do
                    table.insert(file_paths, item.value)
                end

                require("telescope.pickers").new({}, {
                    prompt_title = "Harpoon",

                    finder = require("telescope.finders").new_table({
                        results = file_paths,
                    }),

                    previewer = conf.file_previewer({}),
                    sorter = conf.generic_sorter({}),

                    attach_mappings = function(prompt_bufnr, map)
                        local actions = require("telescope.actions")
                        local action_state = require("telescope.actions.state")

                        local function remove_selected()
                            local selection = action_state.get_selected_entry()

                            if selection then
                                actions.close(prompt_bufnr)
                                harpoon_files:remove_at(selection.index)
                                toggle_telescope(harpoon_files)

				 vim.schedule(function()
            vim.cmd("stopinsert")
        end)
                            end
                        end

			map("n", "dd", remove_selected)

                        return true
                    end,
                }):find()
            end

            -- Open Harpoon in Telescope
            vim.keymap.set("n", "<C-e>", function()
                toggle_telescope(harpoon:list())
            end, { desc = "Open Harpoon window" })

            -- Harpoon slots
            vim.keymap.set("n", "<A-1>", function()
                harpoon:list():select(1)
            end)

            vim.keymap.set("n", "<A-2>", function()
                harpoon:list():select(2)
            end)

            vim.keymap.set("n", "<A-3>", function()
                harpoon:list():select(3)
            end)

            vim.keymap.set("n", "<A-4>", function()
                harpoon:list():select(4)
            end)

            vim.keymap.set("n", "<A-5>", function()
                harpoon:list():select(5)
            end)

            vim.keymap.set("n", "<A-6>", function()
                harpoon:list():select(6)
            end)

            vim.keymap.set("n", "<A-7>", function()
                harpoon:list():select(7)
            end)

            vim.keymap.set("n", "<A-8>", function()
                harpoon:list():select(8)
            end)

            vim.keymap.set("n", "<A-9>", function()
                harpoon:list():select(9)
            end)

            -- Previous & next Harpoon entries
            vim.keymap.set("n", "<A-h>", function()
                harpoon:list():prev()
            end)

            vim.keymap.set("n", "<A-l>", function()
                harpoon:list():next()
            end)
        end,
    },
}

