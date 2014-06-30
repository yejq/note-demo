# Markdown+Pandoc+MarkdownPad2+Github 打造传世笔记模板  #
决定不用word写笔记之后，用的是Windows7，找了许多高手做笔记的相关文章，用到的相关技术有DocBook、reStructuredText、MarkDown、Sphinx、Pandoc。

reStructuredText+Sphinx的组合是不错的选择，可惜reStructuredText没有令人满意的编辑器，eclipse有插件ReST，但是不好用，样式不好看，代码提示时好时坏；Sphinx是Python的帮助文档生成工具，很强大，试用了下的确很强大，可惜还是不太适合我，虽然有强大的BootStrap theme可以用，但是生成pdf很麻烦的说。-_-

折腾了N天，最终选择了`Markdown+Pandoc+MarkdownPad2+Github`的组合。

- Git的强大自不必说；
- Markdown的语法简洁容易上手；
- Pandoc功能强大，N多格式转换，支持自定义模板、footer、css，于是代码着色用了prism；
- MarkdownPad2实在是太好用的一款编辑器，尤其是导出pdf，还带标签哦，word导出不带标签的问题没有了，至于唯一的缺点就是Pro版收费，对于土（diao）豪（si）来说这都不是事，当然是购（po）买（jie）了。
- 本人还集成了小火箭哦，很酷炫。

## 工具 ##
- 安装pandoc，[http://johnmacfarlane.net/pandoc/installing.html](http://johnmacfarlane.net/pandoc/installing.html "http://johnmacfarlane.net/pandoc/installing.html")，安装好之后设置环境变量，WIN7下目录是C:\Users\{username}\AppData\Local\Pandoc，设置到Path中，重启电脑；
- 安装MarkdownPad2，找到一个绿色破解版（放到我的网盘上了，[http://yunpan.cn/QhPuD6RU9QCpP](http://yunpan.cn/QhPuD6RU9QCpP "http://yunpan.cn/QhPuD6RU9QCpP")，提取码：82b7），会报毒，不过貌似用着也没事（个人感觉）。解压到任意目录，启动程序，注册随便输入邮箱和key都可以，一定要设置不更新程序（选项-高级-自动更新频率设置为从不），如果不小心更新了，重新覆盖所有文件就可以了。

## 使用步骤 ##
1. 解压note-demo.rar，这是原版demo的完整压缩包；
2. 源码在source包里边，笔记写到index.md就可以，用MarkdownPad2打开它编辑，图片就放在images里边；
3. index.md编辑完之后，双击build.bat，即可完成html格式的输出，放在build/html/index.html；
4. pdf格式直接用MarkdownPad2导出就可以了；

好了，done。

### 附java代码着色例子 ###
`~~~~ {.language-java}`表示加上样式class=language-java：

~~~~ {.language-java}

	package org.example.config;
	
	@Configuration
	public class AppConfig {
	    private @Value("#{jdbcProperties.url}") String jdbcUrl;
	    private @Value("#{jdbcProperties.username}") String username;
	    private @Value("#{jdbcProperties.password}") String password;
	
	    @Bean
	    public FooService fooService() {
	        return new FooServiceImpl(fooRepository());
	    }
	
	    @Bean
	    public FooRepository fooRepository() {
	        return new HibernateFooRepository(sessionFactory());
	    }
	
	    @Bean
	    public SessionFactory sessionFactory() {
	        // wire up a session factory
	        AnnotationSessionFactoryBean asFactoryBean =
	            new AnnotationSessionFactoryBean();
	        asFactoryBean.setDataSource(dataSource());
	        // additional config
	        return asFactoryBean.getObject();
	    }
	
	    @Bean
	    public DataSource dataSource() {
	        return new DriverManagerDataSource(jdbcUrl, username, password);
	    }
	}
	
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

### 图片例子 ###
![](images/bd315c6034a85edf5f6d00ae49540923dc54755e.jpg)
![](images/20130816114129.jpg)