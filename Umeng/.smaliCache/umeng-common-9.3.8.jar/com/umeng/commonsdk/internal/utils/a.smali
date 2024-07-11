.class public Lcom/umeng/commonsdk/internal/utils/a;
.super Ljava/lang/Object;
.source "ApplicationLayerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/internal/utils/a$a;,
        Lcom/umeng/commonsdk/internal/utils/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .registers 4

    .line 192
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 193
    return v0

    .line 195
    :cond_4
    nop

    .line 196
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 198
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 200
    nop

    .line 201
    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_19

    .line 207
    goto :goto_35

    .line 203
    :catch_19
    move-exception p0

    .line 204
    nop

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFontSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;)V

    .line 208
    :goto_35
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)J
    .registers 6

    .line 60
    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    .line 61
    return-wide v0

    .line 63
    :cond_5
    nop

    .line 65
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 66
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_11} :catch_12

    .line 72
    goto :goto_31

    .line 67
    :catch_12
    move-exception p1

    .line 68
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 69
    nop

    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppFirstInstallTime"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;)V

    .line 73
    :goto_31
    return-wide v0
.end method

.method public static a()Z
    .registers 1

    .line 172
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/h;->a()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)J
    .registers 6

    .line 84
    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    .line 85
    return-wide v0

    .line 87
    :cond_5
    nop

    .line 89
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 90
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_11} :catch_12

    .line 96
    goto :goto_31

    .line 91
    :catch_12
    move-exception p1

    .line 92
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 93
    nop

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppLastUpdateTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;)V

    .line 97
    :goto_31
    return-wide v0
.end method

.method public static b(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;
    .registers 3

    .line 248
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 249
    return-object v0

    .line 251
    :cond_4
    nop

    .line 252
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 253
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 254
    if-eqz p0, :cond_1b

    .line 255
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 258
    :cond_1b
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .line 181
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 182
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 3

    .line 506
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "df"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/utils/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 108
    nop

    .line 110
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    .line 116
    goto :goto_2a

    .line 111
    :catch_a
    move-exception p1

    .line 112
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 113
    nop

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAppInstaller:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;)V

    .line 117
    const/4 p0, 0x0

    :goto_2a
    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .registers 9

    .line 281
    if-nez p0, :cond_3

    .line 282
    return-void

    .line 284
    :cond_3
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->b(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 285
    if-nez v0, :cond_a

    .line 286
    return-void

    .line 288
    :cond_a
    new-instance v1, Lcom/umeng/commonsdk/internal/utils/a$b;

    invoke-direct {v1}, Lcom/umeng/commonsdk/internal/utils/a$b;-><init>()V

    .line 289
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->describeContents()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/internal/utils/a$b;->a:I

    .line 290
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/commonsdk/internal/utils/a$b;->b:Ljava/lang/String;

    .line 291
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/commonsdk/internal/utils/a$b;->c:Ljava/lang/String;

    .line 292
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2e

    .line 293
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/internal/utils/a$b;->d:I

    goto :goto_31

    .line 295
    :cond_2e
    const/4 v2, -0x1

    iput v2, v1, Lcom/umeng/commonsdk/internal/utils/a$b;->d:I

    .line 298
    :goto_31
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3c

    .line 299
    iput v3, v1, Lcom/umeng/commonsdk/internal/utils/a$b;->e:I

    goto :goto_3e

    .line 301
    :cond_3c
    iput v4, v1, Lcom/umeng/commonsdk/internal/utils/a$b;->e:I

    .line 304
    :goto_3e
    const-string v2, "header_local_ip"

    invoke-static {v2}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 305
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/internal/utils/a$b;->f:I

    .line 307
    :cond_4c
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/internal/utils/a$b;->g:I

    .line 308
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/commonsdk/internal/utils/a$b;->h:Ljava/lang/String;

    .line 309
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/internal/utils/a$b;->i:I

    .line 310
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/internal/utils/a$b;->j:I

    .line 311
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->f(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcom/umeng/commonsdk/internal/utils/a$b;->k:I

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/umeng/commonsdk/internal/utils/a$b;->l:J

    .line 314
    if-eqz v0, :cond_c3

    .line 317
    nop

    .line 319
    :try_start_73
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/f;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_a0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_a0

    .line 321
    const/4 v2, 0x0

    :goto_80
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_a0

    .line 322
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 323
    const-string v6, "ssid"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 324
    if-eqz v5, :cond_9d

    .line 325
    iget-object v6, v1, Lcom/umeng/commonsdk/internal/utils/a$b;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 326
    nop

    .line 327
    goto :goto_a1

    .line 321
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 332
    :cond_a0
    const/4 v3, 0x0

    :goto_a1
    if-nez v3, :cond_a6

    .line 333
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/utils/f;->a(Landroid/content/Context;Lcom/umeng/commonsdk/internal/utils/a$b;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_a6} :catch_a7

    .line 339
    :cond_a6
    goto :goto_c3

    .line 335
    :catch_a7
    move-exception p0

    .line 336
    nop

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifiChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;)V

    .line 342
    :cond_c3
    :goto_c3
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 128
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 129
    return v0

    .line 131
    :cond_4
    nop

    .line 133
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 134
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 135
    if-eqz p1, :cond_13

    .line 136
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_13} :catch_15

    .line 144
    :cond_13
    nop

    .line 145
    return v0

    .line 138
    :catch_15
    move-exception p1

    .line 139
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 140
    nop

    .line 141
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppUid:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;)V

    .line 143
    return v0
.end method

.method public static d()J
    .registers 4

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 629
    return-wide v0
.end method

.method public static d(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 1

    .line 352
    if-nez p0, :cond_4

    .line 353
    const/4 p0, 0x0

    return-object p0

    .line 355
    :cond_4
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/f;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    .line 356
    return-object p0
.end method

.method public static e()Ljava/lang/String;
    .registers 7

    .line 685
    nop

    .line 687
    const/4 v0, 0x0

    :try_start_2
    const-class v1, Landroid/os/Build;

    const-string v2, "getString"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 688
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 689
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "net.hostname"

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_31

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 692
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->getUmengMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_32

    .line 698
    :cond_31
    goto :goto_4e

    .line 694
    :catch_32
    move-exception v1

    .line 695
    nop

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHostName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;)V

    .line 700
    :goto_4e
    return-object v0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 581
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 582
    return-object v0

    .line 584
    :cond_4
    nop

    .line 586
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 589
    if-eqz p1, :cond_1c

    .line 590
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_1d

    move-object v0, p0

    .line 596
    :cond_1c
    goto :goto_39

    .line 592
    :catch_1d
    move-exception p0

    .line 593
    nop

    .line 594
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLabel:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;)V

    .line 597
    :goto_39
    return-object v0
.end method

.method public static e(Landroid/content/Context;)V
    .registers 1

    .line 365
    if-nez p0, :cond_3

    .line 366
    return-void

    .line 368
    :cond_3
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/f;->b(Landroid/content/Context;)V

    .line 369
    return-void
.end method

.method public static f(Landroid/content/Context;)I
    .registers 3

    .line 397
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 398
    return v0

    .line 400
    :cond_4
    nop

    .line 401
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 402
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 403
    if-eqz p0, :cond_1b

    .line 404
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 408
    :cond_1b
    return v0
.end method

.method public static g(Landroid/content/Context;)I
    .registers 4

    .line 418
    if-nez p0, :cond_4

    .line 419
    const/4 p0, 0x0

    return p0

    .line 421
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 422
    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 423
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 424
    return p0
.end method

.method public static h(Landroid/content/Context;)I
    .registers 4

    .line 434
    if-nez p0, :cond_4

    .line 435
    const/4 p0, 0x0

    return p0

    .line 437
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 438
    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 439
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 440
    return p0
.end method

.method public static i(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 1

    .line 450
    if-nez p0, :cond_4

    .line 451
    const/4 p0, 0x0

    return-object p0

    .line 453
    :cond_4
    nop

    .line 454
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 455
    return-object p0
.end method

.method public static j(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 516
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 517
    return-object v0

    .line 519
    :cond_4
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 520
    if-nez p0, :cond_f

    .line 521
    return-object v0

    .line 523
    :cond_f
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object p0

    .line 524
    return-object p0
.end method

.method public static k(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/umeng/commonsdk/internal/utils/a$a;",
            ">;"
        }
    .end annotation

    .line 535
    if-nez p0, :cond_4

    .line 536
    const/4 p0, 0x0

    return-object p0

    .line 538
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 540
    :try_start_9
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 542
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 543
    if-eqz v1, :cond_57

    array-length v2, v1

    if-lez v2, :cond_57

    .line 544
    array-length v2, v1

    const/4 v3, 0x0

    :goto_36
    if-ge v3, v2, :cond_57

    aget-object v4, v1, v3

    .line 545
    if-eqz v4, :cond_54

    .line 546
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 547
    new-instance v5, Lcom/umeng/commonsdk/internal/utils/a$a;

    invoke-direct {v5}, Lcom/umeng/commonsdk/internal/utils/a$a;-><init>()V

    .line 548
    iput-object v4, v5, Lcom/umeng/commonsdk/internal/utils/a$a;->a:Ljava/lang/String;

    .line 549
    invoke-static {p0, v4}, Lcom/umeng/commonsdk/internal/utils/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/umeng/commonsdk/internal/utils/a$a;->b:Ljava/lang/String;

    .line 550
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_54} :catch_58

    .line 544
    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 561
    :cond_57
    goto :goto_74

    .line 557
    :catch_58
    move-exception p0

    .line 558
    nop

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;)V

    .line 562
    :goto_74
    return-object v0
.end method

.method public static l(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;
    .registers 3

    .line 607
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 608
    return-object v0

    .line 610
    :cond_4
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 611
    if-nez p0, :cond_f

    .line 612
    return-object v0

    .line 615
    :cond_f
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 617
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 619
    return-object v0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 639
    nop

    .line 640
    const/4 p0, 0x0

    return-object p0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 676
    const/4 p0, 0x0

    return-object p0
.end method
