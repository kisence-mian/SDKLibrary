.class public Lcom/bytedance/sdk/openadsdk/core/t;
.super Ljava/lang/Object;
.source "SecSdkHelperInner.java"


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/core/t;


# instance fields
.field private b:Lcom/pgl/sys/ces/out/ISdkLite;

.field private volatile c:Z

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/t;->c:Z

    .line 22
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/t;->d:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "df979cdb-05a7-448c-bece-92d5005a1247"

    invoke-static {v0, v1, v2}, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->getSDK(Landroid/content/Context;Ljava/lang/String;I)Lcom/pgl/sys/ces/out/ISdkLite;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->d:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    invoke-interface {v0, p1, v3}, Lcom/pgl/sys/ces/out/ISdkLite;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    const-string v1, "app_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    invoke-interface {v1, v0}, Lcom/pgl/sys/ces/out/ISdkLite;->setCustomInfo(Ljava/util/HashMap;)V

    .line 40
    :cond_45
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/t;
    .registers 3

    .prologue
    .line 63
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/t;

    if-nez v0, :cond_13

    .line 64
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/t;

    monitor-enter v1

    .line 65
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/t;

    if-nez v0, :cond_12

    .line 66
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/t;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/t;

    .line 68
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 70
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/t;

    return-object v0

    .line 68
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private e(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 114
    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 116
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_23

    array-length v1, v2

    const/16 v3, 0x14

    if-lt v1, v3, :cond_23

    .line 119
    array-length v3, v2

    move v1, v0

    :goto_16
    if-ge v1, v3, :cond_23

    aget-object v4, v2, v1

    .line 120
    const-string v5, "00"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 121
    const/4 v0, 0x1

    .line 127
    :cond_23
    return v0

    .line 119
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    invoke-interface {v0}, Lcom/pgl/sys/ces/out/ISdkLite;->pullSg()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/t;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_10
    return-object v0

    .line 96
    :cond_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/t;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 100
    :cond_24
    const-string v0, ""
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_10

    .line 102
    :catch_27
    move-exception v0

    .line 104
    const-string v0, ""

    goto :goto_10
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 55
    :cond_6
    :goto_6
    return-void

    .line 46
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->d:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/pgl/sys/ces/out/ISdkLite;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    const-string v1, "app_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    invoke-interface {v1, v0}, Lcom/pgl/sys/ces/out/ISdkLite;->setCustomInfo(Ljava/util/HashMap;)V

    goto :goto_6
.end method

.method public c(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->c:Z

    if-eqz v0, :cond_5

    .line 84
    :goto_4
    return-void

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    invoke-interface {v0, p1}, Lcom/pgl/sys/ces/out/ISdkLite;->reportNow(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->c:Z

    goto :goto_4
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 140
    const-string v0, ""

    .line 146
    :goto_8
    return-object v0

    .line 142
    :cond_9
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 144
    const-string v0, ""

    goto :goto_8

    .line 146
    :cond_16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    invoke-interface {v1, v0}, Lcom/pgl/sys/ces/out/ISdkLite;->pullVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
