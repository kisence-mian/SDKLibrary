.class Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;
.super Ljava/lang/Object;
.source "TemplateManager.java"


# static fields
.field private static a:Ljava/io/File;

.field private static volatile b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;


# instance fields
.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Z

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private g:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e:Z

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 59
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f()V

    .line 60
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    if-nez v0, :cond_13

    .line 49
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    monitor-enter v1

    .line 50
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    if-nez v0, :cond_12

    .line 51
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    .line 53
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 55
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    return-object v0

    .line 53
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(I)V
    .registers 4

    .prologue
    .line 301
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b()Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 302
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 303
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 304
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->h(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 305
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/o$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 342
    :cond_8
    return-void

    .line 322
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;

    .line 323
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 330
    :try_start_48
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_57

    .line 334
    :cond_4b
    :goto_4b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 336
    :try_start_51
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_d

    .line 337
    :catch_55
    move-exception v0

    goto :goto_d

    .line 331
    :catch_57
    move-exception v2

    goto :goto_4b
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g()V

    return-void
.end method

.method public static e()Ljava/io/File;
    .registers 3

    .prologue
    .line 349
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a:Ljava/io/File;

    if-nez v0, :cond_3b

    .line 352
    :try_start_4
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 353
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 354
    :cond_16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 355
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 360
    :goto_28
    new-instance v1, Ljava/io/File;

    const-string v2, "tt_tmpl_pkg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 361
    new-instance v0, Ljava/io/File;

    const-string v2, "template"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 363
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a:Ljava/io/File;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_3b} :catch_47

    .line 368
    :cond_3b
    :goto_3b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a:Ljava/io/File;

    return-object v0

    .line 357
    :cond_3e
    :try_start_3e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_45} :catch_47

    move-result-object v0

    goto :goto_28

    .line 364
    :catch_47
    move-exception v0

    .line 365
    const-string v1, "TemplateManager"

    const-string v2, "getTemplateDir error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b
.end method

.method private f()V
    .registers 4

    .prologue
    .line 64
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)V

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    .line 76
    return-void
.end method

.method private g()V
    .registers 8

    .prologue
    .line 79
    const-string v0, "TemplateManager"

    const-string v1, "check template usable1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->e()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 82
    :cond_13
    const-string v0, "TemplateManager"

    const-string v1, "check template usable2"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_1a
    return-void

    .line 86
    :cond_1b
    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;

    .line 89
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_61

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 95
    :cond_61
    const/4 v0, 0x0

    .line 96
    const-string v1, "TemplateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check template usable3: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_88
    if-nez v0, :cond_8d

    .line 103
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->d()V

    .line 106
    :cond_8d
    const-string v1, "TemplateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check template usable4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e:Z

    goto/16 :goto_1a

    :cond_a9
    move v0, v1

    goto :goto_88
.end method

.method private h()V
    .registers 5

    .prologue
    .line 309
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-lez v0, :cond_1e

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 312
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d()V

    .line 315
    :cond_1e
    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 11

    .prologue
    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 136
    const-string v0, "TemplateManager"

    const-string v1, "loadTemplate error1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_f
    return-void

    .line 141
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 142
    if-eqz p1, :cond_1f

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 146
    :cond_1f
    const-string v0, "TemplateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadTemplate error2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_37} :catch_38

    goto :goto_f

    .line 294
    :catch_38
    move-exception v0

    .line 295
    const-string v1, "TemplateManager"

    const-string v2, "loadTemplate error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 150
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v1

    .line 153
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v2

    .line 156
    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/o;->e()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 157
    :cond_5b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 158
    const/16 v0, 0x6d

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(I)V

    .line 159
    const-string v0, "TemplateManager"

    const-string v1, "loadTemplate error3"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 164
    :cond_6e
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    .line 165
    if-nez v0, :cond_8f

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 168
    const-string v0, "TemplateManager"

    const-string v1, "loadTemplate error4"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 174
    :cond_8f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 177
    if-eqz v2, :cond_a5

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_138

    .line 179
    :cond_a5
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    const-string v0, "TemplateManager"

    const-string v2, "loadTemplate update1"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_b3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;

    .line 219
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 221
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_ef} :catch_38

    move-result v7

    if-eqz v7, :cond_f5

    .line 226
    :try_start_f2
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_f5
    .catch Ljava/lang/Throwable; {:try_start_f2 .. :try_end_f5} :catch_24c

    .line 230
    :cond_f5
    :goto_f5
    :try_start_f5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_f5 .. :try_end_f8} :catch_38

    move-result v7

    if-eqz v7, :cond_fe

    .line 232
    :try_start_fb
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_fe
    .catch Ljava/lang/Throwable; {:try_start_fb .. :try_end_fe} :catch_24f

    .line 237
    :cond_fe
    :goto_fe
    :try_start_fe
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v5

    .line 238
    new-instance v7, Lcom/bytedance/sdk/adnet/b/c;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v0, v5}, Lcom/bytedance/sdk/adnet/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 239
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->c()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/adnet/b/c;->build(Lcom/bytedance/sdk/adnet/core/m;)V
    :try_end_11a
    .catch Ljava/lang/Throwable; {:try_start_fe .. :try_end_11a} :catch_38

    .line 243
    :try_start_11a
    invoke-virtual {v5}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/n;
    :try_end_11d
    .catch Ljava/lang/Throwable; {:try_start_11a .. :try_end_11d} :catch_1c1

    move-result-object v0

    .line 248
    :goto_11e
    if-eqz v0, :cond_126

    :try_start_120
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/n;->a()Z

    move-result v0

    if-nez v0, :cond_b7

    .line 249
    :cond_126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 251
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Ljava/util/List;)V

    .line 252
    const-string v0, "TemplateManager"

    const-string v1, "loadTemplate error5"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 181
    :cond_138
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_152

    .line 183
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    const-string v0, "TemplateManager"

    const-string v2, "loadTemplate update2"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b3

    .line 187
    :cond_152
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15a
    :goto_15a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_196

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;

    .line 188
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 189
    if-nez v6, :cond_174

    .line 191
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15a

    .line 195
    :cond_174
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/o$a;

    move-result-object v6

    .line 196
    if-eqz v6, :cond_15a

    .line 197
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15a

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15a

    .line 198
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15a

    .line 206
    :cond_196
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19e
    :goto_19e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;

    .line 207
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/o;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 208
    if-nez v5, :cond_19e

    .line 209
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19e

    .line 213
    :cond_1b8
    const-string v0, "TemplateManager"

    const-string v2, "loadTemplate update3"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b3

    .line 244
    :catch_1c1
    move-exception v0

    .line 245
    const/4 v0, 0x0

    goto/16 :goto_11e

    .line 259
    :cond_1c5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c9
    :goto_1c9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_213

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/o$a;

    .line 260
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/o$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_201
    .catch Ljava/lang/Throwable; {:try_start_120 .. :try_end_201} :catch_38

    move-result v4

    if-eqz v4, :cond_207

    .line 267
    :try_start_204
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_207
    .catch Ljava/lang/Throwable; {:try_start_204 .. :try_end_207} :catch_252

    .line 271
    :cond_207
    :goto_207
    :try_start_207
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_20a
    .catch Ljava/lang/Throwable; {:try_start_207 .. :try_end_20a} :catch_38

    move-result v3

    if-eqz v3, :cond_1c9

    .line 273
    :try_start_20d
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_210
    .catch Ljava/lang/Throwable; {:try_start_20d .. :try_end_210} :catch_211

    goto :goto_1c9

    .line 274
    :catch_211
    move-exception v0

    goto :goto_1c9

    .line 281
    :cond_213
    :try_start_213
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a(Lcom/bytedance/sdk/openadsdk/core/d/o;)V

    .line 282
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->c()V

    .line 284
    const-string v0, "TemplateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTemplate update success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g()V

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 293
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->h()V
    :try_end_24a
    .catch Ljava/lang/Throwable; {:try_start_213 .. :try_end_24a} :catch_38

    goto/16 :goto_f

    .line 227
    :catch_24c
    move-exception v7

    goto/16 :goto_f5

    .line 233
    :catch_24f
    move-exception v5

    goto/16 :goto_fe

    .line 268
    :catch_252
    move-exception v3

    goto :goto_207
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e:Z

    return v0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/core/d/o;
    .registers 2

    .prologue
    .line 121
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/o;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Z)V

    .line 126
    return-void
.end method
