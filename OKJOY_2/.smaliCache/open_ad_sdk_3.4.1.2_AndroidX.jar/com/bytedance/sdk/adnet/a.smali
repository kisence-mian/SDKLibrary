.class public Lcom/bytedance/sdk/adnet/a;
.super Ljava/lang/Object;
.source "AdNetSdk.java"


# static fields
.field public static a:Lcom/bytedance/sdk/adnet/core/n;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/bytedance/sdk/adnet/c/b;

.field private static d:Z

.field private static e:Lcom/bytedance/sdk/adnet/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/adnet/a;->d:Z

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/adnet/c/b;
    .registers 2

    .line 97
    sget-object v0, Lcom/bytedance/sdk/adnet/a;->c:Lcom/bytedance/sdk/adnet/c/b;

    if-eqz v0, :cond_5

    .line 100
    return-object v0

    .line 98
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sITTNetDepend is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/core/l;
    .registers 1

    .line 58
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/k;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/core/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    .line 185
    if-nez p0, :cond_3

    .line 186
    return-void

    .line 189
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 190
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/adnet/a$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/adnet/a$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/Application;Z)V
    .registers 4

    .line 132
    if-eqz p0, :cond_34

    .line 135
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object p1

    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/f;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/adnet/c/f;->a(Landroid/content/Context;Z)V

    .line 136
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/f;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/f;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_29

    if-eqz p2, :cond_29

    .line 137
    :cond_1b
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/a/a;->c()V

    .line 138
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/a/a;->a()V

    .line 140
    :cond_29
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/f;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 141
    return-void

    .line 143
    :cond_30
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;

    .line 177
    return-void

    .line 133
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tryInitAdTTNet context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/bytedance/sdk/adnet/c/a;)V
    .registers 1

    .line 116
    sput-object p0, Lcom/bytedance/sdk/adnet/a;->e:Lcom/bytedance/sdk/adnet/c/a;

    .line 117
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/adnet/c/b;)V
    .registers 1

    .line 93
    sput-object p0, Lcom/bytedance/sdk/adnet/a;->c:Lcom/bytedance/sdk/adnet/c/b;

    .line 94
    return-void
.end method

.method public static a(Z)V
    .registers 1

    .line 104
    sput-boolean p0, Lcom/bytedance/sdk/adnet/a;->d:Z

    .line 105
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 71
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/adnet/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "VAdNetSdk"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/adnet/a;->b:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    .line 78
    :cond_1c
    goto :goto_26

    .line 76
    :catchall_1d
    move-exception p0

    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "init adnetsdk default directory error "

    invoke-static {p0, v1, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :goto_26
    sget-object p0, Lcom/bytedance/sdk/adnet/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static b()Z
    .registers 1

    .line 108
    sget-boolean v0, Lcom/bytedance/sdk/adnet/a;->d:Z

    return v0
.end method

.method public static c()V
    .registers 1

    .line 112
    sget-object v0, Lcom/bytedance/sdk/adnet/d/c$a;->a:Lcom/bytedance/sdk/adnet/d/c$a;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/c;->a(Lcom/bytedance/sdk/adnet/d/c$a;)V

    .line 113
    return-void
.end method

.method public static d()Lcom/bytedance/sdk/adnet/c/a;
    .registers 1

    .line 120
    sget-object v0, Lcom/bytedance/sdk/adnet/a;->e:Lcom/bytedance/sdk/adnet/c/a;

    return-object v0
.end method
