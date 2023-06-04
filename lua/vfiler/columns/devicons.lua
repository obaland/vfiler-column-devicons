local core = require('vfiler/libs/core')
local vim = require('vfiler/libs/vim')

-- Functions
local fnamemodify = vim.fn.fnamemodify

local DeviconsColumn = {}

DeviconsColumn.configs = {
  icons = {
    Ai = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
    },
    Awk = {
      icon = '',
      color = '#4d5a5e',
      cterm_color = '59',
    },
    Selected = {
      icon = '',
      link = 'vfilerSelected',
    },
    ClosedDirectory = {
      icon = '',
      link = 'vfilerDirectory',
    },
    OpenedDirectory = {
      icon = '',
      link = 'vfilerDirectory',
    },
    Default = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
    },
    Gruntfile = {
      icon = '',
      color = '#e37933',
      cterm_color = '173',
    },
    Gulpfile = {
      icon = '',
      color = '#cc3e44',
      cterm_color = '167',
    },
    Dropbox = {
      icon = '',
      color = '#0061FE',
      cterm_color = '27',
    },
    Xls = {
      icon = '',
      color = '#207245',
      cterm_color = '23',
    },
    Doc = {
      icon = '',
      color = '#185abd',
      cterm_color = '25',
    },
    Ppt = {
      icon = '',
      color = '#cb4a32',
      cterm_color = '167',
    },
    Xml = {
      icon = '',
      color = '#e37933',
      cterm_color = '173',
      name = 'Xml',
    },
    Webpack = {
      icon = 'ﰩ',
      color = '#519aba',
      cterm_color = '67',
    },
    SettingsJson = {
      icon = '',
      color = '#854CC7',
      cterm_color = '98',
    },
    Procfile = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    Svg = {
      icon = 'ﰟ',
      color = '#ffb13b',
      cterm_color = '215',
    },
    BashProfile = {
      icon = '',
      color = '#89e051',
      cterm_color = '113',
    },
    Babelrc = {
      icon = 'ﬥ',
      color = '#cbcb41',
      cterm_color = '185',
    },
    C = {
      icon = '',
      color = '#599eff',
      cterm_color = '75',
    },
    Clojure = {
      icon = '',
      color = '#8dc149',
      cterm_color = '107',
    },
    ClojureJS = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
    },
    CMake = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
    },
    Cobol = {
      icon = '⚙',
      color = '#005ca5',
      cterm_color = '25',
    },
    Coffee = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
    },
    Config = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
    },
    ConfigRu = {
      icon = '',
      color = '#701516',
      cterm_color = '52',
    },
    CPlusPlus = {
      icon = '',
      color = '#f34b7d',
      cterm_color = '204',
    },
    CPlusPlusSource = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
    },
    Crystal = {
      icon = '',
      color = '#000000',
      cterm_color = '16',
    },
    Csh = {
      icon = '',
      color = '#4d5a5e',
      cterm_color = '59',
    },
    CSharp = {
      icon = '',
      color = '#596706',
      cterm_color = '58',
    },
    Cson = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
    },
    Css = {
      icon = '',
      color = '#563d7c',
      cterm_color = '60',
    },
    D = {
      icon = '',
      color = '#427819',
      cterm_color = '64',
    },
    Dart = {
      icon = '',
      color = '#03589c',
      cterm_color = '25',
    },
    Db = {
      icon = '',
      color = '#dad8d8',
      cterm_color = '188',
    },
    Diff = {
      icon = '',
      color = '#41535b',
      cterm_color = '59',
    },
    Dockerfile = {
      icon = '',
      color = '#384d54',
      cterm_color = '59',
    },
    DsStore = {
      icon = '',
      color = '#41535b',
      cterm_color = '59',
    },
    Dump = {
      icon = '',
      color = '#dad8d8',
      cterm_color = '188',
    },
    Edn = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
    },
    Eex = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    Ejs = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
    },
    Elm = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
    },
    Erb = {
      icon = '',
      color = '#701516',
      cterm_color = '52',
    },
    Erl = {
      icon = '',
      color = '#B83998',
      cterm_color = '132',
    },
    Ex = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    Favicon = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
    },
    Fish = {
      icon = '',
      color = '#4d5a5e',
      cterm_color = '59',
    },
    FSharp = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
    },
    Gemfile = {
      icon = '',
      color = '#701516',
      cterm_color = '52',
    },
    Gif = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    GitLogo = {
      icon = '',
      color = '#f14c28',
      cterm_color = '202',
    },
    GitAttributes = {
      icon = '',
      color = '#41535b',
      cterm_color = '59',
    },
    GitConfig = {
      icon = '',
      color = '#41535b',
      cterm_color = '59',
    },
    GitIgnore = {
      icon = '',
      color = '#41535b',
      cterm_color = '59',
    },
    GitModules = {
      icon = '',
      color = '#41535b',
      cterm_color = '59',
    },
    GitCommit = {
      icon = '',
      color = '#41535b',
      cterm_color = '59',
    },
    Gitlab = {
      icon = '',
      color = '#e24329',
      cterm_color = '166',
    },
    Go = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
    },
    CHeader = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    Haml = {
      icon = '',
      color = '#eaeae1',
      cterm_color = '188',
    },
    Hbs = {
      icon = '',
      color = '#f0772b',
      cterm_color = '208',
    },
    Heex = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    Hrl = {
      icon = '',
      color = '#B83998',
      cterm_color = '132',
    },
    Hs = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    Html = {
      icon = '',
      color = '#e34c26',
      cterm_color = '166',
    },
    Ico = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
    },
    Ini = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
    },
    Java = {
      icon = '',
      color = '#cc3e44',
      cterm_color = '167',
    },
    JavaScript = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
    },
    Jpeg = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    Jl = {
      icon = '',
      color = '#a270ba',
      cterm_color = '133',
    },
    Json = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
    },
    Jsx = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
    },
    Ksh = {
      icon = '',
      color = '#4d5a5e',
      cterm_color = '59',
    },
    Leex = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    Less = {
      icon = '',
      color = '#563d7c',
      cterm_color = '60',
    },
    Lhs = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    License = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
    },
    Lua = {
      icon = '',
      color = '#51a0cf',
      cterm_color = '74',
    },
    Makefile = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
    },
    Markdown = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
    },
    MixLock = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    Mjs = {
      icon = '',
      color = '#f1e05a',
      cterm_color = '221',
    },
    OCaml = {
      icon = 'λ',
      color = '#e37933',
      cterm_color = '173',
    },
    Mp3 = {
      icon = '',
      color = '#5f00af',
      cterm_color = '55',
    },
    Mp4 = {
      icon = '',
      color = '#00af00',
      cterm_color = '34',
    },
    Mustache = {
      icon = '',
      color = '#e37933',
      cterm_color = '173',
    },
    Nix = {
      icon = '',
      color = '#7ebae4',
      cterm_color = '110',
    },
    NodeModule = {
      icon = '',
      color = '#E8274B',
      cterm_color = '161',
    },
    Php = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    Pdf = {
      icon = '',
      color = '#b30b00',
      cterm_color = '124',
    },
    Perl = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
    },
    Png = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    PowerShell = {
      icon = '',
      color = '#4d5a5e',
      cterm_color = '59',
    },
    Pp = {
      icon = '',
      color = '#ffa61a',
    },
    Ps = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
    },
    Python = {
      icon = '',
      color = '#ffbc03',
      cterm_color = '61',
    },
    PythonBinary = {
      icon = '',
      color = '#ffe291',
      cterm_color = '67',
    },
    R = {
      icon = 'ﳒ',
      color = '#358a5b',
      cterm_color = '65',
    },
    Rake = {
      icon = '',
      color = '#701516',
      cterm_color = '52',
    },
    Rlib = {
      icon = '',
      color = '#dea584',
      cterm_color = '180',
    },
    Rproj = {
      icon = '鉶',
      color = '#358a5b',
      cterm_color = '65',
    },
    Rs = {
      icon = '',
      color = '#dea584',
      cterm_color = '180',
    },
    Rss = {
      icon = '',
      color = '#fb9d3b',
      cterm_color = '215',
    },
    Scala = {
      icon = '',
      color = '#cc3e44',
      cterm_color = '167',
    },
    Scss = {
      icon = '',
      color = '#f55385',
      cterm_color = '204',
    },
    ShellScript = {
      icon = '',
      color = '#4d5a5e',
      cterm_color = '59',
    },
    Slim = {
      icon = '',
      color = '#e34c26',
      cterm_color = '166',
    },
    Sln = {
      icon = '',
      color = '#854CC7',
      cterm_color = '98',
    },
    Sql = {
      icon = '',
      color = '#dad8d8',
      cterm_color = '188',
    },
    Styl = {
      icon = '',
      color = '#8dc149',
      cterm_color = '107',
    },
    Vimrc = {
      icon = '',
      color = '#019833',
      cterm_color = '29',
    },
    NPMIgnore = {
      icon = '',
      color = '#E8274B',
      cterm_color = '161',
    },
    Zshrc = {
      icon = '',
      color = '#89e051',
      cterm_color = '113',
    },
    Vagrantfile = {
      icon = '',
      color = '#1563ff',
      cterm_color = '27',
    },
    Bash = {
      icon = '',
      color = '#89e051',
      cterm_color = '113',
    },
    Bat = {
      icon = '',
      color = '#c1f12e',
      cterm_color = '154',
    },
    Bmp = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    Shortcut = {
      icon = '',
      color = '#89e051',
      cterm_color = '113',
    },
    Suo = {
      icon = '',
      color = '#854cc7',
      cterm_color = '98',
    },
    Sublime = {
      icon = '',
      color = '#e37933',
      cterm_color = '98',
    },
    Swift = {
      icon = '',
      color = '#e37933',
      cterm_color = '173',
    },
    Terminal = {
      icon = '',
      color = '#31B53E',
      cterm_color = '71',
    },
    Text = {
      icon = '',
      color = '#89e051',
      cterm_color = '113',
    },
    Tex = {
      icon = 'ﭨ',
      color = '#3d6117',
      cterm_color = '58',
    },
    Toml = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
    },
    Tor = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
    },
    Ts = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
    },
    Tsx = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
    },
    Twig = {
      icon = '',
      color = '#8dc149',
      cterm_color = '107',
    },
    Vim = {
      icon = '',
      color = '#019833',
      cterm_color = '29',
    },
    Vue = {
      icon = '﵂',
      color = '#8dc149',
      cterm_color = '107',
    },
    Webmanifest = {
      icon = '',
      color = '#f1e05a',
      cterm_color = '221',
    },
    Webp = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    XcPlayground = {
      icon = '',
      color = '#e37933',
      cterm_color = '173',
    },
    Xul = {
      icon = '',
      color = '#e37933',
      cterm_color = '173',
    },
    Yaml = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
    },
    Zsh = {
      icon = '',
      color = '#89e051',
      cterm_color = '113',
    },
    Kotlin = {
      icon = '𝙆',
      color = '#f88a02',
      cterm_color = '208',
    },
    GDScript = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
    },
    TextScene = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
    },
    GodotProject = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
    },
    TextResource = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
    },
    BinaryGLTF = {
      icon = '',
      color = '#ffb13b',
      cterm_color = '215',
    },
    ImportConfiguration = {
      icon = '',
      color = '#ececec',
      cterm_color = '231',
    },
    Material = {
      icon = '',
      color = '#b83998',
      cterm_color = '132',
    },
    OpenTypeFont = {
      icon = '',
      color = '#ececec',
      cterm_color = '231',
    },
    Configuration = {
      icon = '',
      color = '#ececec',
      cterm_color = '231',
    },
    PackedResource = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
    },
    DesktopEntry = {
      icon = '',
      color = '#563d7c',
      cterm_color = '60',
    },
    OPUS = {
      icon = '',
      color = '#f88a02',
      cterm_color = '208',
    },
    Svelte = {
      icon = '',
      color = '#ff3e00',
      cterm_color = '202',
    },
    Prolog = {
      icon = '',
      color = '#e4b854',
      cterm_color = '179',
    },
    Zig = {
      icon = '',
      color = '#f69a1b',
      cterm_color = '208',
    },
    Zip = {
      icon = '',
      color = '#ff5f00',
      cterm_color = '202',
    },
    Mint = {
      icon = '',
      color = '#87c095',
      cterm_color = '108',
    },
    StaticLinkLibrary = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
    },
    DynamicLinkLibrary = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
    },
    Executable = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
    },
    Object = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
    },
    Pdb = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
    },
    Archive = {
      icon = '',
      color = '#89e051',
      cterm_color = '113',
    },
  },

  files = {
    ['selected'] = 'Selected',
    ['closed'] = 'ClosedDirectory',
    ['opened'] = 'OpenedDirectory',
    ['default'] = 'Default',
    ['gruntfile'] = 'Gruntfile',
    ['gulpfile'] = 'Gulpfile',
    ['dropbox'] = 'Dropbox',
    ['xls'] = 'Xls',
    ['xlsm'] = 'Xls',
    ['xlsx'] = 'Xls',
    ['doc'] = 'Doc',
    ['docx'] = 'Doc',
    ['ppt'] = 'Ppt',
    ['pptx'] = 'Ppt',
    ['xml'] = 'Xml',
    ['xaml'] = 'Xml',
    ['webpack'] = 'Webpack',
    ['.settings.json'] = 'SettingsJson',
    ['cs'] = 'CSharp',
    ['procfile'] = 'Procfile',
    ['svg'] = 'Svg',
    ['.bashprofile'] = 'BashProfile',
    ['.bashrc'] = 'BashProfile',
    ['.babelrc'] = 'Babelrc',
    ['.ds_store'] = 'DsStore',
    ['git'] = 'GitLogo',
    ['.gitattributes'] = 'GitAttributes',
    ['.gitconfig'] = 'GitConfig',
    ['.gitignore'] = 'GitIgnore',
    ['.gitmodules'] = 'GitModules',
    ['COMMIT_EDITMSG'] = 'GitCommit',
    ['COPYING'] = 'License',
    ['COPYING.LESSER'] = 'License',
    ['.gitlab-ci.yml'] = 'Gitlab',
    ['.gvimrc'] = 'Vimrc',
    ['.npmignore'] = 'NPMIgnore',
    ['.vimrc'] = 'Vimrc',
    ['.zshrc'] = 'Zshrc',
    ['.zshenv'] = 'Zshrc',
    ['.zprofile'] = 'Zshrc',
    ['dockerfile'] = 'Dockerfile',
    ['Dockerfile'] = 'Dockerfile',
    ['Gemfile$'] = 'Gemfile',
    ['LICENSE'] = 'License',
    ['Vagrantfile$'] = 'Vagrantfile',
    ['_gvimrc'] = 'Vimrc',
    ['_vimrc'] = 'Vimrc',
    ['ai'] = 'Ai',
    ['awk'] = 'Awk',
    ['bash'] = 'Bash',
    ['bat'] = 'Bat',
    ['bmp'] = 'Bmp',
    ['c'] = 'C',
    ['c++'] = 'CPlusPlus',
    ['cc'] = 'CPlusPlus',
    ['clj'] = 'Clojure',
    ['cljc'] = 'Clojure',
    ['cljs'] = 'ClojureJS',
    ['CMakeLists.txt'] = 'CMake',
    ['cmake'] = 'CMake',
    ['cobol'] = 'Cobol',
    ['cob'] = 'Cobol',
    ['cbl'] = 'Cobol',
    ['cpy'] = 'Cobol',
    ['coffee'] = 'Coffee',
    ['conf'] = 'Config',
    ['config.ru'] = 'ConfigRu',
    ['cp'] = 'CPlusPlusSource',
    ['cpp'] = 'CPlusPlusSource',
    ['cr'] = 'Crystal',
    ['csh'] = 'Csh',
    ['cson'] = 'Cson',
    ['css'] = 'Css',
    ['cxx'] = 'CPlusPlusSource',
    ['d'] = 'D',
    ['dart'] = 'Dart',
    ['db'] = 'Db',
    ['diff'] = 'Diff',
    ['dump'] = 'Dump',
    ['edn'] = 'Edn',
    ['eex'] = 'Eex',
    ['ejs'] = 'Ejs',
    ['elm'] = 'Elm',
    ['erl'] = 'Erl',
    ['ex'] = 'Ex',
    ['exs'] = 'Ex',
    ['f#'] = 'FSharp',
    ['favicon.ico'] = 'Favicon',
    ['fish'] = 'Fish',
    ['fs'] = 'FSharp',
    ['fsi'] = 'FSharp',
    ['fsscript'] = 'FSharp',
    ['fsx'] = 'FSharp',
    ['gemspec'] = 'Gemfile',
    ['gif'] = 'Gif',
    ['go'] = 'Go',
    ['h'] = 'CHeader',
    ['haml'] = 'Haml',
    ['hbs'] = 'Hbs',
    ['heex'] = 'Heex',
    ['hh'] = 'CHeader',
    ['hpp'] = 'CHeader',
    ['hrl'] = 'Hrl',
    ['hs'] = 'Hs',
    ['htm'] = 'Html',
    ['html'] = 'Html',
    ['erb'] = 'Erb',
    ['hxx'] = 'CHeader',
    ['ico'] = 'Ico',
    ['ini'] = 'Ini',
    ['java'] = 'Java',
    ['jl'] = 'Jl',
    ['jpeg'] = 'Jpeg',
    ['jpg'] = 'Jpeg',
    ['js'] = 'JavaScript',
    ['json'] = 'Json',
    ['jsx'] = 'Jsx',
    ['ksh'] = 'Ksh',
    ['leex'] = 'Leex',
    ['less'] = 'Less',
    ['lhs'] = 'Lhs',
    ['license'] = 'License',
    ['lnk'] = 'Shortcut',
    ['lua'] = 'Lua',
    ['makefile'] = 'Makefile',
    ['markdown'] = 'Markdown',
    ['md'] = 'Markdown',
    ['mdx'] = 'Markdown',
    ['mix.lock'] = 'MixLock',
    ['mjs'] = 'Mjs',
    ['ml'] = 'OCaml',
    ['mli'] = 'OCaml',
    ['mp3'] = 'Mp3',
    ['mp4'] = 'Mp4',
    ['mustache'] = 'Mustache',
    ['nix'] = 'Nix',
    ['node_modules'] = 'NodeModule',
    ['pdf'] = 'Pdf',
    ['php'] = 'Php',
    ['pl'] = 'Perl',
    ['pm'] = 'Perl',
    ['png'] = 'Png',
    ['pp'] = 'Pp',
    ['epp'] = 'Pp',
    ['ps1'] = 'PowerShell',
    ['psb'] = 'Ps',
    ['psd'] = 'Ps',
    ['py'] = 'Python',
    ['pyc'] = 'PythonBinary',
    ['pyd'] = 'PythonBinary',
    ['pyo'] = 'PythonBinary',
    ['r'] = 'R',
    ['R'] = 'R',
    ['rake'] = 'Rake',
    ['rakefile'] = 'Rake',
    ['rb'] = 'Gemfile',
    ['Brewfile'] = 'Gemfile',
    ['rlib'] = 'Rlib',
    ['rmd'] = 'Markdown',
    ['Rmd'] = 'Markdown',
    ['rproj'] = 'Rproj',
    ['rs'] = 'Rs',
    ['rss'] = 'Rss',
    ['sass'] = 'Scss',
    ['scala'] = 'Scala',
    ['scss'] = 'Scss',
    ['sh'] = 'ShellScript',
    ['sig'] = 'OCaml',
    ['slim'] = 'Slim',
    ['sln'] = 'Sln',
    ['sml'] = 'OCaml',
    ['sql'] = 'Sql',
    ['sqlite'] = 'Sql',
    ['sqlite3'] = 'Sql',
    ['styl'] = 'Styl',
    ['suo'] = 'Suo',
    ['sublime'] = 'Sublime',
    ['swift'] = 'Swift',
    ['t'] = 'Tor',
    ['txt'] = 'Text',
    ['tex'] = 'Tex',
    ['toml'] = 'Toml',
    ['ts'] = 'Ts',
    ['tsx'] = 'Tsx',
    ['twig'] = 'Twig',
    ['vim'] = 'Vim',
    ['vue'] = 'Vue',
    ['webmanifest'] = 'Webmanifest',
    ['webp'] = 'Webp',
    ['xcplayground'] = 'XcPlayground',
    ['xul'] = 'Xul',
    ['yaml'] = 'Yaml',
    ['yml'] = 'Yaml',
    ['zsh'] = 'Zsh',
    ['terminal'] = 'Terminal',
    ['kt'] = 'Kotlin',
    ['gd'] = 'GDScript',
    ['tscn'] = 'TextScene',
    ['godot'] = 'GodotProject',
    ['tres'] = 'TextResource',
    ['glb'] = 'BinaryGLTF',
    ['import'] = 'ImportConfiguration',
    ['material'] = 'Material',
    ['otf'] = 'OpenTypeFont',
    ['cfg'] = 'Configuration',
    ['pck'] = 'PackedResource',
    ['desktop'] = 'DesktopEntry',
    ['opus'] = 'OPUS',
    ['svelte'] = 'Svelte',
    ['pro'] = 'Prolog',
    ['zig'] = 'Zig',
    ['zip'] = 'Zip',
    ['mint'] = 'Mint',
    ['a'] = 'StaticLinkLibrary',
    ['dll'] = 'DynamicLinkLibrary',
    ['exe'] = 'Executable',
    ['lib'] = 'StaticLinkLibrary',
    ['o'] = 'Object',
    ['so'] = 'DynamicLinkLibrary',
    ['pdb'] = 'Pdb',
    ['7z'] = 'Archive',
  },
}

-- DEBUG:
--for file, key in pairs(DeviconsColumn.configs.files) do
--  if not DeviconsColumn.configs.icons[key] then
--    print('[assert] Not found icon:', file, '=>', key)
--  end
--end

local ICON_WIDTH = 1

local function get_syntax(name, icon)
  -- syntax
  local syntax = {
    name = name,
    group = 'vfilerDevicons_' .. name,
    region = {
      start_mark = ('d\\.%s</'):format(name),
      end_mark = '/>d',
    },
  }

  -- highlight
  if icon.link then
    syntax.highlight = icon.link
  else
    syntax.highlight = {
      guifg = icon.color,
      ctermfg = icon.cterm_color,
    }
  end
  return syntax
end

local function get_file_key(name)
  local files = DeviconsColumn.configs.files
  if files[name] then
    return files[name]
  end

  local ext = fnamemodify(name, ':e')
  if files[ext] then
    return files[ext]
  end
  return 'Default'
end

function DeviconsColumn.setup(configs)
  configs = configs or {}
  core.table.merge(DeviconsColumn.configs, configs)
end

function DeviconsColumn.new()
  -- syntax and highlight
  local syntaxes = {}
  for name, icon in pairs(DeviconsColumn.configs.icons) do
    table.insert(syntaxes, get_syntax(name, icon))
  end

  local Column = require('vfiler/columns/column')
  return core.inherit(DeviconsColumn, Column, syntaxes)
end

function DeviconsColumn:to_text(item, width)
  local syntax
  if item.selected then
    syntax = 'Selected'
  elseif item.type == 'directory' then
    syntax = item.opened and 'OpenedDirectory' or 'ClosedDirectory'
  else
    syntax = get_file_key(item.name)
  end
  local i = DeviconsColumn.configs.icons[syntax]
  return {
    string = i.icon,
    width = ICON_WIDTH,
    syntax = syntax
  }
end

function DeviconsColumn:get_width(items, width, winid)
  return ICON_WIDTH
end

return DeviconsColumn
