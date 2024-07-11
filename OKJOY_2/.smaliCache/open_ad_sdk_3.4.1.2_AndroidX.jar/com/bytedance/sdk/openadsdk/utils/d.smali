.class public Lcom/bytedance/sdk/openadsdk/utils/d;
.super Ljava/lang/Object;
.source "AdLocationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/d$a;,
        Lcom/bytedance/sdk/openadsdk/utils/d$b;
    }
.end annotation


# static fields
.field private static a:J

.field private static b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/d;->a:J

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/d;->b:Landroid/os/Handler;

    return-void
.end method

.method private static a(Landroid/location/LocationManager;)Landroid/location/Location;
    .registers 2

    .line 130
    const-string v0, "gps"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 131
    if-nez v0, :cond_e

    .line 132
    const-string v0, "network"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 134
    :cond_e
    if-nez v0, :cond_16

    .line 135
    const-string v0, "passive"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 137
    :cond_16
    return-object v0
.end method

.method private static a(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
    .registers 4

    .line 142
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/d$b;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/d$b;-><init>(Landroid/location/LocationManager;Ljava/lang/String;)V

    .line 143
    new-instance p0, Lcom/bytedance/sdk/openadsdk/j/f;

    const/4 p1, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/j/f;-><init>(Ljava/util/concurrent/Callable;II)V

    .line 144
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/d$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/j/f;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 150
    const-wide/16 v0, 0x1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/j/f;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Location;
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    .line 151
    return-object p0

    .line 152
    :catchall_23
    move-exception p0

    .line 153
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a()Lcom/bytedance/sdk/openadsdk/TTLocation;
    .registers 5

    .line 159
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/d$a;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/d$a;-><init>(Lcom/bytedance/sdk/openadsdk/utils/d$1;)V

    .line 160
    new-instance v2, Lcom/bytedance/sdk/openadsdk/j/f;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/j/f;-><init>(Ljava/util/concurrent/Callable;II)V

    .line 161
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/utils/d$3;

    invoke-direct {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/j/f;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 167
    const-wide/16 v3, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/j/f;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTLocation;

    .line 168
    const-string v2, "AdLocationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3c

    .line 169
    return-object v1

    .line 170
    :catchall_3c
    move-exception v1

    .line 171
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;
    .registers 3

    .line 47
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseLocation()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getTTLocation()Lcom/bytedance/sdk/openadsdk/TTLocation;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 50
    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_1e
    if-nez p0, :cond_25

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    goto :goto_29

    :cond_25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 54
    :goto_29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->l()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/d;->a:J

    .line 55
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/d;->c(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v0

    .line 57
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 58
    return-object v0

    .line 60
    :cond_43
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/d;->d(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object p0

    .line 61
    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/location/Location;)V
    .registers 2

    .line 30
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/content/Context;Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/location/LocationManager;)V
    .registers 2

    .line 30
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/content/Context;Landroid/location/LocationManager;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTLocation;)V
    .registers 6

    .line 287
    if-eqz p1, :cond_35

    .line 288
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTLocation;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTLocation;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_35

    .line 289
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object p0

    .line 290
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTLocation;->getLatitude()D

    move-result-wide v0

    double-to-float v0, v0

    const-string v1, "latitude"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;F)V

    .line 291
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTLocation;->getLongitude()D

    move-result-wide v0

    double-to-float p1, v0

    const-string v0, "longitude"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;F)V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "lbstime"

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;J)V

    .line 294
    :cond_35
    return-void
.end method

.method static synthetic a(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
    .registers 2

    .line 30
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    return-void
.end method

.method static synthetic a(Landroid/location/Location;)Z
    .registers 1

    .line 30
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/location/Location;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/location/LocationManager;)Ljava/lang/String;
    .registers 3

    .line 205
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 206
    return-object v0

    .line 207
    :cond_9
    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 208
    return-object v0

    .line 209
    :cond_12
    const-string v0, "passive"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 210
    return-object v0

    .line 212
    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Landroid/location/Location;)V
    .registers 4

    .line 277
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 278
    return-void

    .line 280
    :cond_7
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object p0

    .line 281
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float v0, v0

    const-string v1, "latitude"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;F)V

    .line 282
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    double-to-float p1, v0

    const-string v0, "longitude"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;F)V

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "lbstime"

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;J)V

    .line 284
    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/location/LocationManager;)V
    .registers 6

    .line 216
    if-eqz p0, :cond_37

    if-nez p1, :cond_5

    goto :goto_37

    .line 219
    :cond_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/d$4;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/d$4;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    .line 242
    :try_start_a
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/location/LocationManager;)Ljava/lang/String;

    move-result-object p0

    .line 243
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 244
    return-void

    .line 247
    :cond_15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 249
    sget-object p0, Lcom/bytedance/sdk/openadsdk/utils/d;->b:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/d$5;

    invoke-direct {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/d$5;-><init>(Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_29

    .line 260
    goto :goto_36

    .line 255
    :catchall_29
    move-exception p0

    .line 256
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 257
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 259
    :cond_33
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    .line 261
    :goto_36
    return-void

    .line 217
    :cond_37
    :goto_37
    return-void
.end method

.method private static b(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
    .registers 2

    .line 264
    if-eqz p0, :cond_14

    if-nez p1, :cond_5

    goto :goto_14

    .line 268
    :cond_5
    :try_start_5
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    .line 273
    goto :goto_13

    .line 269
    :catchall_9
    move-exception p0

    .line 270
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 271
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    :cond_13
    :goto_13
    return-void

    .line 265
    :cond_14
    :goto_14
    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 6

    .line 65
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object p0

    .line 66
    const-string v0, "lbstime"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 67
    cmp-long p0, v3, v1

    if-eqz p0, :cond_22

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-wide v2, Lcom/bytedance/sdk/openadsdk/utils/d;->a:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_20

    goto :goto_22

    :cond_20
    const/4 p0, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p0, 0x1

    .line 67
    :goto_23
    return p0
.end method

.method private static b(Landroid/location/Location;)Z
    .registers 5

    .line 297
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private static c(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;
    .registers 4

    .line 73
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object p0

    .line 74
    const-string v0, "latitude"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;F)F

    move-result v0

    .line 75
    const-string v2, "longitude"

    invoke-virtual {p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;F)F

    move-result p0

    .line 76
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_21

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1b

    goto :goto_21

    .line 79
    :cond_1b
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/c;

    invoke-direct {v1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/c;-><init>(FF)V

    return-object v1

    .line 77
    :cond_21
    :goto_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;
    .registers 8

    .line 84
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseLocation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_39

    .line 86
    :try_start_f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/d;->a()Lcom/bytedance/sdk/openadsdk/TTLocation;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_36

    .line 88
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTLocation;)V

    .line 89
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    .line 90
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 91
    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/c;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/c;-><init>(FF)V
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_37

    return-object v2

    .line 94
    :cond_36
    goto :goto_38

    .line 93
    :catchall_37
    move-exception p0

    .line 95
    :goto_38
    return-object v1

    .line 98
    :cond_39
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 99
    nop

    .line 100
    if-eqz v0, :cond_8d

    .line 102
    :try_start_44
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_63

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 104
    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/content/Context;Landroid/location/Location;)V

    .line 105
    new-instance v3, Lcom/bytedance/sdk/openadsdk/utils/c;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-float v4, v4

    .line 106
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    double-to-float v2, v5

    invoke-direct {v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/utils/c;-><init>(FF)V

    move-object v1, v3

    .line 109
    :cond_63
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_7f

    .line 110
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/utils/d$1;

    invoke-direct {v3, p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/d$1;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_82

    .line 117
    :cond_7f
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/content/Context;Landroid/location/LocationManager;)V
    :try_end_82
    .catchall {:try_start_44 .. :try_end_82} :catchall_83

    .line 124
    :goto_82
    goto :goto_8d

    .line 119
    :catchall_83
    move-exception p0

    .line 121
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 122
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    :cond_8d
    :goto_8d
    return-object v1
.end method
