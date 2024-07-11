.class public final Lcom/bytedance/embedapplog/AppLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UMENG_CATEGORY:Ljava/lang/String; = "umeng"

.field private static volatile a:Lcom/bytedance/embedapplog/z;

.field private static b:Z

.field private static c:Z

.field private static d:Lcom/bytedance/embedapplog/bi;

.field private static volatile e:Lcom/bytedance/embedapplog/IExtraParams;

.field public static sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sDevice:Lcom/bytedance/embedapplog/aa;

.field public static sIAppParam:Lcom/bytedance/embedapplog/IAppParam;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/embedapplog/AppLog;->b:Z

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/embedapplog/AppLog;->c:Z

    .line 67
    new-instance v0, Lcom/bytedance/embedapplog/bi;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/bi;-><init>()V

    sput-object v0, Lcom/bytedance/embedapplog/AppLog;->d:Lcom/bytedance/embedapplog/bi;

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/bytedance/embedapplog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .line 239
    nop

    .line 240
    if-eqz p0, :cond_5

    .line 242
    nop

    .line 245
    goto :goto_6

    .line 240
    :cond_5
    const/4 p0, 0x0

    .line 247
    :goto_6
    if-nez p0, :cond_9

    .line 248
    goto :goto_a

    .line 247
    :cond_9
    move-object p1, p0

    .line 250
    :goto_a
    return-object p1
.end method

.method public static addDataObserver(Lcom/bytedance/embedapplog/IDataObserver;)V
    .registers 2

    .line 702
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->d:Lcom/bytedance/embedapplog/bi;

    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/bi;->a(Lcom/bytedance/embedapplog/IDataObserver;)V

    .line 703
    return-void
.end method

.method public static flush()V
    .registers 0

    .line 125
    invoke-static {}, Lcom/bytedance/embedapplog/k;->a()V

    .line 126
    return-void
.end method

.method public static getAbConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/z;

    if-eqz v0, :cond_23

    .line 224
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/z;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 225
    if-eqz p0, :cond_22

    .line 227
    const-string v0, "vid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v1, "val"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 229
    sget-object v1, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    invoke-virtual {v1, v0}, Lcom/bytedance/embedapplog/aa;->f(Ljava/lang/String;)V

    .line 230
    invoke-static {p0, p1}, Lcom/bytedance/embedapplog/AppLog;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 232
    :cond_22
    return-object p1

    .line 235
    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAbConfig()Lorg/json/JSONObject;
    .registers 1

    .line 260
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/z;

    if-eqz v0, :cond_b

    .line 261
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->u()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 263
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAbConfigVersion()Ljava/lang/String;
    .registers 1

    .line 273
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/z;

    if-eqz v0, :cond_b

    .line 274
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 276
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAbSDKVersion()Ljava/lang/String;
    .registers 1

    .line 207
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    if-eqz v0, :cond_9

    .line 208
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/aa;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAid()Ljava/lang/String;
    .registers 1

    .line 280
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    if-eqz v0, :cond_9

    .line 281
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/aa;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 283
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public static getAutoActiveState()Z
    .registers 1

    .line 603
    sget-boolean v0, Lcom/bytedance/embedapplog/AppLog;->b:Z

    return v0
.end method

.method public static getClientUdid()Ljava/lang/String;
    .registers 1

    .line 679
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    if-eqz v0, :cond_9

    .line 680
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/aa;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 682
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public static getCustomNetParams()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static getDataObserver()Lcom/bytedance/embedapplog/IDataObserver;
    .registers 1

    .line 711
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->d:Lcom/bytedance/embedapplog/bi;

    return-object v0
.end method

.method public static getDid()Ljava/lang/String;
    .registers 1

    .line 623
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    if-eqz v0, :cond_9

    .line 624
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/aa;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 626
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public static getEncryptAndCompress()Z
    .registers 1

    .line 587
    const/4 v0, 0x1

    return v0
.end method

.method public static getExtraParams()Lcom/bytedance/embedapplog/IExtraParams;
    .registers 1

    .line 161
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

    .line 287
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    if-eqz v0, :cond_9

    .line 288
    invoke-virtual {v0, p0, p1}, Lcom/bytedance/embedapplog/aa;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 290
    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIAppParam()Lcom/bytedance/embedapplog/IAppParam;
    .registers 1

    .line 171
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sIAppParam:Lcom/bytedance/embedapplog/IAppParam;

    return-object v0
.end method

.method public static getIid()Ljava/lang/String;
    .registers 1

    .line 646
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    if-eqz v0, :cond_9

    .line 647
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/aa;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 649
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public static getInitConfig()Lcom/bytedance/embedapplog/InitConfig;
    .registers 1

    .line 732
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/z;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->P()Lcom/bytedance/embedapplog/InitConfig;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public static getOpenUdid()Ljava/lang/String;
    .registers 1

    .line 690
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    if-eqz v0, :cond_9

    .line 691
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/aa;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 693
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public static getSsid()Ljava/lang/String;
    .registers 1

    .line 657
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    if-eqz v0, :cond_9

    .line 658
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/aa;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 660
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public static getSuccRate()I
    .registers 1

    .line 715
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/z;

    if-eqz v0, :cond_b

    .line 716
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->i()I

    move-result v0

    return v0

    .line 718
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getUdid()Ljava/lang/String;
    .registers 1

    .line 635
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    if-eqz v0, :cond_9

    .line 636
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/aa;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 638
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public static getUserUniqueID()Ljava/lang/String;
    .registers 1

    .line 668
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    if-eqz v0, :cond_9

    .line 669
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/aa;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 671
    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/bytedance/embedapplog/InitConfig;)V
    .registers 6

    .line 97
    sget-boolean v0, Lcom/bytedance/embedapplog/bo;->b:Z

    if-nez v0, :cond_19

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_19

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_39

    .line 100
    :cond_19
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/z;

    if-eqz v0, :cond_28

    .line 102
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Init Twice!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 103
    return-void

    .line 104
    :cond_28
    invoke-virtual {p1}, Lcom/bytedance/embedapplog/InitConfig;->getSensitiveInfoProvider()Lcom/bytedance/embedapplog/ISensitiveInfoProvider;

    move-result-object v0

    if-nez v0, :cond_39

    .line 105
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "need to involve setSensitiveInfoProvider!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 106
    return-void

    .line 109
    :cond_39
    :goto_39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 110
    invoke-static {}, Lcom/bytedance/embedapplog/k;->b()Lcom/bytedance/embedapplog/k;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/bytedance/embedapplog/z;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/embedapplog/z;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/InitConfig;)V

    .line 112
    new-instance v2, Lcom/bytedance/embedapplog/aa;

    invoke-direct {v2, p0, v1}, Lcom/bytedance/embedapplog/aa;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)V

    .line 113
    new-instance v3, Lcom/bytedance/embedapplog/f;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/InitConfig;->getPicker()Lcom/bytedance/embedapplog/IPicker;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/bytedance/embedapplog/f;-><init>(Lcom/bytedance/embedapplog/IPicker;)V

    .line 114
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/bytedance/embedapplog/k;->a(Landroid/app/Application;Lcom/bytedance/embedapplog/z;Lcom/bytedance/embedapplog/aa;Lcom/bytedance/embedapplog/f;)V

    .line 115
    sput-object v1, Lcom/bytedance/embedapplog/AppLog;->a:Lcom/bytedance/embedapplog/z;

    .line 116
    sput-object v2, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    .line 117
    const/4 p0, 0x0

    const-string p1, "Inited"

    invoke-static {p1, p0}, Lcom/bytedance/embedapplog/bo;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    return-void
.end method

.method public static manualActivate()Z
    .registers 1

    .line 612
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    if-eqz v0, :cond_d

    .line 613
    invoke-static {}, Lcom/bytedance/embedapplog/k;->b()Lcom/bytedance/embedapplog/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/k;->e()Z

    move-result v0

    return v0

    .line 615
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static onEvent(Ljava/lang/String;)V
    .registers 9

    .line 395
    const-string v0, "umeng"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/bytedance/embedapplog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 396
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 385
    const-string v0, "umeng"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/bytedance/embedapplog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 386
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 15

    .line 372
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lcom/bytedance/embedapplog/AppLog;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 373
    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .registers 19

    .line 351
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_25

    .line 358
    :cond_e
    new-instance v0, Lcom/bytedance/embedapplog/at;

    if-eqz p7, :cond_16

    invoke-virtual/range {p7 .. p7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_16
    move-object v10, v1

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lcom/bytedance/embedapplog/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/k;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 359
    return-void

    .line 352
    :cond_25
    :goto_25
    sget-boolean v0, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v0, :cond_2e

    .line 353
    const-string v0, "category or label is empty"

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    :cond_2e
    new-instance v0, Lcom/bytedance/embedapplog/az;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "2"

    invoke-direct {v0, v1, v3, v2}, Lcom/bytedance/embedapplog/az;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/k;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 356
    return-void
.end method

.method public static onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 419
    nop

    .line 421
    const/4 v0, 0x0

    if-eqz p1, :cond_35

    :try_start_4
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 422
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_30

    .line 423
    :try_start_f
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 424
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 425
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_2d

    .line 426
    goto :goto_17

    .line 424
    :cond_2b
    move-object v0, v1

    goto :goto_35

    .line 428
    :catchall_2d
    move-exception p1

    move-object v0, v1

    goto :goto_31

    :catchall_30
    move-exception p1

    .line 429
    :goto_31
    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_36

    .line 430
    :cond_35
    :goto_35
    nop

    .line 431
    :goto_36
    invoke-static {p0, v0}, Lcom/bytedance/embedapplog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 432
    return-void
.end method

.method public static onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    .line 405
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 406
    const-string v0, "eventName is empty"

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    new-instance v0, Lcom/bytedance/embedapplog/az;

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "2"

    invoke-direct {v0, v3, v4, v2}, Lcom/bytedance/embedapplog/az;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/k;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 409
    :cond_19
    new-instance v0, Lcom/bytedance/embedapplog/av;

    const/4 v2, 0x0

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_22
    invoke-direct {v0, p0, v2, v1}, Lcom/bytedance/embedapplog/av;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/k;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 410
    return-void
.end method

.method public static onInternalEventV3(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 510
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 511
    const-string p0, "both second appid and second app name is empty, return"

    invoke-static {p0, v1}, Lcom/bytedance/embedapplog/bo;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 512
    return-void

    .line 514
    :cond_13
    nop

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "second_app_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 517
    if-eqz p1, :cond_70

    :try_start_29
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    .line 518
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_6b

    .line 519
    :try_start_34
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 520
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 521
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    goto :goto_3c

    .line 523
    :cond_50
    const-string p1, "params_for_special"

    const-string v1, "second_app"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string p1, "second_appid"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    const-string p1, "second_appname"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string p1, "product_type"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_66
    .catchall {:try_start_34 .. :try_end_66} :catchall_68

    move-object v1, v0

    goto :goto_70

    .line 528
    :catchall_68
    move-exception p1

    move-object v1, v0

    goto :goto_6c

    :catchall_6b
    move-exception p1

    .line 529
    :goto_6c
    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_71

    .line 530
    :cond_70
    :goto_70
    nop

    .line 531
    :goto_71
    invoke-static {p0, v1}, Lcom/bytedance/embedapplog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 532
    return-void
.end method

.method public static onInternalEventV3(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 463
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 464
    const/4 p0, 0x0

    const-string p1, "both second appid and second app name is empty, return"

    invoke-static {p1, p0}, Lcom/bytedance/embedapplog/bo;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    return-void

    .line 467
    :cond_13
    if-nez p1, :cond_1a

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 468
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "second_app_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 470
    :try_start_2d
    const-string v0, "params_for_special"

    const-string v1, "second_app"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    const-string v0, "second_appid"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    const-string p2, "second_appname"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    const-string p2, "product_type"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_44

    .line 476
    goto :goto_48

    .line 474
    :catchall_44
    move-exception p2

    .line 475
    invoke-static {p2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 477
    :goto_48
    new-instance p2, Lcom/bytedance/embedapplog/av;

    const/4 p3, 0x0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p3, p1}, Lcom/bytedance/embedapplog/av;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {p2}, Lcom/bytedance/embedapplog/k;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 478
    return-void
.end method

.method public static onMiscEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 550
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_f

    goto :goto_1f

    .line 555
    :cond_f
    :try_start_f
    new-instance v0, Lcom/bytedance/embedapplog/au;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/embedapplog/au;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/k;->a(Lcom/bytedance/embedapplog/aq;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_18

    .line 558
    goto :goto_1e

    .line 556
    :catch_18
    move-exception p0

    .line 557
    const-string p1, "call onEventData get exception: "

    invoke-static {p1, p0}, Lcom/bytedance/embedapplog/bo;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 559
    :goto_1e
    return-void

    .line 551
    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    const-string p1, "call onEventData with invalid params, return"

    invoke-static {p1, p0}, Lcom/bytedance/embedapplog/bo;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 552
    return-void
.end method

.method public static removeDataObserver(Lcom/bytedance/embedapplog/IDataObserver;)V
    .registers 2

    .line 706
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->d:Lcom/bytedance/embedapplog/bi;

    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/bi;->b(Lcom/bytedance/embedapplog/IDataObserver;)V

    .line 707
    return-void
.end method

.method public static setAbSDKVersion(Ljava/lang/String;)V
    .registers 2

    .line 198
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    if-eqz v0, :cond_7

    .line 199
    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/aa;->a(Ljava/lang/String;)V

    .line 201
    :cond_7
    return-void
.end method

.method public static setAutoActiveState(Z)V
    .registers 1

    .line 596
    sput-boolean p0, Lcom/bytedance/embedapplog/AppLog;->b:Z

    .line 597
    return-void
.end method

.method public static setCustomNetParams(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 154
    sget-object p1, Lcom/bytedance/embedapplog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 156
    :cond_c
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sCustomNetParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :goto_11
    return-void
.end method

.method public static setEnableLog(Z)V
    .registers 1

    .line 567
    sput-boolean p0, Lcom/bytedance/embedapplog/bo;->b:Z

    .line 568
    return-void
.end method

.method public static setEncryptAndCompress(Z)V
    .registers 1

    .line 578
    return-void
.end method

.method public static setExtraParams(Lcom/bytedance/embedapplog/IExtraParams;)V
    .registers 2

    .line 165
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->e:Lcom/bytedance/embedapplog/IExtraParams;

    if-nez v0, :cond_8

    if-eqz p0, :cond_8

    .line 166
    sput-object p0, Lcom/bytedance/embedapplog/AppLog;->e:Lcom/bytedance/embedapplog/IExtraParams;

    .line 168
    :cond_8
    return-void
.end method

.method public static setHeaderInfo(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    if-eqz v0, :cond_7

    .line 187
    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/aa;->a(Ljava/util/HashMap;)V

    .line 189
    :cond_7
    return-void
.end method

.method public static setIAppParam(Lcom/bytedance/embedapplog/IAppParam;)V
    .registers 1

    .line 175
    sput-object p0, Lcom/bytedance/embedapplog/AppLog;->sIAppParam:Lcom/bytedance/embedapplog/IAppParam;

    .line 176
    return-void
.end method

.method public static setOaidObserver(Lcom/bytedance/embedapplog/IOaidObserver;)V
    .registers 1

    .line 728
    invoke-static {p0}, Lcom/bytedance/embedapplog/bw;->a(Lcom/bytedance/embedapplog/IOaidObserver;)V

    .line 729
    return-void
.end method

.method public static setUserUniqueID(Ljava/lang/String;)V
    .registers 2

    .line 137
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {v0, p0}, Lcom/bytedance/embedapplog/aa;->c(Ljava/lang/String;)V

    .line 140
    :cond_7
    return-void
.end method

.method public static toEncryptByte(Ljava/lang/String;)[B
    .registers 5

    .line 299
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 300
    nop

    .line 302
    const/4 v1, 0x0

    :try_start_9
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getEncryptAndCompress()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_2f

    const-string v3, "UTF-8"

    if-eqz v2, :cond_22

    .line 303
    :try_start_11
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_2f

    .line 304
    :try_start_16
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1f

    move-object v1, v2

    goto :goto_29

    .line 308
    :catchall_1f
    move-exception p0

    move-object v1, v2

    goto :goto_30

    .line 306
    :cond_22
    :try_start_22
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2f

    .line 311
    :goto_29
    if-eqz v1, :cond_3e

    .line 313
    :try_start_2b
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_39

    goto :goto_38

    .line 308
    :catchall_2f
    move-exception p0

    .line 309
    :goto_30
    :try_start_30
    invoke-static {p0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_4e

    .line 311
    if-eqz v1, :cond_3e

    .line 313
    :try_start_35
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    .line 316
    :goto_38
    goto :goto_3e

    .line 314
    :catch_39
    move-exception p0

    .line 315
    invoke-static {p0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_38

    .line 319
    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 320
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getEncryptAndCompress()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 321
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/bytedance/embedapplog/util/TTEncryptUtils;->a([BI)[B

    move-result-object p0

    .line 323
    :cond_4d
    return-object p0

    .line 311
    :catchall_4e
    move-exception p0

    if-eqz v1, :cond_59

    .line 313
    :try_start_51
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 316
    goto :goto_59

    .line 314
    :catch_55
    move-exception v0

    .line 315
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 316
    :cond_59
    :goto_59
    throw p0
.end method


# virtual methods
.method public setUserAgent(Ljava/lang/String;)V
    .registers 3

    .line 333
    sget-object v0, Lcom/bytedance/embedapplog/AppLog;->sDevice:Lcom/bytedance/embedapplog/aa;

    if-eqz v0, :cond_7

    .line 334
    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/aa;->b(Ljava/lang/String;)V

    .line 336
    :cond_7
    return-void
.end method
