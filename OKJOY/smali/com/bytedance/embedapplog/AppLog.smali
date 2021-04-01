.class public final Lcom/bytedance/embedapplog/AppLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UMENG_CATEGORY:Ljava/lang/String; = "umeng"

.field private static volatile a:Lcom/bytedance/embedapplog/b/h;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static b:Z

.field private static c:Z

.field private static d:Lcom/bytedance/embedapplog/util/a;

.field private static volatile e:Lcom/bytedance/embedapplog/IExtraParams;

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

.field public static sDevice:Lcom/bytedance/embedapplog/b/i;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static sIAppParam:Lcom/bytedance/embedapplog/IAppParam;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/embedapplog/AppLog;->b:Z

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/embedapplog/AppLog;->c:Z

    .line 73
    new-instance v0, Lcom/bytedance/embedapplog/util/a;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/util/a;-><init>()V

    sput-object v0, Lcom/bytedance/embedapplog/AppLog;->d:Lcom/bytedance/embedapplog/util/a;

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/bytedance/embedapplog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 94
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
    .line 241
    const/4 v0, 0x0

    .line 242
    if-eqz p0, :cond_4

    move-object v0, p0

    .line 249
    :cond_4
    if-nez v0, :cond_7

    .line 252
    :goto_6
    return-object p1

    :cond_7
    move-object p1, v0

    goto :goto_6
.end method

.method public static addDataObserver(Lcom/bytedance/embedapplog/IDataObserver;)V
    .registers 2

    .prologue
    .line 704
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->d:Lcom/bytedance/embedapplog/util/a;

    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/util/a;->a(Lcom/bytedance/embedapplog/IDataObserver;)V

    .line 705
    return-void
.end method

.method public static flush()V
    .registers 0

    .prologue
    .line 127
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->a()V

    .line 128
    return-void
.end method

.method public static getAbConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
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
    .line 225
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    if-eqz v0, :cond_22

    .line 226
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/b/h;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_21

    .line 229
    const-string v1, "vid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    const-string v2, "val"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    sget-object v2, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v2, v1}, Lcom/bytedance/embedapplog/b/i;->f(Ljava/lang/String;)V

    .line 232
    invoke-static {v0, p1}, Lcom/bytedance/embedapplog/AppLog;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 237
    :cond_21
    :goto_21
    return-object p1

    :cond_22
    const/4 p1, 0x0

    goto :goto_21
.end method

.method public static getAbConfig()Lorg/json/JSONObject;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 262
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    if-eqz v0, :cond_b

    .line 263
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->x()Lorg/json/JSONObject;

    move-result-object v0

    .line 265
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
    .line 275
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    if-eqz v0, :cond_b

    .line 276
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->w()Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getAbSDKVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 209
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_b

    .line 210
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->q()Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getAid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 282
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_b

    .line 283
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->h()Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getAutoActiveState()Z
    .registers 1

    .prologue
    .line 605
    sget-boolean v0, Lcom/bytedance/embedapplog/AppLog;->b:Z

    return v0
.end method

.method public static getClientUdid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 681
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_b

    .line 682
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->m()Ljava/lang/String;

    move-result-object v0

    .line 684
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
    .line 145
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static getDataObserver()Lcom/bytedance/embedapplog/IDataObserver;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 713
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->d:Lcom/bytedance/embedapplog/util/a;

    return-object v0
.end method

.method public static getDid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 625
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_b

    .line 626
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 628
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getEncryptAndCompress()Z
    .registers 1

    .prologue
    .line 589
    const/4 v0, 0x1

    return v0
.end method

.method public static getExtraParams()Lcom/bytedance/embedapplog/IExtraParams;
    .registers 1

    .prologue
    .line 163
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->e:Lcom/bytedance/embedapplog/IExtraParams;

    return-object v0
.end method

.method public static getHeaderValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
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
    .line 289
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_b

    .line 290
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/embedapplog/b/i;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 292
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getIAppParam()Lcom/bytedance/embedapplog/IAppParam;
    .registers 1

    .prologue
    .line 173
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sIAppParam:Lcom/bytedance/embedapplog/IAppParam;

    return-object v0
.end method

.method public static getIid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 648
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_b

    .line 649
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->j()Ljava/lang/String;

    move-result-object v0

    .line 651
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getOpenUdid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 692
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_b

    .line 693
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->n()Ljava/lang/String;

    move-result-object v0

    .line 695
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getSsid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 659
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_b

    .line 660
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->k()Ljava/lang/String;

    move-result-object v0

    .line 662
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getSuccRate()I
    .registers 1

    .prologue
    .line 717
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    if-eqz v0, :cond_b

    .line 718
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->l()I

    move-result v0

    .line 720
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getUdid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 637
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_b

    .line 638
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->i()Ljava/lang/String;

    move-result-object v0

    .line 640
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getUserUniqueID()Ljava/lang/String;
    .registers 1

    .prologue
    .line 670
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_b

    .line 671
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->l()Ljava/lang/String;

    move-result-object v0

    .line 673
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static init(Landroid/content/Context;Lcom/bytedance/embedapplog/InitConfig;)V
    .registers 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bytedance/embedapplog/InitConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-nez v0, :cond_43

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_43

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 111
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 112
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->b()Lcom/bytedance/embedapplog/a/e;

    move-result-object v1

    .line 113
    new-instance v2, Lcom/bytedance/embedapplog/b/h;

    invoke-direct {v2, v0, p1}, Lcom/bytedance/embedapplog/b/h;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/InitConfig;)V

    .line 114
    new-instance v3, Lcom/bytedance/embedapplog/b/i;

    invoke-direct {v3, v0, v2}, Lcom/bytedance/embedapplog/b/i;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/h;)V

    .line 115
    new-instance v4, Lcom/bytedance/embedapplog/collector/a;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/InitConfig;->getPicker()Lcom/bytedance/embedapplog/IPicker;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bytedance/embedapplog/collector/a;-><init>(Lcom/bytedance/embedapplog/IPicker;)V

    .line 116
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/bytedance/embedapplog/a/e;->a(Landroid/app/Application;Lcom/bytedance/embedapplog/b/h;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/collector/a;)V

    .line 117
    sput-object v2, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    .line 118
    sput-object v3, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    .line 119
    const-string v0, "Inited"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    :goto_42
    return-void

    .line 106
    :cond_43
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/b/h;

    if-eqz v0, :cond_18

    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Init Twice!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_42
.end method

.method public static manualActivate()Z
    .registers 1

    .prologue
    .line 614
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_d

    .line 615
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->b()Lcom/bytedance/embedapplog/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/a/e;->e()Z

    move-result v0

    .line 617
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static onEvent(Ljava/lang/String;)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 397
    const-string v1, "umeng"

    move-object v2, p0

    move-wide v6, v4

    move-object v8, v3

    invoke-static/range {v1 .. v8}, Lcom/bytedance/embedapplog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 398
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    .line 387
    const-string v1, "umeng"

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v6, v4

    invoke-static/range {v1 .. v8}, Lcom/bytedance/embedapplog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 388
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 16

    .prologue
    .line 374
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v1 .. v8}, Lcom/bytedance/embedapplog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 375
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .registers 17
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 353
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 354
    :cond_c
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v0, :cond_16

    .line 355
    const-string v0, "category or label is empty"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    :cond_16
    new-instance v0, Lcom/bytedance/embedapplog/d/i;

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

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/embedapplog/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 361
    :goto_38
    return-void

    .line 360
    :cond_39
    new-instance v0, Lcom/bytedance/embedapplog/d/c;

    if-eqz p7, :cond_4d

    invoke-virtual/range {p7 .. p7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_41
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/embedapplog/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V

    goto :goto_38

    :cond_4d
    const/4 v8, 0x0

    goto :goto_41
.end method

.method public static onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 423
    if-eqz p1, :cond_31

    :try_start_3
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31

    .line 424
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_e} :catch_35

    .line 425
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 426
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 427
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_29} :catch_2a

    goto :goto_16

    .line 430
    :catch_2a
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 431
    :goto_2e
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 433
    :cond_31
    :goto_31
    invoke-static {p0, v0}, Lcom/bytedance/embedapplog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 434
    return-void

    .line 430
    :catch_35
    move-exception v1

    goto :goto_2e

    :cond_37
    move-object v0, v1

    goto :goto_31
.end method

.method public static onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 407
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 408
    const-string v1, "eventName is empty"

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    new-instance v1, Lcom/bytedance/embedapplog/d/i;

    const-string v2, ""

    const-string v3, "2"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/embedapplog/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 411
    :cond_19
    new-instance v1, Lcom/bytedance/embedapplog/d/e;

    const/4 v2, 0x0

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_22
    invoke-direct {v1, p0, v2, v0}, Lcom/bytedance/embedapplog/d/e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V

    .line 412
    return-void
.end method

.method public static onInternalEventV3(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 512
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 513
    const-string v1, "both second appid and second app name is empty, return"

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 534
    :goto_12
    return-void

    .line 517
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

    .line 519
    if-eqz p1, :cond_56

    :try_start_28
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_56

    .line 520
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_33} :catch_72

    .line 521
    :try_start_33
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 522
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 523
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_4e} :catch_4f

    goto :goto_3b

    .line 530
    :catch_4f
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 531
    :goto_53
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 533
    :cond_56
    :goto_56
    invoke-static {v2, v0}, Lcom/bytedance/embedapplog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_12

    .line 525
    :cond_5a
    :try_start_5a
    const-string v0, "params_for_special"

    const-string v3, "second_app"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string v0, "second_appid"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string v0, "second_appname"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    const-string v0, "product_type"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_70} :catch_4f

    move-object v0, v1

    goto :goto_56

    .line 530
    :catch_72
    move-exception v1

    goto :goto_53
.end method

.method public static onInternalEventV3(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 465
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 466
    const-string v0, "both second appid and second app name is empty, return"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 480
    :goto_12
    return-void

    .line 469
    :cond_13
    if-nez p1, :cond_1a

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 470
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

    .line 472
    :try_start_2d
    const-string v0, "params_for_special"

    const-string v2, "second_app"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    const-string v0, "second_appid"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    const-string v0, "second_appname"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    const-string v0, "product_type"

    invoke-virtual {p1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_43} :catch_51

    .line 479
    :goto_43
    new-instance v0, Lcom/bytedance/embedapplog/d/e;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/embedapplog/d/e;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V

    goto :goto_12

    .line 476
    :catch_51
    move-exception v0

    .line 477
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method public static onMiscEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 552
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_15

    .line 553
    :cond_e
    const-string v0, "call onEventData with invalid params, return"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 561
    :goto_14
    return-void

    .line 557
    :cond_15
    :try_start_15
    new-instance v0, Lcom/bytedance/embedapplog/d/d;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/embedapplog/d/d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_1e

    goto :goto_14

    .line 558
    :catch_1e
    move-exception v0

    .line 559
    const-string v1, "call onEventData get exception: "

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/util/h;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public static removeDataObserver(Lcom/bytedance/embedapplog/IDataObserver;)V
    .registers 2

    .prologue
    .line 708
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->d:Lcom/bytedance/embedapplog/util/a;

    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/util/a;->b(Lcom/bytedance/embedapplog/IDataObserver;)V

    .line 709
    return-void
.end method

.method public static setAbSDKVersion(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 200
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_9

    .line 201
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/b/i;->a(Ljava/lang/String;)V

    .line 203
    :cond_9
    return-void
.end method

.method public static setAutoActiveState(Z)V
    .registers 1

    .prologue
    .line 598
    sput-boolean p0, Lcom/bytedance/embedapplog/AppLog;->b:Z

    .line 599
    return-void
.end method

.method public static setCustomNetParams(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 156
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :goto_b
    return-void

    .line 158
    :cond_c
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method public static setEnableLog(Z)V
    .registers 1

    .prologue
    .line 569
    sput-boolean p0, Lcom/bytedance/embedapplog/util/h;->b:Z

    .line 570
    return-void
.end method

.method public static setEncryptAndCompress(Z)V
    .registers 1

    .prologue
    .line 580
    return-void
.end method

.method public static setExtraParams(Lcom/bytedance/embedapplog/IExtraParams;)V
    .registers 2

    .prologue
    .line 167
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->e:Lcom/bytedance/embedapplog/IExtraParams;

    if-nez v0, :cond_8

    if-eqz p0, :cond_8

    .line 168
    sput-object p0, Lcom/bytedance/embedapplog/AppLog;->e:Lcom/bytedance/embedapplog/IExtraParams;

    .line 170
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
    .line 188
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_9

    .line 189
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/b/i;->a(Ljava/util/HashMap;)V

    .line 191
    :cond_9
    return-void
.end method

.method public static setIAppParam(Lcom/bytedance/embedapplog/IAppParam;)V
    .registers 1

    .prologue
    .line 177
    sput-object p0, Lcom/bytedance/embedapplog/AppLog;->sIAppParam:Lcom/bytedance/embedapplog/IAppParam;

    .line 178
    return-void
.end method

.method public static setOaidObserver(Lcom/bytedance/embedapplog/IOaidObserver;)V
    .registers 1
    .param p0    # Lcom/bytedance/embedapplog/IOaidObserver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .prologue
    .line 730
    invoke-static {p0}, Lcom/bytedance/embed_device_register/b;->a(Lcom/bytedance/embedapplog/IOaidObserver;)V

    .line 731
    return-void
.end method

.method public static setUserUniqueID(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 139
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_9

    .line 140
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/b/i;->c(Ljava/lang/String;)V

    .line 142
    :cond_9
    return-void
.end method

.method public static toEncryptByte(Ljava/lang/String;)[B
    .registers 5

    .prologue
    .line 301
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x2000

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 302
    const/4 v2, 0x0

    .line 304
    :try_start_8
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getEncryptAndCompress()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 305
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_13} :catch_41
    .catchall {:try_start_8 .. :try_end_13} :catchall_51

    .line 306
    :try_start_13
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1c} :catch_60
    .catchall {:try_start_13 .. :try_end_1c} :catchall_5d

    .line 313
    :goto_1c
    if-eqz v1, :cond_21

    .line 315
    :try_start_1e
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_3c

    .line 321
    :cond_21
    :goto_21
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 322
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getEncryptAndCompress()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 323
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/TTEncryptUtils;->a([BI)[B

    move-result-object v0

    .line 325
    :cond_30
    return-object v0

    .line 308
    :cond_31
    :try_start_31
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3a} :catch_41
    .catchall {:try_start_31 .. :try_end_3a} :catchall_51

    move-object v1, v2

    goto :goto_1c

    .line 316
    :catch_3c
    move-exception v0

    .line 317
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_21

    .line 310
    :catch_41
    move-exception v0

    move-object v1, v2

    .line 311
    :goto_43
    :try_start_43
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_5d

    .line 313
    if-eqz v1, :cond_21

    .line 315
    :try_start_48
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_21

    .line 316
    :catch_4c
    move-exception v0

    .line 317
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_21

    .line 313
    :catchall_51
    move-exception v0

    :goto_52
    if-eqz v2, :cond_57

    .line 315
    :try_start_54
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    .line 318
    :cond_57
    :goto_57
    throw v0

    .line 316
    :catch_58
    move-exception v1

    .line 317
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_57

    .line 313
    :catchall_5d
    move-exception v0

    move-object v2, v1

    goto :goto_52

    .line 310
    :catch_60
    move-exception v0

    goto :goto_43
.end method


# virtual methods
.method public setUserAgent(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 335
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    if-eqz v0, :cond_9

    .line 336
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/b/i;->b(Ljava/lang/String;)V

    .line 338
    :cond_9
    return-void
.end method
