.class public final Lcom/anythink/core/common/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/anythink/core/common/a/b;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static declared-synchronized a()Lcom/anythink/core/common/a/b;
    .registers 2

    const-class v0, Lcom/anythink/core/common/a/b;

    monitor-enter v0

    .line 27
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/a/b;->a:Lcom/anythink/core/common/a/b;

    if-nez v1, :cond_e

    .line 28
    new-instance v1, Lcom/anythink/core/common/a/b;

    invoke-direct {v1}, Lcom/anythink/core/common/a/b;-><init>()V

    sput-object v1, Lcom/anythink/core/common/a/b;->a:Lcom/anythink/core/common/a/b;

    .line 30
    :cond_e
    sget-object v1, Lcom/anythink/core/common/a/b;->a:Lcom/anythink/core/common/a/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 26
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b()Ljava/lang/String;
    .registers 2

    .line 34
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->a()Lcom/anythink/core/common/d/m;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/anythink/core/common/d/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2e

    .line 40
    :cond_29
    invoke-virtual {v0}, Lcom/anythink/core/common/d/m;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    :cond_2e
    :goto_2e
    const-string v0, "https://adx.anythinktech.com/bid"

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .registers 2

    .line 44
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->a()Lcom/anythink/core/common/d/m;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/anythink/core/common/d/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2e

    .line 50
    :cond_29
    invoke-virtual {v0}, Lcom/anythink/core/common/d/m;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_2e
    :goto_2e
    const-string v0, "https://adx.anythinktech.com/request"

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .registers 2

    .line 55
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->a()Lcom/anythink/core/common/d/m;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/anythink/core/common/d/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2e

    .line 61
    :cond_29
    invoke-virtual {v0}, Lcom/anythink/core/common/d/m;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_2e
    :goto_2e
    const-string v0, "https://adxtk.anythinktech.com/v1"

    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .registers 2

    .line 65
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->a()Lcom/anythink/core/common/d/m;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/anythink/core/common/d/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2e

    .line 71
    :cond_29
    invoke-virtual {v0}, Lcom/anythink/core/common/d/m;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_2e
    :goto_2e
    const-string v0, "https://adx.anythinktech.com/openapi/req"

    return-object v0
.end method
