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

    .prologue
    .line 31
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/d;->a:J

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/d;->b:Landroid/os/Handler;

    return-void
.end method

.method private static a(Landroid/location/LocationManager;)Landroid/location/Location;
    .registers 2

    .prologue
    .line 129
    const-string v0, "gps"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 130
    if-nez v0, :cond_e

    .line 131
    const-string v0, "network"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 133
    :cond_e
    if-nez v0, :cond_16

    .line 134
    const-string v0, "passive"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 136
    :cond_16
    return-object v0
.end method

.method private static a(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
    .registers 6

    .prologue
    .line 141
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/d$b;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/d$b;-><init>(Landroid/location/LocationManager;Ljava/lang/String;)V

    .line 142
    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/b;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/i/b;-><init>(Ljava/util/concurrent/Callable;II)V

    .line 143
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/d$2;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/i/b;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->b(Lcom/bytedance/sdk/openadsdk/i/c;)V

    .line 149
    const-wide/16 v2, 0x1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/i/b;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    .line 152
    :goto_22
    return-object v0

    .line 151
    :catch_23
    move-exception v0

    .line 152
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private static a()Lcom/bytedance/sdk/openadsdk/TTLocation;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 158
    :try_start_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/d$a;-><init>(Lcom/bytedance/sdk/openadsdk/utils/d$1;)V

    .line 159
    new-instance v2, Lcom/bytedance/sdk/openadsdk/i/b;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/i/b;-><init>(Ljava/util/concurrent/Callable;II)V

    .line 160
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v3, Lcom/bytedance/sdk/openadsdk/utils/d$3;

    invoke-direct {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/i/b;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/i/a;->b(Lcom/bytedance/sdk/openadsdk/i/c;)V

    .line 166
    const-wide/16 v4, 0x1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/i/b;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTLocation;

    .line 167
    const-string v2, "AdLocationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3c} :catch_3d

    .line 170
    :goto_3c
    return-object v0

    .line 169
    :catch_3d
    move-exception v0

    move-object v0, v1

    .line 170
    goto :goto_3c
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseLocation()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 47
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getTTLocation()Lcom/bytedance/sdk/openadsdk/TTLocation;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 49
    const/4 v0, 0x0

    .line 60
    :goto_1d
    return-object v0

    .line 52
    :cond_1e
    if-nez p0, :cond_3f

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    .line 53
    :goto_24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->m()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    sput-wide v2, Lcom/bytedance/sdk/openadsdk/utils/d;->a:J

    .line 54
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->c(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v1

    .line 56
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_44

    move-object v0, v1

    .line 57
    goto :goto_1d

    .line 52
    :cond_3f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_24

    .line 59
    :cond_44
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->d(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v0

    goto :goto_1d
.end method

.method static synthetic a(Landroid/content/Context;Landroid/location/Location;)V
    .registers 2

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/content/Context;Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/location/LocationManager;)V
    .registers 2

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/content/Context;Landroid/location/LocationManager;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTLocation;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 286
    if-eqz p1, :cond_35

    .line 287
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTLocation;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTLocation;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_35

    .line 288
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    .line 289
    const-string v1, "latitude"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTLocation;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;F)V

    .line 290
    const-string v1, "longitude"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTLocation;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;F)V

    .line 291
    const-string v1, "lbstime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;J)V

    .line 293
    :cond_35
    return-void
.end method

.method static synthetic a(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
    .registers 2

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    return-void
.end method

.method static synthetic a(Landroid/location/Location;)Z
    .registers 2

    .prologue
    .line 29
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/location/LocationManager;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 205
    const-string v0, "gps"

    .line 211
    :goto_a
    return-object v0

    .line 206
    :cond_b
    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 207
    const-string v0, "network"

    goto :goto_a

    .line 208
    :cond_16
    const-string v0, "passive"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 209
    const-string v0, "passive"

    goto :goto_a

    .line 211
    :cond_21
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static b(Landroid/content/Context;Landroid/location/Location;)V
    .registers 6

    .prologue
    .line 276
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 283
    :goto_6
    return-void

    .line 279
    :cond_7
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    .line 280
    const-string v1, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;F)V

    .line 281
    const-string v1, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;F)V

    .line 282
    const-string v1, "lbstime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;J)V

    goto :goto_6
.end method

.method private static b(Landroid/content/Context;Landroid/location/LocationManager;)V
    .registers 8

    .prologue
    .line 215
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 260
    :cond_4
    :goto_4
    return-void

    .line 218
    :cond_5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/d$4;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/d$4;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    .line 241
    :try_start_a
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 246
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 248
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/d;->b:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/d$5;

    invoke-direct {v2, p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/d$5;-><init>(Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_27} :catch_28

    goto :goto_4

    .line 254
    :catch_28
    move-exception v0

    .line 255
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 256
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 258
    :cond_32
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    goto :goto_4
.end method

.method private static b(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
    .registers 4

    .prologue
    .line 263
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 273
    :cond_4
    :goto_4
    return-void

    .line 267
    :cond_5
    :try_start_5
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_4

    .line 268
    :catch_9
    move-exception v0

    .line 269
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 270
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 64
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    .line 65
    const-string v1, "lbstime"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 66
    cmp-long v2, v0, v2

    if-eqz v2, :cond_20

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    sget-wide v2, Lcom/bytedance/sdk/openadsdk/utils/d;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    .line 66
    :goto_21
    return v0

    .line 67
    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static b(Landroid/location/Location;)Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 296
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static c(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    .line 72
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    .line 73
    const-string v1, "latitude"

    invoke-virtual {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;F)F

    move-result v1

    .line 74
    const-string v2, "longitude"

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;F)F

    move-result v2

    .line 75
    cmpl-float v0, v1, v3

    if-eqz v0, :cond_1a

    cmpl-float v0, v2, v3

    if-nez v0, :cond_1c

    .line 76
    :cond_1a
    const/4 v0, 0x0

    .line 78
    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/c;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/c;-><init>(FF)V

    goto :goto_1b
.end method

.method private static d(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseLocation()Z

    move-result v0

    if-nez v0, :cond_37

    .line 85
    :try_start_f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/d;->a()Lcom/bytedance/sdk/openadsdk/TTLocation;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_36

    .line 87
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTLocation;)V

    .line 88
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    .line 89
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v3

    .line 90
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/c;

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/c;-><init>(FF)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_35} :catch_95

    move-object v1, v0

    .line 125
    :cond_36
    :goto_36
    return-object v1

    .line 97
    :cond_37
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 99
    if-eqz v0, :cond_97

    .line 101
    :try_start_41
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v3

    .line 102
    if-eqz v3, :cond_60

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 103
    invoke-static {p0, v3}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/content/Context;Landroid/location/Location;)V

    .line 104
    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/c;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-float v4, v4

    .line 105
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-direct {v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/c;-><init>(FF)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_5f} :catch_90

    move-object v1, v2

    .line 108
    :cond_60
    :try_start_60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_7e

    .line 109
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/utils/d$1;

    invoke-direct {v3, p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/d$1;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_7b
    move-object v0, v1

    :cond_7c
    :goto_7c
    move-object v1, v0

    .line 125
    goto :goto_36

    .line 116
    :cond_7e
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->b(Landroid/content/Context;Landroid/location/LocationManager;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_81} :catch_82

    goto :goto_7b

    .line 118
    :catch_82
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 120
    :goto_86
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 121
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7c

    .line 118
    :catch_90
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_86

    .line 92
    :catch_95
    move-exception v0

    goto :goto_36

    :cond_97
    move-object v0, v1

    goto :goto_7c
.end method
