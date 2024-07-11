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
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e:Z

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

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

    .line 48
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    if-nez v0, :cond_17

    .line 49
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    monitor-enter v0

    .line 50
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    if-nez v1, :cond_12

    .line 51
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    .line 53
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 55
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a(I)V
    .registers 3

    .line 301
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b()Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 302
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 303
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    .line 304
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a;->h(Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 305
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/q$a;",
            ">;)V"
        }
    .end annotation

    .line 318
    if-eqz p1, :cond_5a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5a

    .line 322
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/q$a;

    .line 323
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 330
    :try_start_48
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    .line 332
    goto :goto_4d

    .line 331
    :catchall_4c
    move-exception v1

    .line 334
    :cond_4d
    :goto_4d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 336
    :try_start_53
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    .line 338
    goto :goto_58

    .line 337
    :catchall_57
    move-exception v0

    .line 340
    :cond_58
    :goto_58
    goto :goto_d

    .line 342
    :cond_59
    return-void

    .line 319
    :cond_5a
    :goto_5a
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g()V

    return-void
.end method

.method public static e()Ljava/io/File;
    .registers 3

    .line 349
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a:Ljava/io/File;

    if-nez v0, :cond_4d

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

    if-nez v0, :cond_29

    .line 354
    :cond_16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 355
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_31

    .line 357
    :cond_29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 360
    :goto_31
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
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_45

    .line 366
    goto :goto_4d

    .line 364
    :catchall_45
    move-exception v0

    .line 365
    const-string v1, "TemplateManager"

    const-string v2, "getTemplateDir error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    :cond_4d
    :goto_4d
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a:Ljava/io/File;

    return-object v0
.end method

.method private f()V
    .registers 3

    .line 64
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 76
    return-void
.end method

.method private g()V
    .registers 9

    .line 79
    const-string v0, "TemplateManager"

    const-string v1, "check template usable1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_a1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/q;->f()Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_a1

    .line 86
    :cond_15
    const/4 v2, 0x1

    .line 87
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/d/q$a;

    .line 89
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5d

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    goto :goto_5d

    .line 99
    :cond_5c
    goto :goto_1e

    .line 95
    :cond_5d
    :goto_5d
    const/4 v2, 0x0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check template usable3: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    nop

    .line 101
    :cond_83
    if-nez v2, :cond_88

    .line 103
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->d()V

    .line 106
    :cond_88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check template usable4: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e:Z

    .line 109
    return-void

    .line 82
    :cond_a1
    :goto_a1
    const-string v1, "check template usable2"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private h()V
    .registers 5

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
    .registers 12

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "TemplateManager"

    if-eqz v0, :cond_10

    .line 136
    const-string p1, "loadTemplate error1"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 141
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 142
    if-eqz p1, :cond_1f

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 146
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadTemplate error2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 150
    :cond_36
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/q;->a()Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object p1

    .line 153
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object v0

    .line 156
    const/4 v2, 0x0

    if-eqz p1, :cond_226

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/q;->f()Z

    move-result v3

    if-nez v3, :cond_53

    goto/16 :goto_226

    .line 164
    :cond_53
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/q;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b(Ljava/lang/String;)Z

    move-result v3

    .line 165
    if-nez v3, :cond_71

    .line 166
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 167
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 168
    const-string p1, "loadTemplate error4"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void

    .line 174
    :cond_71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 175
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 177
    if-eqz v0, :cond_10d

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_89

    goto/16 :goto_10d

    .line 181
    :cond_89
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 183
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    const-string v0, "loadTemplate update2"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_119

    .line 187
    :cond_a1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/sdk/openadsdk/core/d/q$a;

    .line 188
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 189
    if-nez v7, :cond_c3

    .line 191
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e4

    .line 195
    :cond_c3
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/q$a;

    move-result-object v7

    .line 196
    if-eqz v7, :cond_e4

    .line 197
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->b()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e4

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e4

    .line 198
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_e4
    :goto_e4
    goto :goto_a9

    .line 206
    :cond_e5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ed
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_107

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/d/q$a;

    .line 207
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 208
    if-nez v6, :cond_106

    .line 209
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_106
    goto :goto_ed

    .line 213
    :cond_107
    const-string v0, "loadTemplate update3"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_119

    .line 179
    :cond_10d
    :goto_10d
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/q;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    const-string v0, "loadTemplate update1"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_119
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_121
    .catchall {:try_start_10 .. :try_end_121} :catchall_236

    const-string v6, ".tmp"

    if-eqz v5, :cond_1a3

    :try_start_125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/d/q$a;

    .line 219
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a()Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 221
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_156
    .catchall {:try_start_125 .. :try_end_156} :catchall_236

    if-eqz v6, :cond_15d

    .line 226
    :try_start_158
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_15b
    .catchall {:try_start_158 .. :try_end_15b} :catchall_15c

    .line 228
    goto :goto_15d

    .line 227
    :catchall_15c
    move-exception v6

    .line 230
    :cond_15d
    :goto_15d
    :try_start_15d
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_161
    .catchall {:try_start_15d .. :try_end_161} :catchall_236

    if-eqz v6, :cond_168

    .line 232
    :try_start_163
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_166
    .catchall {:try_start_163 .. :try_end_166} :catchall_167

    .line 234
    goto :goto_168

    .line 233
    :catchall_167
    move-exception v6

    .line 237
    :cond_168
    :goto_168
    :try_start_168
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v6

    .line 238
    new-instance v7, Lcom/bytedance/sdk/adnet/b/c;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5, v6}, Lcom/bytedance/sdk/adnet/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 239
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/adnet/b/c;->build(Lcom/bytedance/sdk/adnet/core/l;)V
    :try_end_184
    .catchall {:try_start_168 .. :try_end_184} :catchall_236

    .line 243
    :try_start_184
    invoke-virtual {v6}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v5
    :try_end_188
    .catchall {:try_start_184 .. :try_end_188} :catchall_189

    .line 246
    goto :goto_18b

    .line 244
    :catchall_189
    move-exception v5

    .line 245
    const/4 v5, 0x0

    .line 248
    :goto_18b
    if-eqz v5, :cond_195

    :try_start_18d
    invoke-virtual {v5}, Lcom/bytedance/sdk/adnet/core/m;->a()Z

    move-result v5

    if-nez v5, :cond_194

    goto :goto_195

    .line 255
    :cond_194
    goto :goto_11d

    .line 249
    :cond_195
    :goto_195
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 251
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Ljava/util/List;)V

    .line 252
    const-string p1, "loadTemplate error5"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void

    .line 259
    :cond_1a3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/d/q$a;

    .line 260
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/q$a;->a()Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_1de
    .catchall {:try_start_18d .. :try_end_1de} :catchall_236

    if-eqz v5, :cond_1e5

    .line 267
    :try_start_1e0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1e3
    .catchall {:try_start_1e0 .. :try_end_1e3} :catchall_1e4

    .line 269
    goto :goto_1e5

    .line 268
    :catchall_1e4
    move-exception v4

    .line 271
    :cond_1e5
    :goto_1e5
    :try_start_1e5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_1e9
    .catchall {:try_start_1e5 .. :try_end_1e9} :catchall_236

    if-eqz v4, :cond_1f0

    .line 273
    :try_start_1eb
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1ee
    .catchall {:try_start_1eb .. :try_end_1ee} :catchall_1ef

    .line 275
    goto :goto_1f0

    .line 274
    :catchall_1ef
    move-exception v3

    .line 277
    :cond_1f0
    :goto_1f0
    goto :goto_1a7

    .line 281
    :cond_1f1
    :try_start_1f1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a(Lcom/bytedance/sdk/openadsdk/core/d/q;)V

    .line 282
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->c()V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTemplate update success: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/q;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g()V

    .line 289
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 293
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->h()V

    .line 296
    goto :goto_23c

    .line 157
    :cond_226
    :goto_226
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 158
    const/16 p1, 0x6d

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(I)V

    .line 159
    const-string p1, "loadTemplate error3"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_235
    .catchall {:try_start_1f1 .. :try_end_235} :catchall_236

    .line 160
    return-void

    .line 294
    :catchall_236
    move-exception p1

    .line 295
    const-string v0, "loadTemplate error: "

    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    :goto_23c
    return-void
.end method

.method public b()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e:Z

    return v0
.end method

.method public c()Lcom/bytedance/sdk/openadsdk/core/d/q;
    .registers 2

    .line 121
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b()Lcom/bytedance/sdk/openadsdk/core/d/q;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .registers 2

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Z)V

    .line 126
    return-void
.end method
