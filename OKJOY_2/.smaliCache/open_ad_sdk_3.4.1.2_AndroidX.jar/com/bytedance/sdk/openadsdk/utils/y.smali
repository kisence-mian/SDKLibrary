.class public Lcom/bytedance/sdk/openadsdk/utils/y;
.super Ljava/lang/Object;
.source "OAIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/y$a;
    }
.end annotation


# static fields
.field private static volatile a:Ljava/lang/String;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/y;->a:Ljava/lang/String;

    .line 23
    const/4 v1, 0x0

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/utils/y;->b:Z

    .line 27
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/y;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v1

    const-string v2, "oaid"

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/y;->a:Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_20

    .line 31
    :cond_1f
    goto :goto_21

    .line 30
    :catchall_20
    move-exception v0

    .line 32
    :goto_21
    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .line 54
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/y;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/y;->b:Z

    if-nez v0, :cond_29

    .line 56
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getDevOaid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 58
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getDevOaid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/y;->a:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->c()V

    .line 62
    :cond_29
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/y;->a:Ljava/lang/String;

    if-nez v0, :cond_30

    const-string v0, ""

    goto :goto_32

    :cond_30
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/y;->a:Ljava/lang/String;

    :goto_32
    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 19
    sput-object p0, Lcom/bytedance/sdk/openadsdk/utils/y;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    .line 36
    :try_start_0
    new-instance p0, Lcom/bytedance/sdk/openadsdk/utils/y$1;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/y$1;-><init>()V

    invoke-static {p0}, Lcom/bytedance/embedapplog/AppLog;->setOaidObserver(Lcom/bytedance/embedapplog/IOaidObserver;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    .line 50
    goto :goto_a

    .line 49
    :catchall_9
    move-exception p0

    .line 51
    :goto_a
    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .line 19
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/utils/y;->b:Z

    return p0
.end method

.method static synthetic b()V
    .registers 0

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->c()V

    return-void
.end method

.method private static c()V
    .registers 2

    .line 66
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/y;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 67
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/y$a;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/y;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/y$a;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 69
    :cond_13
    return-void
.end method
