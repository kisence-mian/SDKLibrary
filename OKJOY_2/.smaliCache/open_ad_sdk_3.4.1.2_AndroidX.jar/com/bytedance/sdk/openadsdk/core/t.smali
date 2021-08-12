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
    .registers 7

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->c:Z

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->d:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/t;->c()Lcom/pgl/sys/ces/out/ISdkInfo;

    move-result-object v3

    const-string v4, "df979cdb-05a7-448c-bece-92d5005a1247"

    invoke-static {v2, v4, v0, v3}, Lcom/pgl/sys/ces/out/StcSDKLiteFactory;->getSDK(Landroid/content/Context;Ljava/lang/String;ILcom/pgl/sys/ces/out/ISdkInfo;)Lcom/pgl/sys/ces/out/ISdkLite;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->d:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    invoke-interface {v0, p1, v1}, Lcom/pgl/sys/ces/out/ISdkLite;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 47
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_id"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    invoke-interface {v0, p1}, Lcom/pgl/sys/ces/out/ISdkLite;->setCustomInfo(Ljava/util/HashMap;)V

    .line 50
    :cond_47
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/t;
    .registers 3

    .line 160
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/t;

    if-nez v0, :cond_17

    .line 161
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/t;

    monitor-enter v0

    .line 162
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/t;

    if-nez v1, :cond_12

    .line 163
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/t;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/t;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/t;

    .line 165
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 167
    :cond_17
    :goto_17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/t;->a:Lcom/bytedance/sdk/openadsdk/core/t;

    return-object p0
.end method

.method private c()Lcom/pgl/sys/ces/out/ISdkInfo;
    .registers 3

    .line 53
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/t$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/t$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/t;Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    .line 132
    return-object v1
.end method

.method private e(Ljava/lang/String;)Z
    .registers 7

    .line 211
    nop

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    .line 213
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 215
    if-eqz p1, :cond_29

    array-length v0, p1

    const/16 v2, 0x14

    if-lt v0, v2, :cond_29

    .line 216
    array-length v0, p1

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_29

    aget-object v3, p1, v2

    .line 217
    const-string v4, "00"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 218
    nop

    .line 219
    const/4 v1, 0x1

    goto :goto_29

    .line 216
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 224
    :cond_29
    :goto_29
    return v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    invoke-interface {v0}, Lcom/pgl/sys/ces/out/ISdkLite;->onEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    return-void

    .line 143
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 144
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->d:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/pgl/sys/ces/out/ISdkLite;->setParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 148
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 149
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_id"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    invoke-interface {v0, p1}, Lcom/pgl/sys/ces/out/ISdkLite;->setCustomInfo(Ljava/util/HashMap;)V

    .line 152
    :cond_38
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .line 189
    const-string v0, ""

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    invoke-interface {v1}, Lcom/pgl/sys/ces/out/ISdkLite;->pullSg()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/t;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 191
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :cond_13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/t;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 195
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_27

    return-object v0

    .line 197
    :cond_26
    return-object v0

    .line 199
    :catch_27
    move-exception v1

    .line 201
    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .line 176
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->c:Z

    if-eqz v0, :cond_5

    .line 177
    return-void

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    invoke-interface {v0, p1}, Lcom/pgl/sys/ces/out/ISdkLite;->reportNow(Ljava/lang/String;)V

    .line 180
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/t;->c:Z

    .line 181
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    .line 237
    return-object v1

    .line 239
    :cond_9
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 241
    return-object v1

    .line 243
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/t;->b:Lcom/pgl/sys/ces/out/ISdkLite;

    invoke-interface {v0, p1}, Lcom/pgl/sys/ces/out/ISdkLite;->pullVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
