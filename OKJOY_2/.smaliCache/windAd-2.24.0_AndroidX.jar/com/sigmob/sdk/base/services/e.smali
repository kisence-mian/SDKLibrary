.class public Lcom/sigmob/sdk/base/services/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/services/j$a;


# static fields
.field private static a:Landroid/location/LocationManager;

.field private static b:Ljava/lang/String;

.field private static final c:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "network"

    sput-object v0, Lcom/sigmob/sdk/base/services/e;->b:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/sdk/base/services/e$1;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/services/e$1;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/services/e;->c:Landroid/location/LocationListener;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/sigmob/sdk/base/services/e;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_2d

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/services/e;->b:Ljava/lang/String;

    :cond_2d
    return-void
.end method

.method static b()Landroid/location/LocationManager;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/services/e;->a:Landroid/location/LocationManager;

    if-nez v0, :cond_1a

    const-class v0, Lcom/sigmob/sdk/base/services/e;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/sigmob/sdk/base/services/e;->a:Landroid/location/LocationManager;

    if-nez v1, :cond_15

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->aj()Landroid/location/LocationManager;

    move-result-object v1

    sput-object v1, Lcom/sigmob/sdk/base/services/e;->a:Landroid/location/LocationManager;

    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    :cond_1a
    :goto_1a
    sget-object v0, Lcom/sigmob/sdk/base/services/e;->a:Landroid/location/LocationManager;

    return-object v0
.end method

.method private c()V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/services/e;->b()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_24

    sget-object v1, Lcom/sigmob/sdk/base/services/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_24

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Lcom/sigmob/sdk/base/services/e;->b:Ljava/lang/String;

    const-wide/16 v2, 0x2710

    const/high16 v4, 0x41200000    # 10.0f

    sget-object v5, Lcom/sigmob/sdk/base/services/e;->c:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    goto :goto_24

    :catchall_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/services/e;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/sigmob/sdk/base/services/e;->c()V

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method
