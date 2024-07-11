.class public Lcom/tapjoy/TapjoyAdIdClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tapjoy/TapjoyAdIdClient;->a:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public getAdvertisingId()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/tapjoy/TapjoyAdIdClient;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isAdTrackingEnabled()Z
    .registers 2

    .line 84
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyAdIdClient;->c:Z

    return v0
.end method

.method public setupAdIdInfo()Z
    .registers 4

    .line 28
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/tapjoy/TapjoyAdIdClient;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TapjoyAdIdClient;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyAdIdClient;->c:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1d
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_19} :catch_1b

    .line 41
    nop

    .line 43
    return v2

    .line 38
    :catch_1b
    move-exception v1

    .line 40
    return v0

    .line 33
    :catch_1d
    move-exception v1

    .line 36
    return v0
.end method

.method public setupAdIdInfoReflection()Z
    .registers 8

    .line 57
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 58
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 59
    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v0

    .line 61
    const-string v4, "getAdvertisingIdInfo"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 63
    const-string v4, "TapjoyAdIdClient"

    const-string v5, "Found method: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tapjoy/TapjoyAdIdClient;->a:Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isLimitAdTrackingEnabled"

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getId"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 69
    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_55

    const/4 v3, 0x1

    goto :goto_56

    :cond_55
    const/4 v3, 0x0

    :goto_56
    iput-boolean v3, p0, Lcom/tapjoy/TapjoyAdIdClient;->c:Z

    .line 70
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/TapjoyAdIdClient;->b:Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_62} :catch_64

    .line 74
    nop

    .line 76
    return v2

    .line 71
    :catch_64
    move-exception v1

    .line 73
    return v0
.end method
