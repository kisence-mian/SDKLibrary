.class public Lcom/sigmob/sdk/common/models/ModelBuilderCreator;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(III)Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;->major(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;->micro(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;->minor(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;
    .registers 5

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_7
    array-length v1, p0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-le v1, v2, :cond_1f

    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_30

    :cond_1f
    array-length v1, p0

    if-le v1, v3, :cond_32

    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    move v3, p0

    move p0, v0

    :goto_30
    move v0, v1

    goto :goto_42

    :cond_32
    array-length v1, p0

    if-lez v1, :cond_40

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_3f

    move v3, v0

    move v0, p0

    move p0, v3

    goto :goto_42

    :catchall_3f
    move-exception p0

    :cond_40
    move p0, v0

    move v3, p0

    :goto_42
    invoke-static {v0, p0, v3}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->a(III)Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static createAdSlot()Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;
    .registers 1

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;-><init>()V

    return-object v0
.end method

.method public static createApp()Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->C()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;->app_package(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_95

    :cond_1a
    :try_start_1a
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;->app_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_34

    goto :goto_3c

    :catchall_34
    move-exception v1

    :try_start_35
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->D()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;->orientation(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->al()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_58

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;->name(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;

    :cond_58
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_6d

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_6a
    iput-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;->support_http:Ljava/lang/Boolean;

    goto :goto_73

    :cond_6d
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_6a

    :goto_73
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8f

    invoke-static {v1}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->a(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;->version_str(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;->app_version(Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;)Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;

    :cond_8f
    const-string v1, "android"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;->idfv(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;
    :try_end_94
    .catchall {:try_start_35 .. :try_end_94} :catchall_95

    goto :goto_9b

    :catchall_95
    move-exception v1

    const-string v2, "App Builder failed"

    invoke-static {v2, v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9b
    return-object v0
.end method

.method public static createBidRequest()Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->K()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    const-string v3, "bluetoothName"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->L()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    iget-object v2, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    const-string v3, "cpu_32I"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    iget-object v2, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    const-string v3, "CPUModel"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createApp()Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->app(Lcom/sigmob/sdk/common/models/sigdsp/pb/App;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createDevice()Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->device(Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;

    new-instance v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/a;->X()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy$Builder;->age(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->W()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy$Builder;->child_protection(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy$Builder;
    :try_end_7a
    .catchall {:try_start_5 .. :try_end_7a} :catchall_97

    const/4 v2, 0x0

    :try_start_7b
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->V()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_86
    .catchall {:try_start_7b .. :try_end_86} :catchall_87

    goto :goto_88

    :catchall_87
    move-exception v3

    :goto_88
    :try_start_88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy$Builder;->gdpr_consent(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy$Builder;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->privacy(Lcom/sigmob/sdk/common/models/sigdsp/pb/Privacy;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;
    :try_end_96
    .catchall {:try_start_88 .. :try_end_96} :catchall_97

    goto :goto_9f

    :catchall_97
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_9f
    return-object v0
.end method

.method public static createDevice()Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->l()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x5

    goto :goto_12

    :cond_11
    const/4 v1, 0x4

    :goto_12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->device_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->os_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    :try_start_21
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->m()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->battery_level(Ljava/lang/Float;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->n()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->battery_state(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->o()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->battery_save_enabled(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->p()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->dpi(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->a(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Version$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->os_version(Lcom/sigmob/sdk/common/models/sigdsp/pb/Version;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->vendor(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ab()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->is_root(Ljava/lang/Boolean;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    new-instance v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/a;->s()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;->height(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/a;->t()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;->width(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/common/a;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a0

    invoke-static {}, Lcom/sigmob/sdk/common/a;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->model(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    :cond_a0
    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->screen_size(Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createGeo()Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->geo(Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d2

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->device_name(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    :cond_d2
    invoke-static {}, Lcom/sigmob/sdk/common/a;->w()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->start_timestamp(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->x()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->android_api_level(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->aa()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->mem_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->total_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->free_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_137

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->sd_total_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->sd_free_disk_size(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    :cond_137
    new-instance v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/a;->Q()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;->height:Ljava/lang/Integer;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/a;->Q()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;->width:Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Size$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->resolution(Lcom/sigmob/sdk/common/models/sigdsp/pb/Size;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->cell_ip(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;
    :try_end_16a
    .catchall {:try_start_21 .. :try_end_16a} :catchall_16b

    goto :goto_171

    :catchall_16b
    move-exception v1

    const-string v2, "Device Builder failed"

    invoke-static {v2, v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_171
    return-object v0
.end method

.method public static createDeviceId()Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->android_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->udid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    :cond_19
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->gaid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    :cond_2a
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->S()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->uid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    :cond_3b
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imei(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    :cond_4c
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->android_uuid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    :cond_5d
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imsi(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    :cond_6e
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_80

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imei1(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    :cond_80
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_92

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imei2(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    :cond_92
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a3

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->brand(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    :try_end_a3
    .catchall {:try_start_5 .. :try_end_a3} :catchall_12a

    :cond_a3
    :try_start_a3
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->aaid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_b4} :catch_b5
    .catchall {:try_start_a3 .. :try_end_b4} :catchall_12a

    goto :goto_d0

    :catch_b5
    move-exception v1

    :try_start_b6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAAID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_d0
    .catchall {:try_start_b6 .. :try_end_d0} :catchall_12a

    :cond_d0
    :goto_d0
    :try_start_d0
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->O()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fd

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->oaid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    :try_end_e1
    .catchall {:try_start_d0 .. :try_end_e1} :catchall_e2

    goto :goto_fd

    :catchall_e2
    move-exception v1

    :try_start_e3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOAID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_fd
    .catchall {:try_start_e3 .. :try_end_fd} :catchall_12a

    :cond_fd
    :goto_fd
    :try_start_fd
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_130

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->vaid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    :try_end_10d
    .catchall {:try_start_fd .. :try_end_10d} :catchall_10e

    goto :goto_130

    :catchall_10e
    move-exception v1

    :try_start_10f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVAID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_129
    .catchall {:try_start_10f .. :try_end_129} :catchall_12a

    goto :goto_130

    :catchall_12a
    move-exception v1

    const-string v2, "DeviceId Builder failed"

    invoke-static {v2, v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_130
    :goto_130
    return-object v0
.end method

.method public static createGeo()Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->N()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->N()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->country(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->N()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->language(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->ak()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->lat(Ljava/lang/Float;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->lon(Ljava/lang/Float;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;

    :cond_54
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->timeZone(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_60

    goto :goto_66

    :catchall_60
    move-exception v1

    const-string v2, "Geo Builder failed"

    invoke-static {v2, v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_66
    return-object v0
.end method

.method public static createNetwork()Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->F()Lcom/sigmob/sdk/common/f/c$a;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->F()Lcom/sigmob/sdk/common/f/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/f/c$a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;->connection_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;

    :cond_22
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->G()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;->operator(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;

    :cond_33
    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;->ua(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;

    :cond_40
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->F()Lcom/sigmob/sdk/common/f/c$a;

    move-result-object v1

    if-eqz v1, :cond_5d

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->F()Lcom/sigmob/sdk/common/f/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/f/c$a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;->connection_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;

    :cond_5d
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->H()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6d

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;->mac(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;

    :cond_6d
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7e

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;->wifi_mac(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;

    :cond_7e
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_96

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;->wifi_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;
    :try_end_8f
    .catchall {:try_start_5 .. :try_end_8f} :catchall_90

    goto :goto_96

    :catchall_90
    move-exception v1

    const-string v2, "Network Builder failed"

    invoke-static {v2, v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_96
    :goto_96
    return-object v0
.end method

.method public static createSdkConfigRequest()Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;
    .registers 2

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->N()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->N()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;->language(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->N()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;->country(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/SdkConfigRequest$Builder;

    :cond_33
    return-object v0
.end method
