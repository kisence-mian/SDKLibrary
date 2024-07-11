.class public Lcom/kwai/sodler/lib/i;
.super Lcom/kwai/sodler/lib/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwai/sodler/lib/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwai/sodler/lib/i;->f:Lcom/kwai/sodler/lib/b/b;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/kwai/sodler/lib/i;->f:Lcom/kwai/sodler/lib/b/b;

    iget-object v0, v0, Lcom/kwai/sodler/lib/b/b;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_70

    if-eqz p1, :cond_70

    iget-object v0, p0, Lcom/kwai/sodler/lib/i;->f:Lcom/kwai/sodler/lib/b/b;

    iget-object v0, v0, Lcom/kwai/sodler/lib/b/b;->h:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-static {v2}, Lcom/kwai/sodler/lib/c/a;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_18

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3b

    goto :goto_18

    :cond_3b
    invoke-direct {p0, p1}, Lcom/kwai/sodler/lib/i;->b(Ljava/util/Set;)V

    new-instance p1, Lcom/kwai/sodler/lib/ext/PluginError$LoadError;

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Md5 check error,find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",except "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xfa8

    invoke-direct {p1, v0, v1}, Lcom/kwai/sodler/lib/ext/PluginError$LoadError;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    :cond_70
    return-void
.end method

.method private b(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/io/File;)Z

    goto :goto_4

    :cond_14
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Install plugin so libs, destDir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sodler.simple.SoLib"

    invoke-static {v1, v0}, Lcom/kwai/sodler/lib/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2b

    return-object v0

    :cond_2b
    new-instance v1, Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/kwai/sodler/lib/i;->c:Lcom/kwai/sodler/lib/ext/c;

    invoke-virtual {v3}, Lcom/kwai/sodler/lib/ext/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kwai/sodler/lib/c/a;->e(Ljava/io/File;)V

    invoke-static {p2, v1}, Lcom/kwai/sodler/lib/c/c;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_60

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_47
    :goto_47
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v1, v2, p3}, Lcom/kwai/sodler/lib/c/c;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_47

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_5d
    invoke-static {v1}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/io/File;)Z

    :cond_60
    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const-string v0, "Sodler.simple.SoLib"

    const-string v1, "Install plugin so libs."

    invoke-static {v0, v1}, Lcom/kwai/sodler/lib/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/kwai/sodler/lib/i;->a(Ljava/io/File;)V

    :try_start_f
    invoke-virtual {p0, v0}, Lcom/kwai/sodler/lib/i;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/kwai/sodler/lib/i;->a:Ljava/io/File;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_48

    const/16 v1, 0xfa4

    :try_start_17
    iget-object v2, p0, Lcom/kwai/sodler/lib/i;->a:Ljava/io/File;

    invoke-virtual {p0, p1, v0, v2}, Lcom/kwai/sodler/lib/i;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Ljava/util/Set;

    move-result-object v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_41

    invoke-direct {p0, v0}, Lcom/kwai/sodler/lib/i;->a(Ljava/util/Set;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    monitor-enter v0

    :try_start_25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/kwai/sodler/lib/i;->a:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/kwai/sodler/lib/ext/d;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_37

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_3e

    invoke-super {p0, p1, p2}, Lcom/kwai/sodler/lib/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catchall_37
    move-exception p1

    :try_start_38
    new-instance p2, Lcom/kwai/sodler/lib/ext/PluginError$LoadError;

    invoke-direct {p2, p1, v1}, Lcom/kwai/sodler/lib/ext/PluginError$LoadError;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    :catchall_3e
    move-exception p1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_3e

    throw p1

    :catch_41
    move-exception p1

    new-instance p2, Lcom/kwai/sodler/lib/ext/PluginError$LoadError;

    invoke-direct {p2, p1, v1}, Lcom/kwai/sodler/lib/ext/PluginError$LoadError;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    :catch_48
    move-exception p1

    new-instance p2, Lcom/kwai/sodler/lib/ext/PluginError$LoadError;

    const/16 v0, 0xfa3

    invoke-direct {p2, p1, v0}, Lcom/kwai/sodler/lib/ext/PluginError$LoadError;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public b(Ljava/io/File;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iget-object v1, p0, Lcom/kwai/sodler/lib/i;->c:Lcom/kwai/sodler/lib/ext/c;

    invoke-virtual {v1}, Lcom/kwai/sodler/lib/ext/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwai/sodler/lib/c/a;->e(Ljava/io/File;)V

    return-object v0
.end method
