local core = require('vfiler/libs/core')
local vim = require('vfiler/libs/vim')

-- Functions
local fnamemodify = vim.fn.fnamemodify
local strwidth = vim.fn.strwidth

local DeviconsColumn = {}

DeviconsColumn.configs = {
  selected = {
    icon = '',
    link = 'vfilerSelected',
    name = 'Selected',
  },

  closed = {
    icon = '',
    link = 'vfilerDirectory',
    name = 'Closed',
  },

  opened = {
    icon = '',
    link = 'vfilerDirectory',
    name = 'Opened',
  },

  default = {
    icon = '',
    color = '#6d8086',
    cterm_color = '66',
    name = 'Default',
  },

  files = {
    ['gruntfile'] = {
      icon = '',
      color = '#e37933',
      cterm_color = '173',
      name = 'Gruntfile',
    },
    ['gulpfile'] = {
      icon = '',
      color = '#cc3e44',
      cterm_color = '167',
      name = 'Gulpfile',
    },
    ['dropbox'] = {
      icon = '',
      color = '#0061FE',
      cterm_color = '27',
      name = 'Dropbox',
    },
    ['xls'] = {
      icon = '',
      color = '#207245',
      cterm_color = '23',
      name = 'Xls',
    },
    ['doc'] = {
      icon = '',
      color = '#185abd',
      cterm_color = '25',
      name = 'Doc',
    },
    ['ppt'] = {
      icon = '',
      color = '#cb4a32',
      cterm_color = '167',
      name = 'Ppt',
    },
    ['xml'] = {
      icon = '',
      color = '#e37933',
      cterm_color = '173',
      name = 'Xml',
    },
    ['xaml'] = {
      icon = '',
      color = '#e37933',
      cterm_color = '173',
      name = 'Xaml',
    },
    ['webpack'] = {
      icon = 'ﰩ',
      color = '#519aba',
      cterm_color = '67',
      name = 'Webpack',
    },
    ['.settings.json'] = {
      icon = '',
      color = '#854CC7',
      cterm_color = '98',
      name = 'SettingsJson',
    },
    ['cs'] = {
      icon = '',
      color = '#596706',
      cterm_color = '58',
      name = 'Cs',
    },
    ['procfile'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Procfile',
    },
    ['svg'] = {
      icon = 'ﰟ',
      color = '#FFB13B',
      cterm_color = '215',
      name = 'Svg',
    },
    ['.bashprofile'] = {
      icon = '',
      color = '#89e051',
      cterm_color = '113',
      name = 'BashProfile',
    },
    ['.bashrc'] = {
      icon = '',
      color = '#89e051',
      cterm_color = '113',
      name = 'Bashrc',
    },
    ['.babelrc'] = {
      icon = 'ﬥ',
      color = '#cbcb41',
      cterm_color = '185',
      name = 'Babelrc',
    },
    ['.ds_store'] = {
      icon = '',
      color = '#41535b',
      cterm_color = '59',
      name = 'DsStore',
    },
    ['git'] = {
      icon = '',
      color = '#F14C28',
      cterm_color = '202',
      name = 'GitLogo',
    },
    ['.gitattributes'] = {
      icon = '',
      color = '#41535b',
      cterm_color = '59',
      name = 'GitAttributes',
    },
    ['.gitconfig'] = {
      icon = '',
      color = '#41535b',
      cterm_color = '59',
      name = 'GitConfig',
    },
    ['.gitignore'] = {
      icon = '',
      color = '#41535b',
      cterm_color = '59',
      name = 'GitIgnore',
    },
    ['.gitmodules'] = {
      icon = '',
      color = '#41535b',
      cterm_color = '59',
      name = 'GitModules',
    },
    ['COMMIT_EDITMSG'] = {
      icon = '',
      color = '#41535b',
      cterm_color = '59',
      name = 'GitCommit',
    },
    ['COPYING'] = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
      name = 'License',
    },
    ['COPYING.LESSER'] = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
      name = 'License',
    },
    ['.gitlab-ci.yml'] = {
      icon = '',
      color = '#e24329',
      cterm_color = '166',
      name = 'GitlabCI',
    },
    ['.gvimrc'] = {
      icon = '',
      color = '#019833',
      cterm_color = '29',
      name = 'Gvimrc',
    },
    ['.npmignore'] = {
      icon = '',
      color = '#E8274B',
      cterm_color = '161',
      name = 'NPMIgnore',
    },
    ['.vimrc'] = {
      icon = '',
      color = '#019833',
      cterm_color = '29',
      name = 'Vimrc',
    },
    ['.zshrc'] = {
      icon = '',
      color = '#89e051',
      cterm_color = '113',
      name = 'Zshrc',
    },
    ['.zshenv'] = {
      icon = '',
      color = '#89e051',
      cterm_color = '113',
      name = 'Zshenv',
    },
    ['.zprofile'] = {
      icon = '',
      color = '#89e051',
      cterm_color = '113',
      name = 'Zshprofile',
    },
    ['Dockerfile'] = {
      icon = '',
      color = '#384d54',
      cterm_color = '59',
      name = 'Dockerfile',
    },
    ['Gemfile$'] = {
      icon = '',
      color = '#701516',
      cterm_color = '52',
      name = 'Gemfile',
    },
    ['LICENSE'] = {
      icon = '',
      color = '#d0bf41',
      cterm_color = '179',
      name = 'License',
    },
    ['Vagrantfile$'] = {
      icon = '',
      color = '#1563FF',
      cterm_color = '27',
      name = 'Vagrantfile',
    },
    ['_gvimrc'] = {
      icon = '',
      color = '#019833',
      cterm_color = '29',
      name = 'Gvimrc',
    },
    ['_vimrc'] = {
      icon = '',
      color = '#019833',
      cterm_color = '29',
      name = 'Vimrc',
    },
    ['ai'] = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
      name = 'Ai',
    },
    ['awk'] = {
      icon = '',
      color = '#4d5a5e',
      cterm_color = '59',
      name = 'Awk',
    },
    ['bash'] = {
      icon = '',
      color = '#89e051',
      cterm_color = '113',
      name = 'Bash',
    },
    ['bat'] = {
      icon = '',
      color = '#C1F12E',
      cterm_color = '154',
      name = 'Bat',
    },
    ['bmp'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Bmp',
    },
    ['c'] = {
      icon = '',
      color = '#599eff',
      cterm_color = '75',
      name = 'C',
    },
    ['c++'] = {
      icon = '',
      color = '#f34b7d',
      cterm_color = '204',
      name = 'CPlusPlus',
    },
    ['cc'] = {
      icon = '',
      color = '#f34b7d',
      cterm_color = '204',
      name = 'CPlusPlus',
    },
    ['clj'] = {
      icon = '',
      color = '#8dc149',
      cterm_color = '107',
      name = 'Clojure',
    },
    ['cljc'] = {
      icon = '',
      color = '#8dc149',
      cterm_color = '107',
      name = 'ClojureC',
    },
    ['cljs'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'ClojureJS',
    },
    ['CMakeLists.txt'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'CMakeLists',
    },
    ['cmake'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'CMake',
    },
    ['cobol'] = {
      icon = '⚙',
      color = '#005ca5',
      cterm_color = '25',
      name = 'Cobol',
    },
    ['cob'] = {
      icon = '⚙',
      color = '#005ca5',
      cterm_color = '25',
      name = 'Cobol',
    },
    ['cbl'] = {
      icon = '⚙',
      color = '#005ca5',
      cterm_color = '25',
      name = 'Cobol',
    },
    ['cpy'] = {
      icon = '⚙',
      color = '#005ca5',
      cterm_color = '25',
      name = 'Cobol',
    },
    ['coffee'] = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
      name = 'Coffee',
    },
    ['conf'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'Conf',
    },
    ['config.ru'] = {
      icon = '',
      color = '#701516',
      cterm_color = '52',
      name = 'ConfigRu',
    },
    ['cp'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Cp',
    },
    ['cpp'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Cpp',
    },
    ['cr'] = {
      icon = '',
      color = '#000000',
      cterm_color = '16',
      name = 'Crystal',
    },
    ['csh'] = {
      icon = '',
      color = '#4d5a5e',
      cterm_color = '59',
      name = 'Csh',
    },
    ['cson'] = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
      name = 'Cson',
    },
    ['css'] = {
      icon = '',
      color = '#563d7c',
      cterm_color = '60',
      name = 'Css',
    },
    ['cxx'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Cxx',
    },
    ['d'] = {
      icon = '',
      color = '#427819',
      cterm_color = '64',
      name = 'D',
    },
    ['dart'] = {
      icon = '',
      color = '#03589C',
      cterm_color = '25',
      name = 'Dart',
    },
    ['db'] = {
      icon = '',
      color = '#dad8d8',
      cterm_color = '188',
      name = 'Db',
    },
    ['diff'] = {
      icon = '',
      color = '#41535b',
      cterm_color = '59',
      name = 'Diff',
    },
    ['dockerfile'] = {
      icon = '',
      color = '#384d54',
      cterm_color = '59',
      name = 'Dockerfile',
    },
    ['dump'] = {
      icon = '',
      color = '#dad8d8',
      cterm_color = '188',
      name = 'Dump',
    },
    ['edn'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Edn',
    },
    ['eex'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Eex',
    },
    ['ejs'] = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
      name = 'Ejs',
    },
    ['elm'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Elm',
    },
    ['erl'] = {
      icon = '',
      color = '#B83998',
      cterm_color = '132',
      name = 'Erl',
    },
    ['ex'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Ex',
    },
    ['exs'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Exs',
    },
    ['f#'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Fsharp',
    },
    ['favicon.ico'] = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
      name = 'Favicon',
    },
    ['fish'] = {
      icon = '',
      color = '#4d5a5e',
      cterm_color = '59',
      name = 'Fish',
    },
    ['fs'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Fs',
    },
    ['fsi'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Fsi',
    },
    ['fsscript'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Fsscript',
    },
    ['fsx'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Fsx',
    },
    ['gemspec'] = {
      icon = '',
      color = '#701516',
      cterm_color = '52',
      name = 'Gemspec',
    },
    ['gif'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Gif',
    },
    ['go'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Go',
    },
    ['h'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'H',
    },
    ['haml'] = {
      icon = '',
      color = '#eaeae1',
      cterm_color = '188',
      name = 'Haml',
    },
    ['hbs'] = {
      icon = '',
      color = '#f0772b',
      cterm_color = '208',
      name = 'Hbs',
    },
    ['heex'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Heex',
    },
    ['hh'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Hh',
    },
    ['hpp'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Hpp',
    },
    ['hrl'] = {
      icon = '',
      color = '#B83998',
      cterm_color = '132',
      name = 'Hrl',
    },
    ['hs'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Hs',
    },
    ['htm'] = {
      icon = '',
      color = '#e34c26',
      cterm_color = '166',
      name = 'Htm',
    },
    ['html'] = {
      icon = '',
      color = '#e34c26',
      cterm_color = '166',
      name = 'Html',
    },
    ['erb'] = {
      icon = '',
      color = '#701516',
      cterm_color = '52',
      name = 'Erb',
    },
    ['hxx'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Hxx',
    },
    ['ico'] = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
      name = 'Ico',
    },
    ['ini'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'Ini',
    },
    ['java'] = {
      icon = '',
      color = '#cc3e44',
      cterm_color = '167',
      name = 'Java',
    },
    ['jl'] = {
      icon = '',
      color = '#a270ba',
      cterm_color = '133',
      name = 'Jl',
    },
    ['jpeg'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Jpeg',
    },
    ['jpg'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Jpg',
    },
    ['js'] = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
      name = 'Js',
    },
    ['json'] = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
      name = 'Json',
    },
    ['jsx'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Jsx',
    },
    ['ksh'] = {
      icon = '',
      color = '#4d5a5e',
      cterm_color = '59',
      name = 'Ksh',
    },
    ['leex'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Leex',
    },
    ['less'] = {
      icon = '',
      color = '#563d7c',
      cterm_color = '60',
      name = 'Less',
    },
    ['lhs'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Lhs',
    },
    ['license'] = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
      name = 'License',
    },
    ['lua'] = {
      icon = '',
      color = '#51a0cf',
      cterm_color = '74',
      name = 'Lua',
    },
    ['makefile'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'Makefile',
    },
    ['markdown'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Markdown',
    },
    ['md'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Md',
    },
    ['mdx'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Mdx',
    },
    ['mix.lock'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'MixLock',
    },
    ['mjs'] = {
      icon = '',
      color = '#f1e05a',
      cterm_color = '221',
      name = 'Mjs',
    },
    ['ml'] = {
      icon = 'λ',
      color = '#e37933',
      cterm_color = '173',
      name = 'Ml',
    },
    ['mli'] = {
      icon = 'λ',
      color = '#e37933',
      cterm_color = '173',
      name = 'Mli',
    },
    ['mustache'] = {
      icon = '',
      color = '#e37933',
      cterm_color = '173',
      name = 'Mustache',
    },
    ['nix'] = {
      icon = '',
      color = '#7ebae4',
      cterm_color = '110',
      name = 'Nix',
    },
    ['node_modules'] = {
      icon = '',
      color = '#E8274B',
      cterm_color = '161',
      name = 'NodeModules',
    },
    ['php'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Php',
    },
    ['pl'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Pl',
    },
    ['pm'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Pm',
    },
    ['png'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Png',
    },
    ['pp'] = {
      icon = '',
      color = '#FFA61A',
      name = 'Pp',
    },
    ['epp'] = {
      icon = '',
      color = '#FFA61A',
      name = 'Epp',
    },
    ['ps1'] = {
      icon = '',
      color = '#4d5a5e',
      cterm_color = '59',
      name = 'PromptPs1',
    },
    ['psb'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Psb',
    },
    ['psd'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Psd',
    },
    ['py'] = {
      icon = '',
      color = '#ffbc03',
      cterm_color = '61',
      name = 'Py',
    },
    ['pyc'] = {
      icon = '',
      color = '#ffe291',
      cterm_color = '67',
      name = 'Pyc',
    },
    ['pyd'] = {
      icon = '',
      color = '#ffe291',
      cterm_color = '67',
      name = 'Pyd',
    },
    ['pyo'] = {
      icon = '',
      color = '#ffe291',
      cterm_color = '67',
      name = 'Pyo',
    },
    ['r'] = {
      icon = 'ﳒ',
      color = '#358a5b',
      cterm_color = '65',
      name = 'R',
    },
    ['R'] = {
      icon = 'ﳒ',
      color = '#358a5b',
      cterm_color = '65',
      name = 'R',
    },
    ['rake'] = {
      icon = '',
      color = '#701516',
      cterm_color = '52',
      name = 'Rake',
    },
    ['rakefile'] = {
      icon = '',
      color = '#701516',
      cterm_color = '52',
      name = 'Rakefile',
    },
    ['rb'] = {
      icon = '',
      color = '#701516',
      cterm_color = '52',
      name = 'Rb',
    },
    ['Brewfile'] = {
      icon = '',
      color = '#701516',
      cterm_color = '52',
      name = 'Brewfile',
    },
    ['rlib'] = {
      icon = '',
      color = '#dea584',
      cterm_color = '180',
      name = 'Rlib',
    },
    ['rmd'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Rmd',
    },
    ['Rmd'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Rmd',
    },
    ['rproj'] = {
      icon = '鉶',
      color = '#358a5b',
      cterm_color = '65',
      name = 'Rproj',
    },
    ['rs'] = {
      icon = '',
      color = '#dea584',
      cterm_color = '180',
      name = 'Rs',
    },
    ['rss'] = {
      icon = '',
      color = '#FB9D3B',
      cterm_color = '215',
      name = 'Rss',
    },
    ['sass'] = {
      icon = '',
      color = '#f55385',
      cterm_color = '204',
      name = 'Sass',
    },
    ['scala'] = {
      icon = '',
      color = '#cc3e44',
      cterm_color = '167',
      name = 'Scala',
    },
    ['scss'] = {
      icon = '',
      color = '#f55385',
      cterm_color = '204',
      name = 'Scss',
    },
    ['sh'] = {
      icon = '',
      color = '#4d5a5e',
      cterm_color = '59',
      name = 'Sh',
    },
    ['sig'] = {
      icon = 'λ',
      color = '#e37933',
      cterm_color = '173',
      name = 'Sig',
    },
    ['slim'] = {
      icon = '',
      color = '#e34c26',
      cterm_color = '166',
      name = 'Slim',
    },
    ['sln'] = {
      icon = '',
      color = '#854CC7',
      cterm_color = '98',
      name = 'Sln',
    },
    ['sml'] = {
      icon = 'λ',
      color = '#e37933',
      cterm_color = '173',
      name = 'Sml',
    },
    ['sql'] = {
      icon = '',
      color = '#dad8d8',
      cterm_color = '188',
      name = 'Sql',
    },
    ['sqlite'] = {
      icon = '',
      color = '#dad8d8',
      cterm_color = '188',
      name = 'Sql',
    },
    ['sqlite3'] = {
      icon = '',
      color = '#dad8d8',
      cterm_color = '188',
      name = 'Sql',
    },
    ['styl'] = {
      icon = '',
      color = '#8dc149',
      cterm_color = '107',
      name = 'Styl',
    },
    ['suo'] = {
      icon = '',
      color = '#854CC7',
      cterm_color = '98',
      name = 'Suo',
    },
    ['sublime'] = {
      icon = '',
      color = '#e37933',
      cterm_color = '98',
      name = 'Suo',
    },
    ['swift'] = {
      icon = '',
      color = '#e37933',
      cterm_color = '173',
      name = 'Swift',
    },
    ['t'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Tor',
    },
    ['txt'] = {
      icon = '',
      color = '#89e051',
      cterm_color = '113',
      name = 'Txt',
    },
    ['tex'] = {
      icon = 'ﭨ',
      color = '#3D6117',
      cterm_color = '58',
      name = 'Tex',
    },
    ['toml'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'Toml',
    },
    ['ts'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Ts',
    },
    ['tsx'] = {
      icon = '',
      color = '#519aba',
      cterm_color = '67',
      name = 'Tsx',
    },
    ['twig'] = {
      icon = '',
      color = '#8dc149',
      cterm_color = '107',
      name = 'Twig',
    },
    ['vim'] = {
      icon = '',
      color = '#019833',
      cterm_color = '29',
      name = 'Vim',
    },
    ['vue'] = {
      icon = '﵂',
      color = '#8dc149',
      cterm_color = '107',
      name = 'Vue',
    },
    ['webmanifest'] = {
      icon = '',
      color = '#f1e05a',
      cterm_color = '221',
      name = 'Webmanifest',
    },
    ['webp'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'Webp',
    },
    ['xcplayground'] = {
      icon = '',
      color = '#e37933',
      cterm_color = '173',
      name = 'XcPlayground',
    },
    ['xul'] = {
      icon = '',
      color = '#e37933',
      cterm_color = '173',
      name = 'Xul',
    },
    ['yaml'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'Yaml',
    },
    ['yml'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'Yml',
    },
    ['zsh'] = {
      icon = '',
      color = '#89e051',
      cterm_color = '113',
      name = 'Zsh',
    },
    ['terminal'] = {
      icon = '',
      color = '#31B53E',
      cterm_color = '71',
      name = 'Terminal',
    },
    ['pdf'] = {
      icon = '',
      color = '#b30b00',
      cterm_color = '124',
      name = 'Pdf',
    },
    ['kt'] = {
      icon = '𝙆',
      color = '#F88A02',
      cterm_color = '208',
      name = 'Kotlin',
    },
    ['gd'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'GDScript',
    },
    ['tscn'] = {
      icon = '',
      color = '#a074c4',
      cterm_color = '140',
      name = 'TextScene',
    },
    ['godot'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'GodotProject',
    },
    ['tres'] = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
      name = 'TextResource',
    },
    ['glb'] = {
      icon = '',
      color = '#FFB13B',
      cterm_color = '215',
      name = 'BinaryGLTF',
    },
    ['import'] = {
      icon = '',
      color = '#ECECEC',
      cterm_color = '231',
      name = 'ImportConfiguration',
    },
    ['material'] = {
      icon = '',
      color = '#B83998',
      cterm_color = '132',
      name = 'Material',
    },
    ['otf'] = {
      icon = '',
      color = '#ECECEC',
      cterm_color = '231',
      name = 'OpenTypeFont',
    },
    ['cfg'] = {
      icon = '',
      color = '#ECECEC',
      cterm_color = '231',
      name = 'Configuration',
    },
    ['pck'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'PackedResource',
    },
    ['desktop'] = {
      icon = '',
      color = '#563d7c',
      cterm_color = '60',
      name = 'DesktopEntry',
    },
    ['opus'] = {
      icon = '',
      color = '#F88A02',
      cterm_color = '208',
      name = 'OPUS',
    },
    ['svelte'] = {
      icon = '',
      color = '#ff3e00',
      cterm_color = '202',
      name = 'Svelte',
    },
    ['pro'] = {
      icon = '',
      color = '#e4b854',
      cterm_color = '179',
      name = 'Prolog',
    },
    ['zig'] = {
      icon = '',
      color = '#f69a1b',
      cterm_color = '208',
      name = 'Zig',
    },
    ['mint'] = {
      icon = '',
      color = '#87c095',
      cterm_color = '108',
      name = 'Mint',
    },
    ['a'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'StaticLinkLibrary',
    },
    ['dll'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'Dll',
    },
    ['exe'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'Exe',
    },
    ['lib'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'Lib',
    },
    ['o'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'Object',
    },
    ['so'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'DynamicLinkLibrary',
    },
    ['pdb'] = {
      icon = '',
      color = '#6d8086',
      cterm_color = '66',
      name = 'Pdb',
    },
  },
}

local function get_icon_width(configs)
  local width = math.max(strwidth(configs.default.icon), 0)
  width = math.max(strwidth(configs.selected.icon), width)
  width = math.max(strwidth(configs.opened.icon), width)
  width = math.max(strwidth(configs.closed.icon), width)
  for _, file in ipairs(configs.files) do
    width = math.max(strwidth(file.icon), width)
  end
  return width
end

local icon_width = get_icon_width(DeviconsColumn.configs)

local function get_syntax(parent, key, icon)
  local name = 'vfilerDevicons_' .. icon.name
  local syntax = {
    group = name,
    keyword = icon.icon,
    options = {
      contained = true,
      containedin = parent,
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
  name = name:lower()
  local files = DeviconsColumn.configs.files
  if files[name] then
    return name
  end

  local ext = fnamemodify(name, ':e')
  if files[ext] then
    return ext
  end
  return 'default'
end

function DeviconsColumn.setup(configs)
  configs = configs or {}
  core.table.merge(DeviconsColumn.configs, configs)
  icon_width = get_icon_width(DeviconsColumn.configs)
end

function DeviconsColumn.new()
  -- syntax and highlight
  local group = 'vfilerDevicons'
  local syntaxes = {
    devicons = {
      group = group,
      start_mark = 'D@i\\',
    },
  }
  for _, key in ipairs({ 'default', 'selected', 'opened', 'closed' }) do
    syntaxes[key] = get_syntax(group, key, DeviconsColumn.configs[key])
  end
  for key, icon in pairs(DeviconsColumn.configs.files) do
    syntaxes[key] = get_syntax(group, key, icon)
  end

  local Column = require('vfiler/columns/column')
  return core.inherit(DeviconsColumn, Column, {
    syntaxes = syntaxes,
    end_mark = '\\D@',
  })
end

function DeviconsColumn:get_width(items, width)
  return icon_width
end

function DeviconsColumn:_get_text(item, width)
  local key, icon
  if item.selected then
    key = 'selected'
    icon = DeviconsColumn.configs[key].icon
  elseif item.type == 'directory' then
    key = item.opened and 'opened' or 'closed'
    icon = DeviconsColumn.configs[key].icon
  else
    key = get_file_key(item.name)
    if key == 'default' then
      icon = DeviconsColumn.configs.default.icon
    else
      icon = DeviconsColumn.configs.files[key].icon
    end
  end
  return icon .. (' '):rep(icon_width - strwidth(icon))
end

function DeviconsColumn:_get_syntax_name(item, width)
  return 'devicons'
end

return DeviconsColumn
