.class public Lcom/androidquery/callback/LocationAjaxCallback;
.super Lcom/androidquery/callback/AbstractAjaxCallback;
.source "LocationAjaxCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidquery/callback/LocationAjaxCallback$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AbstractAjaxCallback",
        "<",
        "Landroid/location/Location;",
        "Lcom/androidquery/callback/LocationAjaxCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private accuracy:F

.field private gpsEnabled:Z

.field private gpsListener:Lcom/androidquery/callback/LocationAjaxCallback$Listener;

.field private initTime:J

.field private interval:J

.field private iteration:I

.field private lm:Landroid/location/LocationManager;

.field private n:I

.field private networkEnabled:Z

.field private networkListener:Lcom/androidquery/callback/LocationAjaxCallback$Listener;

.field private timeout:J

.field private tolerance:F


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;-><init>()V

    .line 38
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->timeout:J

    .line 39
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->interval:J

    .line 40
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->tolerance:F

    .line 41
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->accuracy:F

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->iteration:I

    .line 43
    iput v2, p0, Lcom/androidquery/callback/LocationAjaxCallback;->n:I

    .line 44
    iput-boolean v2, p0, Lcom/androidquery/callback/LocationAjaxCallback;->networkEnabled:Z

    .line 45
    iput-boolean v2, p0, Lcom/androidquery/callback/LocationAjaxCallback;->gpsEnabled:Z

    .line 53
    const-class v0, Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/LocationAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/LocationAjaxCallback;

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/LocationAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/androidquery/callback/LocationAjaxCallback;Landroid/location/Location;)V
    .registers 2

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/androidquery/callback/LocationAjaxCallback;->check(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$1(Lcom/androidquery/callback/LocationAjaxCallback;)Landroid/location/Location;
    .registers 2

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/androidquery/callback/LocationAjaxCallback;->getBestLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/androidquery/callback/LocationAjaxCallback;)Landroid/location/LocationManager;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->lm:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/androidquery/callback/LocationAjaxCallback;)V
    .registers 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/androidquery/callback/LocationAjaxCallback;->failure()V

    return-void
.end method

.method private callback(Landroid/location/Location;)V
    .registers 3
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/androidquery/callback/LocationAjaxCallback;->result:Ljava/lang/Object;

    .line 126
    const/16 v0, 0xc8

    invoke-direct {p0, p1, v0}, Lcom/androidquery/callback/LocationAjaxCallback;->status(Landroid/location/Location;I)V

    .line 127
    invoke-virtual {p0}, Lcom/androidquery/callback/LocationAjaxCallback;->callback()V

    .line 128
    return-void
.end method

.method private check(Landroid/location/Location;)V
    .registers 10
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 87
    if-eqz p1, :cond_5f

    .line 89
    invoke-direct {p0, p1}, Lcom/androidquery/callback/LocationAjaxCallback;->isBetter(Landroid/location/Location;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 91
    iget v6, p0, Lcom/androidquery/callback/LocationAjaxCallback;->n:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/androidquery/callback/LocationAjaxCallback;->n:I

    .line 92
    iget v6, p0, Lcom/androidquery/callback/LocationAjaxCallback;->n:I

    iget v7, p0, Lcom/androidquery/callback/LocationAjaxCallback;->iteration:I

    if-lt v6, v7, :cond_60

    move v3, v4

    .line 94
    .local v3, "last":Z
    :goto_17
    invoke-direct {p0, p1}, Lcom/androidquery/callback/LocationAjaxCallback;->isAccurate(Landroid/location/Location;)Z

    move-result v0

    .line 95
    .local v0, "accurate":Z
    invoke-direct {p0, p1}, Lcom/androidquery/callback/LocationAjaxCallback;->isDiff(Landroid/location/Location;)Z

    move-result v2

    .line 97
    .local v2, "diff":Z
    iget-boolean v6, p0, Lcom/androidquery/callback/LocationAjaxCallback;->gpsEnabled:Z

    if-eqz v6, :cond_62

    const-string v6, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_62

    move v1, v5

    .line 99
    .local v1, "best":Z
    :goto_30
    iget v4, p0, Lcom/androidquery/callback/LocationAjaxCallback;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/androidquery/callback/LocationAjaxCallback;->iteration:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    const-string v4, "acc"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    const-string v4, "best"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    if-eqz v2, :cond_5f

    .line 105
    if-eqz v3, :cond_64

    .line 106
    if-eqz v0, :cond_5f

    if-eqz v1, :cond_5f

    .line 107
    invoke-virtual {p0}, Lcom/androidquery/callback/LocationAjaxCallback;->stop()V

    .line 108
    invoke-direct {p0, p1}, Lcom/androidquery/callback/LocationAjaxCallback;->callback(Landroid/location/Location;)V

    .line 122
    .end local v0    # "accurate":Z
    .end local v1    # "best":Z
    .end local v2    # "diff":Z
    .end local v3    # "last":Z
    :cond_5f
    :goto_5f
    return-void

    :cond_60
    move v3, v5

    .line 92
    goto :goto_17

    .restart local v0    # "accurate":Z
    .restart local v2    # "diff":Z
    .restart local v3    # "last":Z
    :cond_62
    move v1, v4

    .line 97
    goto :goto_30

    .line 111
    .restart local v1    # "best":Z
    :cond_64
    if-eqz v0, :cond_6b

    if-eqz v1, :cond_6b

    .line 112
    invoke-virtual {p0}, Lcom/androidquery/callback/LocationAjaxCallback;->stop()V

    .line 114
    :cond_6b
    invoke-direct {p0, p1}, Lcom/androidquery/callback/LocationAjaxCallback;->callback(Landroid/location/Location;)V

    goto :goto_5f
.end method

.method private static distFrom(DDDD)F
    .registers 28
    .param p0, "lat1"    # D
    .param p2, "lng1"    # D
    .param p4, "lat2"    # D
    .param p6, "lng2"    # D

    .prologue
    .line 267
    const-wide v10, 0x40aeed8000000000L    # 3958.75

    .line 268
    .local v10, "earthRadius":D
    sub-double v14, p4, p0

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 269
    .local v4, "dLat":D
    sub-double v14, p6, p2

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 270
    .local v6, "dLng":D
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v14, v4, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v16, v4, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    .line 271
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    .line 272
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v18, v6, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 271
    mul-double v16, v16, v18

    .line 272
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v18, v6, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 271
    mul-double v16, v16, v18

    .line 270
    add-double v0, v14, v16

    .line 273
    .local v0, "a":D
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    mul-double v2, v14, v16

    .line 274
    .local v2, "c":D
    mul-double v8, v10, v2

    .line 276
    .local v8, "dist":D
    const/16 v12, 0x649

    .line 277
    .local v12, "meterConversion":I
    double-to-float v13, v8

    int-to-float v14, v12

    mul-float/2addr v13, v14

    return v13
.end method

.method private failure()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->gpsListener:Lcom/androidquery/callback/LocationAjaxCallback$Listener;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->networkListener:Lcom/androidquery/callback/LocationAjaxCallback$Listener;

    if-nez v0, :cond_a

    .line 193
    :goto_9
    return-void

    .line 187
    :cond_a
    const-string v0, "fail"

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 189
    iput-object v1, p0, Lcom/androidquery/callback/LocationAjaxCallback;->result:Ljava/lang/Object;

    .line 190
    const/16 v0, -0x67

    invoke-direct {p0, v1, v0}, Lcom/androidquery/callback/LocationAjaxCallback;->status(Landroid/location/Location;I)V

    .line 191
    invoke-virtual {p0}, Lcom/androidquery/callback/LocationAjaxCallback;->stop()V

    .line 192
    invoke-virtual {p0}, Lcom/androidquery/callback/LocationAjaxCallback;->callback()V

    goto :goto_9
.end method

.method private getBestLocation()Landroid/location/Location;
    .registers 7

    .prologue
    .line 250
    iget-object v2, p0, Lcom/androidquery/callback/LocationAjaxCallback;->lm:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 251
    .local v0, "loc1":Landroid/location/Location;
    iget-object v2, p0, Lcom/androidquery/callback/LocationAjaxCallback;->lm:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 253
    .local v1, "loc2":Landroid/location/Location;
    if-nez v1, :cond_13

    .line 259
    .end local v0    # "loc1":Landroid/location/Location;
    :cond_12
    :goto_12
    return-object v0

    .line 254
    .restart local v0    # "loc1":Landroid/location/Location;
    :cond_13
    if-nez v0, :cond_17

    move-object v0, v1

    goto :goto_12

    .line 256
    :cond_17
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_12

    move-object v0, v1

    .line 259
    goto :goto_12
.end method

.method private isAccurate(Landroid/location/Location;)Z
    .registers 4
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget v1, p0, Lcom/androidquery/callback/LocationAjaxCallback;->accuracy:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isBetter(Landroid/location/Location;)Z
    .registers 8
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v1, 0x1

    .line 170
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->result:Ljava/lang/Object;

    if-nez v0, :cond_7

    move v0, v1

    .line 178
    :goto_6
    return v0

    .line 173
    :cond_7
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->result:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/androidquery/callback/LocationAjaxCallback;->initTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_38

    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->result:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v2, "network"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 174
    const-string v0, "inferior location"

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 175
    const/4 v0, 0x0

    goto :goto_6

    :cond_38
    move v0, v1

    .line 178
    goto :goto_6
.end method

.method private isDiff(Landroid/location/Location;)Z
    .registers 12
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v9, 0x1

    .line 155
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->result:Ljava/lang/Object;

    if-nez v0, :cond_7

    move v0, v9

    .line 163
    :goto_6
    return v0

    .line 157
    :cond_7
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->result:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/androidquery/callback/LocationAjaxCallback;->result:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/androidquery/callback/LocationAjaxCallback;->distFrom(DDDD)F

    move-result v8

    .line 159
    .local v8, "diff":F
    iget v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->tolerance:F

    cmpg-float v0, v8, v0

    if-gez v0, :cond_30

    .line 160
    const-string v0, "duplicate location"

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 161
    const/4 v0, 0x0

    goto :goto_6

    :cond_30
    move v0, v9

    .line 163
    goto :goto_6
.end method

.method private status(Landroid/location/Location;I)V
    .registers 7
    .param p1, "loc"    # Landroid/location/Location;
    .param p2, "code"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-nez v0, :cond_b

    .line 135
    new-instance v0, Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxStatus;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    .line 138
    :cond_b
    if-eqz p1, :cond_1b

    .line 139
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;

    .line 142
    :cond_1b
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    .line 144
    return-void
.end method

.method private work()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 219
    invoke-direct {p0}, Lcom/androidquery/callback/LocationAjaxCallback;->getBestLocation()Landroid/location/Location;

    move-result-object v7

    .line 221
    .local v7, "loc":Landroid/location/Location;
    new-instance v8, Ljava/util/Timer;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Ljava/util/Timer;-><init>(Z)V

    .line 223
    .local v8, "timer":Ljava/util/Timer;
    iget-boolean v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->networkEnabled:Z

    if-eqz v0, :cond_32

    .line 224
    const-string v0, "register net"

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 225
    new-instance v0, Lcom/androidquery/callback/LocationAjaxCallback$Listener;

    invoke-direct {v0, p0, v9}, Lcom/androidquery/callback/LocationAjaxCallback$Listener;-><init>(Lcom/androidquery/callback/LocationAjaxCallback;Lcom/androidquery/callback/LocationAjaxCallback$Listener;)V

    iput-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->networkListener:Lcom/androidquery/callback/LocationAjaxCallback$Listener;

    .line 226
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-wide v2, p0, Lcom/androidquery/callback/LocationAjaxCallback;->interval:J

    iget-object v5, p0, Lcom/androidquery/callback/LocationAjaxCallback;->networkListener:Lcom/androidquery/callback/LocationAjaxCallback$Listener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 227
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->networkListener:Lcom/androidquery/callback/LocationAjaxCallback$Listener;

    iget-wide v2, p0, Lcom/androidquery/callback/LocationAjaxCallback;->timeout:J

    invoke-virtual {v8, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 231
    :cond_32
    iget-boolean v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->gpsEnabled:Z

    if-eqz v0, :cond_58

    .line 232
    const-string v0, "register gps"

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 233
    new-instance v0, Lcom/androidquery/callback/LocationAjaxCallback$Listener;

    invoke-direct {v0, p0, v9}, Lcom/androidquery/callback/LocationAjaxCallback$Listener;-><init>(Lcom/androidquery/callback/LocationAjaxCallback;Lcom/androidquery/callback/LocationAjaxCallback$Listener;)V

    iput-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->gpsListener:Lcom/androidquery/callback/LocationAjaxCallback$Listener;

    .line 234
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-wide v2, p0, Lcom/androidquery/callback/LocationAjaxCallback;->interval:J

    iget-object v5, p0, Lcom/androidquery/callback/LocationAjaxCallback;->gpsListener:Lcom/androidquery/callback/LocationAjaxCallback$Listener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 235
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->gpsListener:Lcom/androidquery/callback/LocationAjaxCallback$Listener;

    iget-wide v2, p0, Lcom/androidquery/callback/LocationAjaxCallback;->timeout:J

    invoke-virtual {v8, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 238
    :cond_58
    iget v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->iteration:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_68

    if-eqz v7, :cond_68

    .line 239
    iget v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->n:I

    .line 240
    invoke-direct {p0, v7}, Lcom/androidquery/callback/LocationAjaxCallback;->callback(Landroid/location/Location;)V

    .line 243
    :cond_68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->initTime:J

    .line 245
    return-void
.end method


# virtual methods
.method public accuracy(F)Lcom/androidquery/callback/LocationAjaxCallback;
    .registers 2
    .param p1, "accuracy"    # F

    .prologue
    .line 71
    iput p1, p0, Lcom/androidquery/callback/LocationAjaxCallback;->accuracy:F

    .line 72
    return-object p0
.end method

.method public async(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->lm:Landroid/location/LocationManager;

    .line 60
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->gpsEnabled:Z

    .line 61
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->networkEnabled:Z

    .line 62
    invoke-direct {p0}, Lcom/androidquery/callback/LocationAjaxCallback;->work()V

    .line 63
    return-void
.end method

.method public iteration(I)Lcom/androidquery/callback/LocationAjaxCallback;
    .registers 2
    .param p1, "iteration"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/androidquery/callback/LocationAjaxCallback;->iteration:I

    .line 82
    return-object p0
.end method

.method public stop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 197
    const-string v2, "stop"

    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/androidquery/callback/LocationAjaxCallback;->gpsListener:Lcom/androidquery/callback/LocationAjaxCallback$Listener;

    .line 201
    .local v0, "gListener":Lcom/androidquery/callback/LocationAjaxCallback$Listener;
    if-eqz v0, :cond_12

    .line 202
    iget-object v2, p0, Lcom/androidquery/callback/LocationAjaxCallback;->lm:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 203
    invoke-virtual {v0}, Lcom/androidquery/callback/LocationAjaxCallback$Listener;->cancel()Z

    .line 206
    :cond_12
    iget-object v1, p0, Lcom/androidquery/callback/LocationAjaxCallback;->networkListener:Lcom/androidquery/callback/LocationAjaxCallback$Listener;

    .line 208
    .local v1, "nListener":Lcom/androidquery/callback/LocationAjaxCallback$Listener;
    if-eqz v1, :cond_1e

    .line 209
    iget-object v2, p0, Lcom/androidquery/callback/LocationAjaxCallback;->lm:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 210
    invoke-virtual {v1}, Lcom/androidquery/callback/LocationAjaxCallback$Listener;->cancel()Z

    .line 213
    :cond_1e
    iput-object v3, p0, Lcom/androidquery/callback/LocationAjaxCallback;->gpsListener:Lcom/androidquery/callback/LocationAjaxCallback$Listener;

    .line 214
    iput-object v3, p0, Lcom/androidquery/callback/LocationAjaxCallback;->networkListener:Lcom/androidquery/callback/LocationAjaxCallback$Listener;

    .line 215
    return-void
.end method

.method public timeout(J)Lcom/androidquery/callback/LocationAjaxCallback;
    .registers 4
    .param p1, "timeout"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/androidquery/callback/LocationAjaxCallback;->timeout:J

    .line 67
    return-object p0
.end method

.method public tolerance(F)Lcom/androidquery/callback/LocationAjaxCallback;
    .registers 2
    .param p1, "tolerance"    # F

    .prologue
    .line 76
    iput p1, p0, Lcom/androidquery/callback/LocationAjaxCallback;->tolerance:F

    .line 77
    return-object p0
.end method
