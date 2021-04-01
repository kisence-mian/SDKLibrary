.class public Lcom/bytedance/sdk/openadsdk/utils/x;
.super Ljava/lang/Object;
.source "OAIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/x$a;
    }
.end annotation


# static fields
.field private static volatile a:Ljava/lang/String;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 22
    const-string v0, ""

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/x;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/x;->b:Z

    .line 27
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/x;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    const-string v1, "oaid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/x;->a:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_21} :catch_22

    .line 32
    :cond_21
    :goto_21
    return-void

    .line 30
    :catch_22
    move-exception v0

    goto :goto_21
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/x;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/x;->b:Z

    if-nez v0, :cond_29

    .line 56
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

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

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/x;->a:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/x;->c()V

    .line 62
    :cond_29
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/x;->a:Ljava/lang/String;

    if-nez v0, :cond_30

    const-string v0, ""

    :goto_2f
    return-object v0

    :cond_30
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/x;->a:Ljava/lang/String;

    goto :goto_2f
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    sput-object p0, Lcom/bytedance/sdk/openadsdk/utils/x;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 36
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/x$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/x$1;-><init>()V

    invoke-static {v0}, Lcom/bytedance/embedapplog/AppLog;->setOaidObserver(Lcom/bytedance/embedapplog/IOaidObserver;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 51
    :goto_8
    return-void

    .line 49
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 19
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/utils/x;->b:Z

    return p0
.end method

.method static synthetic b()V
    .registers 0

    .prologue
    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/x;->c()V

    return-void
.end method

.method private static c()V
    .registers 3

    .prologue
    .line 66
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/x;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/x$a;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/x;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    .line 69
    :cond_17
    return-void
.end method
