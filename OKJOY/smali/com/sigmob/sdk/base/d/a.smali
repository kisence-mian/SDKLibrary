.class public Lcom/sigmob/sdk/base/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/d/c;


# static fields
.field private static a:Landroid/location/LocationManager;

.field private static b:Ljava/lang/String;

.field private static final c:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "network"

    sput-object v0, Lcom/sigmob/sdk/base/d/a;->b:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/sdk/base/d/a$1;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/d/a$1;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/d/a;->c:Landroid/location/LocationListener;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {}, Lcom/sigmob/sdk/base/d/a;->a()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    invoke-virtual {v0, v1, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/d/a;->b:Ljava/lang/String;

    goto :goto_a
.end method

.method static a()Landroid/location/LocationManager;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/d/a;->a:Landroid/location/LocationManager;

    if-nez v0, :cond_16

    const-class v1, Lcom/sigmob/sdk/base/d/a;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/d/a;->a:Landroid/location/LocationManager;

    if-nez v0, :cond_15

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->F()Landroid/location/LocationManager;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/d/a;->a:Landroid/location/LocationManager;

    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_19

    :cond_16
    sget-object v0, Lcom/sigmob/sdk/base/d/a;->a:Landroid/location/LocationManager;

    return-object v0

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private f()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/d/a;->a()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v1, Lcom/sigmob/sdk/base/d/a;->c:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b
.end method

.method private g()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/d/a;->a()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    sget-object v1, Lcom/sigmob/sdk/base/d/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/sigmob/sdk/base/d/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/sigmob/sdk/base/d/a;->b:Ljava/lang/String;

    const-wide/16 v2, 0x2710

    const/high16 v4, 0x41200000    # 10.0f

    sget-object v5, Lcom/sigmob/sdk/base/d/a;->c:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d
.end method


# virtual methods
.method public b()Z
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/d/a;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/sigmob/sdk/base/d/a;->g()V

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public c()Lcom/sigmob/sdk/base/d/d;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/d/a;->f()V

    return-void
.end method

.method public e()Ljava/lang/Error;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
