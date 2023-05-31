.class public Lcom/bytedance/sdk/adnet/a;
.super Ljava/lang/Object;
.source "AdNetSdk.java"


# static fields
.field public static a:Lcom/bytedance/sdk/adnet/core/o;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/bytedance/sdk/adnet/c/b;

.field private static d:Z

.field private static e:Lcom/bytedance/sdk/adnet/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/adnet/a;->d:Z

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/adnet/c/b;
    .registers 2

    .prologue
    .line 98
    sget-object v0, Lcom/bytedance/sdk/adnet/a;->c:Lcom/bytedance/sdk/adnet/c/b;

    if-nez v0, :cond_c

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sITTNetDepend is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_c
    sget-object v0, Lcom/bytedance/sdk/adnet/a;->c:Lcom/bytedance/sdk/adnet/c/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 2

    .prologue
    .line 60
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/l;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/IHttpStack;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 3

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/bytedance/sdk/adnet/core/l;->a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/IHttpStack;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 177
    if-nez p0, :cond_3

    .line 189
    :goto_2
    return-void

    .line 181
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/bytedance/sdk/adnet/a$2;

    const-string v2, "load_config"

    invoke-direct {v1, v2, v0}, Lcom/bytedance/sdk/adnet/a$2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 188
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/a$2;->start()V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Landroid/app/Application;Z)V
    .registers 5

    .prologue
    .line 132
    if-nez p0, :cond_a

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tryInitAdTTNet context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/g;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/adnet/c/f;->a(Landroid/content/Context;Z)V

    .line 136
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_31

    if-eqz p2, :cond_31

    .line 137
    :cond_23
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/a/a;->c()V

    .line 138
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/a/a;->a()V

    .line 140
    :cond_31
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 170
    :cond_37
    :goto_37
    return-void

    .line 143
    :cond_38
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/a/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;

    .line 144
    if-eqz p1, :cond_37

    .line 145
    new-instance v0, Lcom/bytedance/sdk/adnet/a$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/a$1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_37
.end method

.method public static a(Lcom/bytedance/sdk/adnet/c/a;)V
    .registers 1

    .prologue
    .line 117
    sput-object p0, Lcom/bytedance/sdk/adnet/a;->e:Lcom/bytedance/sdk/adnet/c/a;

    .line 118
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/adnet/c/b;)V
    .registers 1

    .prologue
    .line 94
    sput-object p0, Lcom/bytedance/sdk/adnet/a;->c:Lcom/bytedance/sdk/adnet/c/b;

    .line 95
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/adnet/core/o;)V
    .registers 1

    .prologue
    .line 86
    sput-object p0, Lcom/bytedance/sdk/adnet/a;->a:Lcom/bytedance/sdk/adnet/core/o;

    .line 87
    return-void
.end method

.method public static a(Z)V
    .registers 1

    .prologue
    .line 105
    sput-boolean p0, Lcom/bytedance/sdk/adnet/a;->d:Z

    .line 106
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 73
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/adnet/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "VAdNetSdk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/adnet/a;->b:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1f

    .line 82
    :cond_1c
    :goto_1c
    sget-object v0, Lcom/bytedance/sdk/adnet/a;->b:Ljava/lang/String;

    return-object v0

    .line 78
    :catch_1f
    move-exception v0

    .line 79
    const-string v1, "init adnetsdk default directory error "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c
.end method

.method public static b()Z
    .registers 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/bytedance/sdk/adnet/a;->d:Z

    return v0
.end method

.method public static c()V
    .registers 1

    .prologue
    .line 113
    sget-object v0, Lcom/bytedance/sdk/adnet/d/d$a;->a:Lcom/bytedance/sdk/adnet/d/d$a;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/d/d;->a(Lcom/bytedance/sdk/adnet/d/d$a;)V

    .line 114
    return-void
.end method

.method public static d()Lcom/bytedance/sdk/adnet/c/a;
    .registers 1

    .prologue
    .line 121
    sget-object v0, Lcom/bytedance/sdk/adnet/a;->e:Lcom/bytedance/sdk/adnet/c/a;

    return-object v0
.end method
