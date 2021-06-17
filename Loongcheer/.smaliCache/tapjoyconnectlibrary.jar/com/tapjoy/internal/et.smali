.class Lcom/tapjoy/internal/et;
.super Lcom/tapjoy/internal/es;
.source "SourceFile"


# instance fields
.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/tapjoy/TJCurrency;

.field private f:Lcom/tapjoy/TapjoyCache;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/tapjoy/internal/es;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/et;->c:Z

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/et;->d:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/et;->e:Lcom/tapjoy/TJCurrency;

    .line 31
    iput-object v0, p0, Lcom/tapjoy/internal/et;->f:Lcom/tapjoy/TapjoyCache;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/et;Lcom/tapjoy/TJCurrency;)Lcom/tapjoy/TJCurrency;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/tapjoy/internal/et;->e:Lcom/tapjoy/TJCurrency;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/et;Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCache;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/tapjoy/internal/et;->f:Lcom/tapjoy/TapjoyCache;

    return-object p1
.end method

.method private k(Ljava/lang/String;)Z
    .registers 4

    .line 542
    iget-boolean v0, p0, Lcom/tapjoy/internal/et;->a:Z

    if-nez v0, :cond_20

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " because Tapjoy SDK has not successfully connected."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TapjoyAPI"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const/4 p1, 0x0

    return p1

    .line 546
    :cond_20
    const/4 p1, 0x1

    return p1
.end method

.method private l(Ljava/lang/String;)Z
    .registers 4

    .line 553
    iget-boolean v0, p0, Lcom/tapjoy/internal/et;->c:Z

    if-nez v0, :cond_2b

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " because Tapjoy SDK is not initialized."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/et;->d:Ljava/lang/String;

    .line 555
    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    iget-object v1, p0, Lcom/tapjoy/internal/et;->d:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v0, "TapjoyAPI"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 556
    const/4 p1, 0x0

    return p1

    .line 558
    :cond_2b
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .registers 4

    .line 193
    const-string v0, ""

    invoke-static {p1, v0, v0, p2}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object p1

    return-object p1
.end method

.method public final a(F)V
    .registers 3

    .line 212
    const-string v0, "setCurrencyMultiplier"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/et;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 213
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->setCurrencyMultiplier(F)V

    .line 215
    :cond_f
    return-void
.end method

.method public final a(I)V
    .registers 6

    .line 413
    nop

    .line 8125
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 8412
    const-string v1, "setUserLevel"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hb;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 8415
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setUserLevel({}) called"

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8417
    iget-object v0, v0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    if-ltz p1, :cond_25

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/he;->a(Ljava/lang/Integer;)Z

    .line 414
    :cond_29
    return-void
.end method

.method public final a(ILcom/tapjoy/TJAwardCurrencyListener;)V
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/tapjoy/internal/et;->e:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_11

    const-string v0, "awardCurrency"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/et;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 254
    iget-object v0, p0, Lcom/tapjoy/internal/et;->e:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJCurrency;->awardCurrency(ILcom/tapjoy/TJAwardCurrencyListener;)V

    .line 256
    :cond_11
    return-void
.end method

.method public final a(ILcom/tapjoy/TJSpendCurrencyListener;)V
    .registers 4

    .line 246
    iget-object v0, p0, Lcom/tapjoy/internal/et;->e:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_11

    const-string v0, "spendCurrency"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/et;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 247
    iget-object v0, p0, Lcom/tapjoy/internal/et;->e:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJCurrency;->spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V

    .line 249
    :cond_11
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .registers 8

    .line 428
    nop

    .line 11147
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 11430
    const-string v1, "setUserCohortVariable"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hb;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 11433
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_16

    const/4 v3, 0x5

    if-gt p1, v3, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    .line 12095
    :goto_17
    sget-boolean v4, Lcom/tapjoy/internal/gy;->a:Z

    if-eqz v4, :cond_22

    .line 12096
    if-nez v3, :cond_22

    .line 12097
    const-string v4, "setCohortVariable: variableIndex is out of range"

    invoke-static {v4}, Lcom/tapjoy/internal/gy;->b(Ljava/lang/String;)V

    .line 12100
    :cond_22
    nop

    .line 11433
    if-eqz v3, :cond_40

    .line 11438
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object p2, v3, v1

    const-string v1, "setUserCohortVariable({}, {}) called"

    invoke-static {v1, v3}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11439
    nop

    .line 13014
    invoke-static {p2}, Lcom/tapjoy/internal/gw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11439
    nop

    .line 11440
    iget-object v0, v0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/he;->a(ILjava/lang/String;)Z

    .line 429
    :cond_40
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 4

    .line 203
    if-eqz p1, :cond_6

    .line 204
    invoke-static {p1}, Lcom/tapjoy/internal/b;->a(Landroid/app/Activity;)V

    return-void

    .line 206
    :cond_6
    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v1, "Cannot set activity to NULL"

    invoke-direct {p1, v0, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v0, "TapjoyAPI"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 208
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 4

    .line 530
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 16279
    iget-object v1, v0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    if-nez v1, :cond_b

    .line 16280
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hb;->b(Landroid/content/Context;)V

    .line 16283
    :cond_b
    invoke-virtual {v0}, Lcom/tapjoy/internal/hb;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 16287
    new-instance v0, Lcom/tapjoy/TJInstallReferrer;

    invoke-direct {v0}, Lcom/tapjoy/TJInstallReferrer;-><init>()V

    .line 16288
    invoke-virtual {v0, p1}, Lcom/tapjoy/TJInstallReferrer;->init(Landroid/content/Context;)V

    .line 531
    return-void

    .line 16284
    :cond_1a
    new-instance p1, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v0, "InstallReferrerClient APIs aren\'t available in your project. To use activateInstallReferrerClient() API,`com.android.installreferrer:installreferrer` dependency is required to your project level build.gradle file"

    invoke-direct {p1, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 525
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 14270
    iget-object v1, v0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    if-nez v1, :cond_b

    .line 14271
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hb;->b(Landroid/content/Context;)V

    .line 14273
    :cond_b
    iget-object p1, v0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/tapjoy/internal/hd;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hd;

    iget-object p1, v0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    .line 14274
    nop

    .line 15248
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 15249
    const-string v1, "fiverocks"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 15250
    if-eqz v11, :cond_e2

    .line 15251
    invoke-static {p1}, Lcom/tapjoy/internal/he;->a(Landroid/content/Context;)Lcom/tapjoy/internal/he;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/he;->f()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 15252
    invoke-static {p1}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hb;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/tapjoy/internal/hb;->b(Ljava/lang/String;)V

    .line 15253
    return-void

    .line 15256
    :cond_36
    const-string v1, "title"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15257
    const-string v3, "message"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 15258
    if-eqz v4, :cond_e2

    .line 15259
    const-string v3, "rich"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 15260
    const-string v5, "sound"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 15261
    const-string v6, "payload"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 15263
    const-string v6, "always"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 15264
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7d

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    goto :goto_7d

    :cond_7b
    const/4 v6, 0x0

    goto :goto_7e

    :cond_7d
    :goto_7d
    const/4 v6, 0x1

    .line 15266
    :goto_7e
    const-string v9, "repeatable"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 15267
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_96

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_95

    goto :goto_96

    :cond_95
    const/4 v0, 0x0

    .line 15269
    :cond_96
    :goto_96
    const-string v2, "placement"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 15271
    const-string v2, "nid"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/hd;->b(Ljava/lang/Object;)I

    move-result v12

    .line 15273
    const-string v2, "channel_id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v10, p2

    check-cast v10, Ljava/lang/String;

    .line 15274
    if-nez v6, :cond_be

    invoke-static {p1}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tapjoy/internal/hb;->e()Z

    move-result p2

    if-nez p2, :cond_e2

    .line 15275
    :cond_be
    nop

    .line 15276
    invoke-static {v1}, Lcom/tapjoy/internal/js;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15277
    invoke-static {v3}, Lcom/tapjoy/internal/hd;->a(Ljava/lang/Object;)Z

    move-result v6

    .line 15278
    invoke-static {v5}, Lcom/tapjoy/internal/hd;->a(Ljava/lang/Object;)Z

    move-result v9

    .line 15275
    move-object v1, p1

    move-object v2, v11

    move-object v3, p2

    move v5, v6

    move v6, v9

    move v9, v12

    invoke-static/range {v1 .. v10}, Lcom/tapjoy/internal/hd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object p2

    .line 15283
    invoke-static {p1}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hb;

    move-result-object v1

    invoke-virtual {v1, p1, v11, v0}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 15284
    invoke-static {p1, v12, p2}, Lcom/tapjoy/internal/hd;->a(Landroid/content/Context;ILandroid/app/Notification;)V

    .line 526
    :cond_e2
    return-void
.end method

.method public final a(Landroid/opengl/GLSurfaceView;)V
    .registers 2

    .line 487
    nop

    .line 14091
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    invoke-static {p1}, Lcom/tapjoy/internal/hb;->a(Landroid/opengl/GLSurfaceView;)V

    .line 488
    return-void
.end method

.method public final a(Lcom/tapjoy/TJEarnedCurrencyListener;)V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/tapjoy/internal/et;->e:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_11

    const-string v0, "setEarnedCurrencyListener"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/et;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 261
    iget-object v0, p0, Lcom/tapjoy/internal/et;->e:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCurrency;->setEarnedCurrencyListener(Lcom/tapjoy/TJEarnedCurrencyListener;)V

    .line 263
    :cond_11
    return-void
.end method

.method public final a(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/tapjoy/internal/et;->e:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_11

    const-string v0, "getCurrencyBalance"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/et;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 240
    iget-object v0, p0, Lcom/tapjoy/internal/et;->e:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCurrency;->getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    .line 242
    :cond_11
    return-void
.end method

.method public final a(Lcom/tapjoy/TJVideoListener;)V
    .registers 3

    .line 271
    const-string v0, "setVideoListener"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/et;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 272
    sput-object p1, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJVideoListener;

    .line 274
    :cond_a
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 8

    .line 300
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/gp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 301
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .registers 10

    .line 305
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/gp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 306
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
    .registers 4

    .line 391
    const-string v0, "setUserID"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/et;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 392
    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    .line 393
    nop

    .line 7115
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object p2

    .line 7404
    const-string v0, "setUserId"

    invoke-virtual {p2, v0}, Lcom/tapjoy/internal/hb;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 7407
    nop

    .line 8010
    invoke-static {p1}, Lcom/tapjoy/internal/gw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7407
    nop

    .line 7408
    iget-object p2, p2, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/he;->b(Ljava/lang/String;)Z

    .line 393
    :cond_23
    return-void

    .line 395
    :cond_24
    if-eqz p2, :cond_2b

    .line 396
    iget-object p1, p0, Lcom/tapjoy/internal/et;->d:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDFailure(Ljava/lang/String;)V

    .line 399
    :cond_2b
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 291
    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p2}, Lcom/tapjoy/internal/gp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .registers 17

    .line 281
    nop

    .line 2419
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 2631
    const-string v1, "trackPurchase"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hb;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2634
    const-string v2, "productId"

    move-object v3, p1

    invoke-static {p1, v1, v2}, Lcom/tapjoy/internal/gw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_43

    .line 2637
    const-string v2, "currencyCode"

    move-object v3, p2

    invoke-static {p2, v1, v2}, Lcom/tapjoy/internal/gw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 2640
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2c

    .line 2641
    const-string v0, "invalid currency code"

    invoke-static {v1, v2, v0}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2642
    return-void

    .line 2644
    :cond_2c
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 2645
    invoke-static/range {p5 .. p5}, Lcom/tapjoy/internal/gw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2647
    iget-object v3, v0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v6, p3

    invoke-virtual/range {v3 .. v10}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    const-string v0, "trackPurchase called"

    invoke-static {v0}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;)V

    .line 282
    :cond_43
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    .line 310
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/gp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 311
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 286
    invoke-static {p1, p2, p3, p4}, Lcom/tapjoy/internal/gp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 320
    invoke-static/range {p1 .. p6}, Lcom/tapjoy/internal/gp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 321
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 21

    .line 325
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-wide/from16 v5, p6

    invoke-static/range {v0 .. v12}, Lcom/tapjoy/internal/gp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    .line 326
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .registers 24

    .line 330
    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-wide/from16 v5, p6

    move-object/from16 v7, p8

    move-wide/from16 v8, p9

    invoke-static/range {v0 .. v12}, Lcom/tapjoy/internal/gp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    .line 331
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
    .registers 14

    .line 336
    invoke-static/range {p1 .. p13}, Lcom/tapjoy/internal/gp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    .line 337
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 341
    nop

    .line 3396
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 3848
    const-string v1, "trackEvent"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hb;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 3851
    invoke-static {p2}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 3855
    invoke-static {}, Lcom/tapjoy/internal/jw;->b()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 3856
    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz p5, :cond_7c

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_7c

    .line 3857
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3858
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3859
    const-string v6, "key in values map"

    if-nez v5, :cond_51

    .line 3860
    nop

    .line 4073
    sget-boolean v0, Lcom/tapjoy/internal/gy;->a:Z

    if-eqz v0, :cond_50

    .line 4074
    new-array v0, v9, [Ljava/lang/Object;

    aput-object v1, v0, v11

    aput-object v6, v0, v10

    const-string v1, "Tapjoy"

    const-string v2, "{}: {} must not be null"

    invoke-static {v1, v2, v0}, Lcom/tapjoy/internal/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3861
    :cond_50
    return-void

    .line 3862
    :cond_51
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_7b

    .line 3863
    check-cast v5, Ljava/lang/String;

    .line 3864
    invoke-static {v5, v1, v6}, Lcom/tapjoy/internal/gw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9b

    .line 3867
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 3868
    instance-of v6, v4, Ljava/lang/Number;

    if-eqz v6, :cond_73

    .line 3869
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 3871
    :cond_73
    const-string v0, "value in values map"

    const-string v2, "must be a long"

    invoke-static {v1, v0, v2}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3872
    return-void

    .line 3875
    :cond_7b
    goto :goto_2a

    .line 3877
    :cond_7c
    iget-object v3, v0, Lcom/tapjoy/internal/hb;->g:Lcom/tapjoy/internal/ha;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/tapjoy/internal/ha;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3878
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v11

    aput-object p2, v0, v10

    aput-object p3, v0, v9

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const-string v1, "trackEvent category:{}, name:{}, p1:{}, p2:{}, values:{} called"

    invoke-static {v1, v0}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    :cond_9b
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 438
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hb;->a(Ljava/util/Set;)V

    .line 439
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 40
    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->setDebugEnabled(Z)V

    .line 41
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/tapjoy/internal/et;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJConnectListener;)Z
    .registers 7

    monitor-enter p0

    .line 139
    :try_start_1
    const-string v0, "event"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->setSDKType(Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    if-nez p1, :cond_1e

    .line 142
    const-string p1, "TapjoyAPI"

    new-instance p2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v2, "The application context is NULL"

    invoke-direct {p2, v1, v2}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 143
    if-eqz p3, :cond_1c

    .line 144
    invoke-interface {p3}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_75

    .line 145
    :cond_1c
    monitor-exit p0

    return v0

    .line 148
    :cond_1e
    :try_start_1e
    invoke-static {p2}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 149
    const-string p1, "TapjoyAPI"

    new-instance p2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v2, "The limited SDK key is NULL. A valid limited SDK key is required to connect successfully to Tapjoy"

    invoke-direct {p2, v1, v2}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 150
    if-eqz p3, :cond_37

    .line 151
    invoke-interface {p3}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_75

    .line 152
    :cond_37
    monitor-exit p0

    return v0

    .line 157
    :cond_39
    :try_start_39
    new-instance v1, Lcom/tapjoy/internal/et$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/tapjoy/internal/et$2;-><init>(Lcom/tapjoy/internal/et;Landroid/content/Context;Lcom/tapjoy/TJConnectListener;)V

    invoke-static {p1, p2, v1}, Lcom/tapjoy/TapjoyConnectCore;->requestLimitedTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJConnectListener;)V
    :try_end_41
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_39 .. :try_end_41} :catch_5d
    .catch Lcom/tapjoy/TapjoyException; {:try_start_39 .. :try_end_41} :catch_45
    .catchall {:try_start_39 .. :try_end_41} :catchall_75

    .line 186
    nop

    .line 188
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 181
    :catch_45
    move-exception p1

    .line 182
    :try_start_46
    const-string p2, "TapjoyAPI"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 183
    if-eqz p3, :cond_5b

    .line 184
    invoke-interface {p3}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_5b
    .catchall {:try_start_46 .. :try_end_5b} :catchall_75

    .line 185
    :cond_5b
    monitor-exit p0

    return v0

    .line 176
    :catch_5d
    move-exception p1

    .line 177
    :try_start_5e
    const-string p2, "TapjoyAPI"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyIntegrationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 178
    if-eqz p3, :cond_73

    .line 179
    invoke-interface {p3}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_73
    .catchall {:try_start_5e .. :try_end_73} :catchall_75

    .line 180
    :cond_73
    monitor-exit p0

    return v0

    .line 138
    :catchall_75
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 57
    if-eqz p3, :cond_18

    .line 58
    :try_start_3
    const-string v0, "TJC_OPTION_ENABLE_LOGGING"

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_18

    .line 60
    const-string v1, "true"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->setDebugEnabled(Z)V

    .line 64
    :cond_18
    const-string v0, "event"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->setSDKType(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    if-nez p1, :cond_35

    .line 67
    const-string p1, "TapjoyAPI"

    new-instance p2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v1, "The application context is NULL"

    invoke-direct {p2, p3, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 68
    if-eqz p4, :cond_33

    .line 69
    invoke-interface {p4}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_c8

    .line 70
    :cond_33
    monitor-exit p0

    return v0

    .line 73
    :cond_35
    :try_start_35
    invoke-static {p2}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 74
    const-string p1, "TapjoyAPI"

    new-instance p2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v1, "The SDK key is NULL. A valid SDK key is required to connect successfully to Tapjoy"

    invoke-direct {p2, p3, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 75
    if-eqz p4, :cond_4e

    .line 76
    invoke-interface {p4}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_c8

    .line 77
    :cond_4e
    monitor-exit p0

    return v0

    .line 80
    :cond_50
    :try_start_50
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_c8

    .line 83
    :try_start_53
    invoke-static {p1}, Lcom/tapjoy/TapjoyAppSettings;->init(Landroid/content/Context;)V

    .line 86
    new-instance v1, Lcom/tapjoy/internal/et$1;

    invoke-direct {v1, p0, p1, p4}, Lcom/tapjoy/internal/et$1;-><init>(Lcom/tapjoy/internal/et;Landroid/content/Context;Lcom/tapjoy/TJConnectListener;)V

    invoke-static {p1, p2, p3, v1}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)V
    :try_end_5e
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_53 .. :try_end_5e} :catch_b0
    .catch Lcom/tapjoy/TapjoyException; {:try_start_53 .. :try_end_5e} :catch_98
    .catchall {:try_start_53 .. :try_end_5e} :catchall_c8

    .line 129
    nop

    .line 131
    const/4 p2, 0x1

    :try_start_60
    iput-boolean p2, p0, Lcom/tapjoy/internal/et;->c:Z

    .line 132
    nop

    .line 1577
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge p4, v1, :cond_71

    .line 1578
    const-string p1, "TapjoyAPI"

    const-string p3, "Automatic session tracking is not available on this device."

    invoke-static {p1, p3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    goto :goto_96

    .line 1582
    :cond_71
    nop

    .line 1583
    if-eqz p3, :cond_89

    .line 1584
    const-string p4, "TJC_OPTION_DISABLE_AUTOMATIC_SESSION_TRACKING"

    invoke-virtual {p3, p4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1585
    if-eqz p3, :cond_89

    const-string p4, "true"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_89

    .line 1586
    const/4 v0, 0x1

    .line 1589
    :cond_89
    if-nez v0, :cond_8f

    .line 1590
    invoke-static {p1}, Lcom/tapjoy/internal/fm;->a(Landroid/content/Context;)V

    goto :goto_96

    .line 1593
    :cond_8f
    const-string p1, "TapjoyAPI"

    const-string p3, "Automatic session tracking is disabled."

    invoke-static {p1, p3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_60 .. :try_end_96} :catchall_c8

    .line 133
    :goto_96
    monitor-exit p0

    return p2

    .line 124
    :catch_98
    move-exception p1

    .line 125
    :try_start_99
    const-string p2, "TapjoyAPI"

    new-instance p3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v1, p1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 126
    if-eqz p4, :cond_ae

    .line 127
    invoke-interface {p4}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_ae
    .catchall {:try_start_99 .. :try_end_ae} :catchall_c8

    .line 128
    :cond_ae
    monitor-exit p0

    return v0

    .line 119
    :catch_b0
    move-exception p1

    .line 120
    :try_start_b1
    const-string p2, "TapjoyAPI"

    new-instance p3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyIntegrationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v1, p1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 121
    if-eqz p4, :cond_c6

    .line 122
    invoke-interface {p4}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_c6
    .catchall {:try_start_b1 .. :try_end_c6} :catchall_c8

    .line 123
    :cond_c6
    monitor-exit p0

    return v0

    .line 56
    :catchall_c8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .registers 4

    .line 198
    const-string v0, ""

    invoke-static {p1, v0, v0, p2}, Lcom/tapjoy/TJPlacementManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 35
    const-string v0, "12.8.1"

    return-object v0
.end method

.method public final b(I)V
    .registers 6

    .line 418
    nop

    .line 9135
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 9421
    const-string v1, "setUserFriendCount"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hb;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 9424
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setUserFriendCount({}) called"

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9426
    iget-object v0, v0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    if-ltz p1, :cond_25

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/he;->b(Ljava/lang/Integer;)Z

    .line 419
    :cond_29
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .registers 4

    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    .line 370
    invoke-static {}, Lcom/tapjoy/internal/fm;->a()V

    .line 372
    :cond_9
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 6020
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/hb;->m:Z

    .line 373
    nop

    .line 6183
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hb;->a(Landroid/app/Activity;)V

    .line 374
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 535
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 16293
    iget-object v1, v0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    if-nez v1, :cond_b

    .line 16294
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hb;->b(Landroid/content/Context;)V

    .line 16297
    :cond_b
    iget-object p1, v0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/tapjoy/internal/hb;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .line 423
    nop

    .line 10105
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 10396
    const-string v1, "setAppDataVersion"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hb;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 10399
    nop

    .line 11006
    invoke-static {p1}, Lcom/tapjoy/internal/gw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10399
    nop

    .line 10400
    iget-object v0, v0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/he;->a(Ljava/lang/String;)Z

    .line 424
    :cond_18
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 315
    const-wide/16 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/gp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 316
    return-void
.end method

.method public final b(Z)V
    .registers 9

    .line 482
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 13321
    const-string v1, "setPushNotificationDisabled"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hb;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 13324
    iget-object v1, v0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/he;->a(Z)Z

    move-result v1

    .line 13326
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "setPushNotificationDisabled({}) called, but it is already {}"

    if-eqz v1, :cond_21

    .line 13327
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v4, "setPushNotificationDisabled({}) called"

    goto :goto_33

    .line 13330
    :cond_21
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 13331
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    if-eqz p1, :cond_2f

    const-string p1, "disabled"

    goto :goto_31

    :cond_2f
    const-string p1, "enabled"

    :goto_31
    move-object v2, v5

    const/4 v3, 0x1

    :goto_33
    aput-object p1, v2, v3

    .line 13330
    invoke-static {v4, v2}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13335
    if-eqz v1, :cond_61

    iget-boolean p1, v0, Lcom/tapjoy/internal/hb;->j:Z

    if-eqz p1, :cond_61

    iget-object p1, v0, Lcom/tapjoy/internal/hb;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_61

    .line 13336
    iget-object p1, v0, Lcom/tapjoy/internal/hb;->n:Ljava/lang/String;

    if-eqz p1, :cond_4c

    const/4 p1, 0x0

    goto :goto_5e

    :cond_4c
    iget-object p1, v0, Lcom/tapjoy/internal/hb;->e:Landroid/content/Context;

    .line 13337
    invoke-static {p1}, Lcom/tapjoy/internal/hd;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hd;

    move-result-object p1

    .line 14066
    iget-object v1, p1, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object p1, p1, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v1, p1}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 13337
    invoke-static {p1}, Lcom/tapjoy/internal/js;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13338
    :goto_5e
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hb;->a(Ljava/lang/String;)V

    .line 483
    :cond_61
    return-void
.end method

.method public final c()F
    .registers 2

    .line 220
    const-string v0, "getCurrencyMultiplier"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/et;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 221
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->getCurrencyMultiplier()F

    move-result v0

    return v0

    .line 223
    :cond_11
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final c(Landroid/app/Activity;)V
    .registers 4

    .line 378
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    .line 379
    invoke-static {}, Lcom/tapjoy/internal/fm;->a()V

    .line 381
    :cond_9
    nop

    .line 6201
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hb;->b(Landroid/app/Activity;)V

    .line 382
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    .line 448
    invoke-static {p1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 449
    return-void

    .line 451
    :cond_7
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Lcom/tapjoy/internal/hb;->d()Ljava/util/Set;

    move-result-object v1

    .line 453
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 454
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hb;->a(Ljava/util/Set;)V

    .line 456
    :cond_18
    return-void
.end method

.method public final c(Z)V
    .registers 3

    .line 563
    invoke-static {}, Lcom/tapjoy/internal/gg;->a()Lcom/tapjoy/internal/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/gg;->a(Z)V

    .line 564
    return-void
.end method

.method public final d()V
    .registers 3

    .line 346
    const-string v0, "startSession"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/et;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_11

    .line 348
    invoke-static {}, Lcom/tapjoy/internal/fm;->a()V

    .line 350
    :cond_11
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->appResume()V

    .line 4213
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hb;->f()V

    .line 353
    :cond_1f
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4

    .line 460
    invoke-static {p1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 461
    return-void

    .line 463
    :cond_7
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Lcom/tapjoy/internal/hb;->d()Ljava/util/Set;

    move-result-object v1

    .line 465
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 466
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hb;->a(Ljava/util/Set;)V

    .line 468
    :cond_18
    return-void
.end method

.method public final d(Z)V
    .registers 3

    .line 573
    invoke-static {}, Lcom/tapjoy/internal/gg;->a()Lcom/tapjoy/internal/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/gg;->b(Z)V

    .line 574
    return-void
.end method

.method public final e()V
    .registers 3

    .line 357
    const-string v0, "endSession"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/et;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 358
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_11

    .line 359
    invoke-static {}, Lcom/tapjoy/internal/fm;->a()V

    .line 361
    :cond_11
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 5020
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tapjoy/internal/hb;->m:Z

    .line 362
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->appPause()V

    .line 5220
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hb;->g()V

    .line 365
    :cond_26
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 3

    .line 232
    const-string v0, "actionComplete"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/et;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 233
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 235
    :cond_f
    return-void
.end method

.method public final f()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 433
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hb;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .registers 5

    .line 472
    nop

    .line 13072
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 13216
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setGcmSender({}) called"

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13217
    invoke-static {p1}, Lcom/tapjoy/internal/js;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tapjoy/internal/hb;->d:Ljava/lang/String;

    .line 13218
    invoke-virtual {v0}, Lcom/tapjoy/internal/hb;->b()V

    .line 473
    return-void
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 507
    const-string v0, "getSupportURL"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/et;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 508
    invoke-static {p1}, Lcom/tapjoy/TapjoyConnectCore;->getSupportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 510
    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g()V
    .registers 3

    .line 443
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hb;->a(Ljava/util/Set;)V

    .line 444
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .registers 3

    .line 568
    invoke-static {}, Lcom/tapjoy/internal/gg;->a()Lcom/tapjoy/internal/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/gg;->a(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method public final h()Z
    .registers 5

    .line 477
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 13312
    const-string v1, "isPushNotificationDisabled"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hb;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 13313
    return v2

    .line 13315
    :cond_e
    iget-object v0, v0, Lcom/tapjoy/internal/hb;->f:Lcom/tapjoy/internal/he;

    invoke-virtual {v0}, Lcom/tapjoy/internal/he;->f()Z

    move-result v0

    .line 13316
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "isPushNotificationDisabled = {}"

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13317
    nop

    .line 477
    return v0
.end method

.method public final i(Ljava/lang/String;)V
    .registers 3

    .line 520
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hb;->a(Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public final i()Z
    .registers 2

    .line 492
    iget-boolean v0, p0, Lcom/tapjoy/internal/et;->a:Z

    return v0
.end method

.method public final j(Ljava/lang/String;)V
    .registers 2

    .line 403
    invoke-static {p1}, Lcom/tapjoy/TapjoyConnectCore;->setCustomParameter(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public final j()Z
    .registers 2

    .line 497
    iget-boolean v0, p0, Lcom/tapjoy/internal/et;->b:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .line 515
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    .line 408
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getCustomParameter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/tapjoy/TJPrivacyPolicy;
    .registers 2

    .line 613
    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object v0

    return-object v0
.end method
