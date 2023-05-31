.class public final Lcom/bytedance/applog/AppLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UMENG_CATEGORY:Ljava/lang/String; = "umeng"

.field private static volatile a:Lcom/bytedance/applog/b/h;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static b:Z

.field private static c:Z

.field private static d:Lcom/bytedance/applog/util/a;

.field private static volatile e:Lcom/bytedance/applog/IExtraParams;

.field public static sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sDevice:Lcom/bytedance/applog/b/i;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static sIAppParam:Lcom/bytedance/applog/IAppParam;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/applog/AppLog;->b:Z

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/applog/AppLog;->c:Z

    .line 64
    new-instance v0, Lcom/bytedance/applog/util/a;

    invoke-direct {v0}, Lcom/bytedance/applog/util/a;-><init>()V

    sput-object v0, Lcom/bytedance/applog/AppLog;->d:Lcom/bytedance/applog/util/a;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/bytedance/applog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    if-eqz p0, :cond_4

    move-object v0, p0

    .line 242
    :cond_4
    if-nez v0, :cond_7

    .line 245
    :goto_6
    return-object p1

    :cond_7
    move-object p1, v0

    goto :goto_6
.end method

.method public static addDataObserver(Lcom/bytedance/applog/IDataObserver;)V
    .registers 2
    .param p0, "listener"    # Lcom/bytedance/applog/IDataObserver;

    .prologue
    .line 667
    sget-object v0, Lcom/bytedance/applog/AppLog;->d:Lcom/bytedance/applog/util/a;

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/util/a;->a(Lcom/bytedance/applog/IDataObserver;)V

    .line 668
    return-void
.end method

.method public static flush()V
    .registers 0

    .prologue
    .line 120
    invoke-static {}, Lcom/bytedance/applog/a/e;->a()V

    .line 121
    return-void
.end method

.method public static getAbConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/b/h;

    if-eqz v0, :cond_22

    .line 219
    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/b/h;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_21

    .line 222
    const-string v1, "vid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    const-string v2, "val"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    sget-object v2, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    invoke-virtual {v2, v1}, Lcom/bytedance/applog/b/i;->f(Ljava/lang/String;)V

    .line 225
    invoke-static {v0, p1}, Lcom/bytedance/applog/AppLog;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 230
    .end local p1    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_21
    :goto_21
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_22
    const/4 p1, 0x0

    goto :goto_21
.end method

.method public static getAbConfig()Lorg/json/JSONObject;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 255
    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/b/h;

    if-eqz v0, :cond_b

    .line 256
    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->x()Lorg/json/JSONObject;

    move-result-object v0

    .line 258
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getAbConfigVersion()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 268
    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/b/h;

    if-eqz v0, :cond_b

    .line 269
    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->w()Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getAbSDKVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 202
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    if-eqz v0, :cond_b

    .line 203
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/i;->q()Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getAid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 275
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    if-eqz v0, :cond_b

    .line 276
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/i;->h()Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getAutoActiveState()Z
    .registers 1

    .prologue
    .line 568
    sget-boolean v0, Lcom/bytedance/applog/AppLog;->b:Z

    return v0
.end method

.method public static getClientUdid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 644
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    if-eqz v0, :cond_b

    .line 645
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/i;->m()Ljava/lang/String;

    move-result-object v0

    .line 647
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getCustomNetParams()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    sget-object v0, Lcom/bytedance/applog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static getDataObserver()Lcom/bytedance/applog/IDataObserver;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 676
    sget-object v0, Lcom/bytedance/applog/AppLog;->d:Lcom/bytedance/applog/util/a;

    return-object v0
.end method

.method public static getDid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 588
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    if-eqz v0, :cond_b

    .line 589
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 591
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getEncryptAndCompress()Z
    .registers 1

    .prologue
    .line 552
    const/4 v0, 0x1

    return v0
.end method

.method public static getExtraParams()Lcom/bytedance/applog/IExtraParams;
    .registers 1

    .prologue
    .line 156
    sget-object v0, Lcom/bytedance/applog/AppLog;->e:Lcom/bytedance/applog/IExtraParams;

    return-object v0
.end method

.method public static getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "fallbackValue":Ljava/lang/Object;, "TT;"
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    if-eqz v0, :cond_b

    .line 283
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/applog/b/i;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getIAppParam()Lcom/bytedance/applog/IAppParam;
    .registers 1

    .prologue
    .line 166
    sget-object v0, Lcom/bytedance/applog/AppLog;->sIAppParam:Lcom/bytedance/applog/IAppParam;

    return-object v0
.end method

.method public static getIid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 611
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    if-eqz v0, :cond_b

    .line 612
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/i;->j()Ljava/lang/String;

    move-result-object v0

    .line 614
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getOpenUdid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 655
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    if-eqz v0, :cond_b

    .line 656
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/i;->n()Ljava/lang/String;

    move-result-object v0

    .line 658
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getSsid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 622
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    if-eqz v0, :cond_b

    .line 623
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/i;->k()Ljava/lang/String;

    move-result-object v0

    .line 625
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getSuccRate()I
    .registers 1

    .prologue
    .line 680
    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/b/h;

    if-eqz v0, :cond_b

    .line 681
    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->l()I

    move-result v0

    .line 683
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getUdid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 600
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    if-eqz v0, :cond_b

    .line 601
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/i;->i()Ljava/lang/String;

    move-result-object v0

    .line 603
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getUserUniqueID()Ljava/lang/String;
    .registers 1

    .prologue
    .line 633
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    if-eqz v0, :cond_b

    .line 634
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/i;->l()Ljava/lang/String;

    move-result-object v0

    .line 636
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "config"    # Lcom/bytedance/applog/InitConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    sget-boolean v0, Lcom/bytedance/applog/util/i;->b:Z

    if-nez v0, :cond_4a

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_4a

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    .line 102
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 104
    invoke-static {}, Lcom/bytedance/applog/a/e;->b()Lcom/bytedance/applog/a/e;

    move-result-object v1

    .line 105
    new-instance v4, Lcom/bytedance/applog/b/h;

    invoke-direct {v4, v0, p1}, Lcom/bytedance/applog/b/h;-><init>(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V

    .line 106
    new-instance v5, Lcom/bytedance/applog/b/i;

    invoke-direct {v5, v0, v4}, Lcom/bytedance/applog/b/i;-><init>(Landroid/content/Context;Lcom/bytedance/applog/b/h;)V

    .line 107
    new-instance v6, Lcom/bytedance/applog/collector/a;

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getPicker()Lcom/bytedance/applog/IPicker;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bytedance/applog/collector/a;-><init>(Lcom/bytedance/applog/IPicker;)V

    .line 108
    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/bytedance/applog/a/e;->a(Landroid/app/Application;Lcom/bytedance/applog/b/h;Lcom/bytedance/applog/b/i;Lcom/bytedance/applog/collector/a;)V

    .line 109
    sput-object v4, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/b/h;

    .line 110
    sput-object v5, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    .line 111
    invoke-static {v2, v3}, Lcom/bytedance/applog/util/e;->a(J)V

    .line 112
    const-string v0, "Inited"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    :goto_49
    return-void

    .line 97
    :cond_4a
    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/b/h;

    if-eqz v0, :cond_18

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Init Twice!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_49
.end method

.method public static manualActivate()Z
    .registers 1

    .prologue
    .line 577
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    if-eqz v0, :cond_d

    .line 578
    invoke-static {}, Lcom/bytedance/applog/a/e;->b()Lcom/bytedance/applog/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/a/e;->e()Z

    move-result v0

    .line 580
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static onEvent(Ljava/lang/String;)V
    .registers 10
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 357
    const-string v1, "umeng"

    move-object v2, p0

    move-wide v6, v4

    move-object v8, v3

    invoke-static/range {v1 .. v8}, Lcom/bytedance/applog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 358
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 347
    const-string v1, "umeng"

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v6, v4

    invoke-static/range {v1 .. v8}, Lcom/bytedance/applog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 348
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 16
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # J
    .param p5, "extValue"    # J

    .prologue
    .line 334
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v1 .. v8}, Lcom/bytedance/applog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 335
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .registers 17
    .param p0, "category"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # J
    .param p5, "extValue"    # J
    .param p7, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 313
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 314
    :cond_c
    sget-boolean v0, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v0, :cond_16

    .line 315
    const-string v0, "category or label is empty"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    :cond_16
    new-instance v0, Lcom/bytedance/applog/d/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/applog/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/bytedance/applog/a/e;->a(Lcom/bytedance/applog/d/a;)V

    .line 321
    :goto_38
    return-void

    .line 320
    :cond_39
    new-instance v0, Lcom/bytedance/applog/d/c;

    if-eqz p7, :cond_4d

    invoke-virtual/range {p7 .. p7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_41
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/applog/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/applog/a/e;->a(Lcom/bytedance/applog/d/a;)V

    goto :goto_38

    :cond_4d
    const/4 v8, 0x0

    goto :goto_41
.end method

.method public static onEventV3(Ljava/lang/String;)V
    .registers 4
    .param p0, "event"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 361
    new-instance v0, Lcom/bytedance/applog/d/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/applog/d/e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/applog/a/e;->a(Lcom/bytedance/applog/d/a;)V

    .line 362
    return-void
.end method

.method public static onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "event"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "params"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 386
    if-eqz p1, :cond_31

    :try_start_3
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31

    .line 387
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_e} :catch_35

    .line 388
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 389
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 390
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_29} :catch_2a

    goto :goto_16

    .line 393
    :catch_2a
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 394
    :goto_2e
    invoke-static {v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    .line 396
    :cond_31
    :goto_31
    invoke-static {p0, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 397
    return-void

    .line 393
    :catch_35
    move-exception v1

    goto :goto_2e

    :cond_37
    move-object v0, v1

    goto :goto_31
.end method

.method public static onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "event"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "params"    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 370
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 371
    const-string v1, "eventName is empty"

    invoke-static {v1, v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    new-instance v1, Lcom/bytedance/applog/d/i;

    const-string v2, ""

    const-string v3, "2"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/applog/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/bytedance/applog/a/e;->a(Lcom/bytedance/applog/d/a;)V

    .line 374
    :cond_19
    new-instance v1, Lcom/bytedance/applog/d/e;

    const/4 v2, 0x0

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_22
    invoke-direct {v1, p0, v2, v0}, Lcom/bytedance/applog/d/e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/applog/a/e;->a(Lcom/bytedance/applog/d/a;)V

    .line 375
    return-void
.end method

.method public static onInternalEventV3(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "event"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "params"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "secondAppId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "secondAppName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "productType"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 475
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 476
    const-string v1, "both second appid and second app name is empty, return"

    invoke-static {v1, v0}, Lcom/bytedance/applog/util/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 497
    :goto_12
    return-void

    .line 480
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "second_app_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 482
    if-eqz p1, :cond_56

    :try_start_28
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_56

    .line 483
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_33} :catch_72

    .line 484
    :try_start_33
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 485
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 486
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_4e} :catch_4f

    goto :goto_3b

    .line 493
    :catch_4f
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 494
    :goto_53
    invoke-static {v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    .line 496
    :cond_56
    :goto_56
    invoke-static {v2, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_12

    .line 488
    :cond_5a
    :try_start_5a
    const-string v0, "params_for_special"

    const-string v3, "second_app"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    const-string v0, "second_appid"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string v0, "second_appname"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    const-string v0, "product_type"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_70} :catch_4f

    move-object v0, v1

    goto :goto_56

    .line 493
    :catch_72
    move-exception v1

    goto :goto_53
.end method

.method public static onInternalEventV3(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "event"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "params"    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "secondAppId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "secondAppName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "productType"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 428
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 429
    const-string v0, "both second appid and second app name is empty, return"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    .end local p1    # "params":Lorg/json/JSONObject;
    :goto_12
    return-void

    .line 432
    .restart local p1    # "params":Lorg/json/JSONObject;
    :cond_13
    if-nez p1, :cond_1a

    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "params":Lorg/json/JSONObject;
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 433
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "second_app_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    :try_start_2d
    const-string v0, "params_for_special"

    const-string v2, "second_app"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    const-string v0, "second_appid"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    const-string v0, "second_appname"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    const-string v0, "product_type"

    invoke-virtual {p1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_43} :catch_51

    .line 442
    :goto_43
    new-instance v0, Lcom/bytedance/applog/d/e;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/applog/d/e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/applog/a/e;->a(Lcom/bytedance/applog/d/a;)V

    goto :goto_12

    .line 439
    :catch_51
    move-exception v0

    .line 440
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method public static onMiscEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4
    .param p0, "logType"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "obj"    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 515
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_15

    .line 516
    :cond_e
    const-string v0, "call onEventData with invalid params, return"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    :goto_14
    return-void

    .line 520
    :cond_15
    :try_start_15
    new-instance v0, Lcom/bytedance/applog/d/d;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/applog/d/d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/bytedance/applog/a/e;->a(Lcom/bytedance/applog/d/a;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_1e

    goto :goto_14

    .line 521
    :catch_1e
    move-exception v0

    .line 522
    const-string v1, "call onEventData get exception: "

    invoke-static {v1, v0}, Lcom/bytedance/applog/util/i;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public static removeDataObserver(Lcom/bytedance/applog/IDataObserver;)V
    .registers 2
    .param p0, "listener"    # Lcom/bytedance/applog/IDataObserver;

    .prologue
    .line 671
    sget-object v0, Lcom/bytedance/applog/AppLog;->d:Lcom/bytedance/applog/util/a;

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/util/a;->b(Lcom/bytedance/applog/IDataObserver;)V

    .line 672
    return-void
.end method

.method public static setAbSDKVersion(Ljava/lang/String;)V
    .registers 2
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 193
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    if-eqz v0, :cond_9

    .line 194
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/b/i;->a(Ljava/lang/String;)V

    .line 196
    :cond_9
    return-void
.end method

.method public static setAutoActiveState(Z)V
    .registers 1
    .param p0, "isAutoActive"    # Z

    .prologue
    .line 561
    sput-boolean p0, Lcom/bytedance/applog/AppLog;->b:Z

    .line 562
    return-void
.end method

.method public static setCustomNetParams(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 149
    sget-object v0, Lcom/bytedance/applog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :goto_b
    return-void

    .line 151
    :cond_c
    sget-object v0, Lcom/bytedance/applog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method public static setEnableLog(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .prologue
    .line 532
    sput-boolean p0, Lcom/bytedance/applog/util/i;->b:Z

    .line 533
    return-void
.end method

.method public static setEncryptAndCompress(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .prologue
    .line 543
    return-void
.end method

.method public static setExtraParams(Lcom/bytedance/applog/IExtraParams;)V
    .registers 2
    .param p0, "iExtraParams"    # Lcom/bytedance/applog/IExtraParams;

    .prologue
    .line 160
    sget-object v0, Lcom/bytedance/applog/AppLog;->e:Lcom/bytedance/applog/IExtraParams;

    if-nez v0, :cond_8

    if-eqz p0, :cond_8

    .line 161
    sput-object p0, Lcom/bytedance/applog/AppLog;->e:Lcom/bytedance/applog/IExtraParams;

    .line 163
    :cond_8
    return-void
.end method

.method public static setHeaderInfo(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "custom":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    if-eqz v0, :cond_9

    .line 182
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/b/i;->a(Ljava/util/HashMap;)V

    .line 184
    :cond_9
    return-void
.end method

.method public static setIAppParam(Lcom/bytedance/applog/IAppParam;)V
    .registers 1
    .param p0, "iAppParam"    # Lcom/bytedance/applog/IAppParam;

    .prologue
    .line 170
    sput-object p0, Lcom/bytedance/applog/AppLog;->sIAppParam:Lcom/bytedance/applog/IAppParam;

    .line 171
    return-void
.end method

.method public static setOaidObserver(Lcom/bytedance/applog/IOaidObserver;)V
    .registers 1
    .param p0, "drOaidObserver"    # Lcom/bytedance/applog/IOaidObserver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .prologue
    .line 693
    invoke-static {p0}, Lcom/bytedance/a/b;->a(Lcom/bytedance/applog/IOaidObserver;)V

    .line 694
    return-void
.end method

.method public static setUserUniqueID(Ljava/lang/String;)V
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 132
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    if-eqz v0, :cond_9

    .line 133
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0, p0}, Lcom/bytedance/applog/b/i;->c(Ljava/lang/String;)V

    .line 135
    :cond_9
    return-void
.end method


# virtual methods
.method public setUserAgent(Ljava/lang/String;)V
    .registers 3
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 295
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    if-eqz v0, :cond_9

    .line 296
    sget-object v0, Lcom/bytedance/applog/AppLog;->sDevice:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/b/i;->b(Ljava/lang/String;)V

    .line 298
    :cond_9
    return-void
.end method
