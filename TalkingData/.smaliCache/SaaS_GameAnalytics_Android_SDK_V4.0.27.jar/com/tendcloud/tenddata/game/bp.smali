.class public Lcom/tendcloud/tenddata/game/bp;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .registers 4

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    nop

    .line 23
    nop

    .line 25
    const/16 v1, 0x17

    :try_start_9
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 26
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_18

    .line 28
    return-object v0

    .line 32
    :cond_18
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 33
    const/4 v1, 0x0

    if-eqz p0, :cond_32

    .line 34
    const-string v1, "gps"

    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 35
    const-string v2, "network"

    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    goto :goto_33

    .line 33
    :cond_32
    const/4 v2, 0x0

    .line 37
    :goto_33
    if-nez v1, :cond_37

    if-eqz v2, :cond_40

    .line 38
    :cond_37
    const-string v1, "passive"

    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    .line 39
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_41

    .line 45
    :cond_40
    goto :goto_42

    .line 41
    :catchall_41
    move-exception p0

    .line 46
    :goto_42
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .line 51
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bp;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 54
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 55
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v4
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_b3

    const-string v5, ""

    if-eqz v4, :cond_44

    :try_start_3b
    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_45

    :cond_44
    move-object v4, v5

    :goto_45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 58
    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_69

    :cond_68
    move-object v4, v5

    :goto_69
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 60
    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_81

    :cond_80
    move-object v4, v5

    :goto_81
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_97

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :cond_97
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    goto/16 :goto_d

    .line 64
    :cond_ae
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_b2
    .catchall {:try_start_3b .. :try_end_b2} :catchall_b3

    return-object p0

    .line 65
    :catchall_b3
    move-exception p0

    .line 70
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 6

    .line 74
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 75
    const/16 v1, 0x17

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 76
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_16

    .line 78
    return-object v0

    .line 83
    :cond_16
    nop

    .line 84
    nop

    .line 85
    :try_start_18
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 86
    const/4 v1, 0x0

    if-eqz p0, :cond_32

    .line 87
    const-string v1, "gps"

    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 88
    const-string v2, "network"

    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    goto :goto_33

    .line 86
    :cond_32
    const/4 v2, 0x0

    .line 90
    :goto_33
    if-nez v1, :cond_37

    if-eqz v2, :cond_bf

    .line 91
    :cond_37
    const-string v1, "passive"

    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_c0

    .line 94
    if-eqz p0, :cond_be

    .line 95
    :try_start_3f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 96
    const-string v2, "lat"

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 97
    const-string v2, "lng"

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 98
    const-string v2, "ts"

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 99
    const/16 v2, 0x11

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 100
    const-string v2, "elapsed"

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 102
    :cond_70
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 103
    const-string v2, "altitude"

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 105
    :cond_7f
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 107
    const-string v2, "hAccuracy"

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 109
    :cond_8f
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 110
    const-string v2, "bearing"

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 112
    :cond_9f
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 113
    const-string v2, "speed"

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 115
    :cond_af
    const-string v2, "provider"

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_bb
    .catchall {:try_start_3f .. :try_end_bb} :catchall_bc

    goto :goto_be

    .line 119
    :catchall_bc
    move-exception p0

    goto :goto_bf

    .line 123
    :cond_be
    :goto_be
    nop

    .line 130
    :cond_bf
    :goto_bf
    goto :goto_c4

    .line 125
    :catchall_c0
    move-exception p0

    .line 129
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 131
    :goto_c4
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 5

    .line 137
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 138
    nop

    .line 139
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bb;->A(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 141
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 142
    const-string v2, "type"

    const-string v3, "sim"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v2, "extra"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 146
    :cond_24
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_2c

    if-lez p0, :cond_2b

    .line 147
    return-object v0

    .line 154
    :cond_2b
    goto :goto_30

    .line 149
    :catchall_2c
    move-exception p0

    .line 150
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 155
    :goto_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)[[Ljava/lang/Long;
    .registers 1

    .line 159
    const/4 p0, 0x3

    new-array p0, p0, [[Ljava/lang/Long;

    .line 160
    return-object p0
.end method
