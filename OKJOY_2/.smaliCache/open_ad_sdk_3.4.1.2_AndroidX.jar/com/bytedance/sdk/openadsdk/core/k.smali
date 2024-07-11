.class public Lcom/bytedance/sdk/openadsdk/core/k;
.super Ljava/lang/Object;
.source "IdUtils.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 3

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    :try_start_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->e()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 482
    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 483
    :cond_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 484
    const-string v1, "FLYME-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 486
    :cond_1d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ad;->n()Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 488
    const-string v2, "EMUI-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_2c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_3b
    :goto_3b
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_41

    .line 496
    goto :goto_42

    .line 495
    :catch_41
    move-exception v1

    .line 497
    :goto_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 63
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 64
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v0, :cond_1b

    .line 65
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/k;

    monitor-enter v0

    .line 66
    :try_start_f
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v1, :cond_16

    .line 67
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->l(Landroid/content/Context;)V

    .line 69
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_18

    throw p0

    .line 73
    :cond_1b
    :goto_1b
    :try_start_1b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 75
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->k(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object p0

    const-string v0, "did"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/k;->a:Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3a} :catch_3b

    .line 78
    :cond_3a
    goto :goto_3c

    .line 77
    :catch_3b
    move-exception p0

    .line 79
    :goto_3c
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/k;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 4

    const-class p1, Lcom/bytedance/sdk/openadsdk/core/k;

    monitor-enter p1

    .line 349
    :try_start_3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->k(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2b

    .line 350
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 351
    monitor-exit p1

    return-object v0

    .line 354
    :cond_c
    nop

    .line 356
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_18
    .catchall {:try_start_d .. :try_end_17} :catchall_2b

    .line 360
    goto :goto_19

    .line 357
    :catch_18
    move-exception p0

    .line 361
    :goto_19
    :try_start_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0xd

    if-ge p0, v1, :cond_29

    .line 362
    :cond_27
    const-string v0, ""
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_2b

    .line 399
    :cond_29
    monitor-exit p1

    return-object v0

    .line 348
    :catchall_2b
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public static a(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .registers 7

    .line 294
    nop

    .line 295
    const-string v0, "02:00:00:00:00:00"

    if-nez p0, :cond_6

    .line 296
    return-object v0

    .line 300
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 301
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 302
    if-eqz v1, :cond_36

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 303
    const/4 v2, 0x0

    :goto_19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 304
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 305
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 306
    iget-object v0, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_33} :catch_37

    .line 303
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 311
    :cond_36
    goto :goto_38

    .line 310
    :catch_37
    move-exception p0

    .line 312
    :goto_38
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 231
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object p0

    .line 232
    const-string v0, "did"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/k;->a:Ljava/lang/String;

    .line 235
    :cond_19
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/k;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2c

    .line 236
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/k;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/s;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object p0

    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/k;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/s;->a(Ljava/lang/String;)V

    .line 238
    :cond_2c
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 83
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->h:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 84
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v0, :cond_17

    .line 85
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/k;

    monitor-enter v0

    .line 86
    :try_start_b
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v1, :cond_12

    .line 87
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->l(Landroid/content/Context;)V

    .line 89
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    throw p0

    .line 92
    :cond_17
    :goto_17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/k;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 96
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 97
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v0, :cond_1b

    .line 98
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/k;

    monitor-enter v0

    .line 99
    :try_start_f
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v1, :cond_16

    .line 100
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->l(Landroid/content/Context;)V

    .line 102
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_18

    throw p0

    .line 105
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/k;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 109
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v1

    if-nez v1, :cond_15

    .line 112
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getDevImei()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 114
    :cond_15
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 115
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v0, :cond_30

    .line 116
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/k;

    monitor-enter v0

    .line 117
    :try_start_24
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v1, :cond_2b

    .line 118
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->l(Landroid/content/Context;)V

    .line 120
    :cond_2b
    monitor-exit v0

    goto :goto_30

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_2d

    throw p0

    .line 123
    :cond_30
    :goto_30
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/k;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 127
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 128
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v0, :cond_1b

    .line 129
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/k;

    monitor-enter v0

    .line 130
    :try_start_f
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v1, :cond_16

    .line 131
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->l(Landroid/content/Context;)V

    .line 133
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_18

    throw p0

    .line 136
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/k;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 140
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v0

    if-nez v0, :cond_12

    .line 142
    const/4 p0, 0x0

    return-object p0

    .line 144
    :cond_12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 145
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v0, :cond_2d

    .line 146
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/k;

    monitor-enter v0

    .line 147
    :try_start_21
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v1, :cond_28

    .line 148
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->l(Landroid/content/Context;)V

    .line 150
    :cond_28
    monitor-exit v0

    goto :goto_2d

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2a

    throw p0

    .line 153
    :cond_2d
    :goto_2d
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/k;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 157
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v0

    if-nez v0, :cond_12

    .line 159
    const/4 p0, 0x0

    return-object p0

    .line 161
    :cond_12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 162
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v0, :cond_2d

    .line 163
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/k;

    monitor-enter v0

    .line 164
    :try_start_21
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v1, :cond_28

    .line 165
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->l(Landroid/content/Context;)V

    .line 167
    :cond_28
    monitor-exit v0

    goto :goto_2d

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2a

    throw p0

    .line 170
    :cond_2d
    :goto_2d
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 187
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v0

    if-nez v0, :cond_12

    .line 190
    const/4 p0, 0x0

    return-object p0

    .line 192
    :cond_12
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 193
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v0, :cond_2d

    .line 194
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/k;

    monitor-enter v0

    .line 195
    :try_start_21
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v1, :cond_28

    .line 196
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->l(Landroid/content/Context;)V

    .line 198
    :cond_28
    monitor-exit v0

    goto :goto_2d

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2a

    throw p0

    .line 201
    :cond_2d
    :goto_2d
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/k;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_18

    .line 206
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v0

    if-nez v0, :cond_18

    .line 208
    const/4 p0, 0x0

    return-object p0

    .line 211
    :cond_18
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 212
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v0, :cond_33

    .line 213
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/k;

    monitor-enter v0

    .line 214
    :try_start_27
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-nez v1, :cond_2e

    .line 215
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->l(Landroid/content/Context;)V

    .line 217
    :cond_2e
    monitor-exit v0

    goto :goto_33

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_30

    throw p0

    .line 220
    :cond_33
    :goto_33
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/k;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static j(Landroid/content/Context;)V
    .registers 2

    .line 318
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 319
    return-void

    .line 322
    :cond_9
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->k(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 323
    if-nez p0, :cond_10

    .line 324
    return-void

    .line 327
    :cond_10
    :try_start_10
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->m(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    .line 329
    goto :goto_15

    .line 328
    :catch_14
    move-exception p0

    .line 331
    :goto_15
    return-void
.end method

.method private static k(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    .line 59
    if-nez p0, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method private static l(Landroid/content/Context;)V
    .registers 5

    .line 243
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    if-eqz v0, :cond_5

    .line 244
    return-void

    .line 246
    :cond_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->k(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 247
    if-nez p0, :cond_c

    .line 248
    return-void

    .line 252
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->m(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    .line 255
    goto :goto_11

    .line 253
    :catch_10
    move-exception v0

    .line 258
    :goto_11
    const/4 v0, 0x0

    :try_start_12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 260
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseLocation()Z

    move-result v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_26} :catch_5a

    if-eqz v1, :cond_48

    .line 263
    :try_start_28
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 264
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    goto :goto_38

    :cond_37
    move-object v2, v0

    .line 265
    :goto_38
    if-eqz v2, :cond_40

    .line 266
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/core/k;->d:Ljava/lang/String;

    .line 268
    :cond_40
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/k;->e:Ljava/lang/String;
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_47

    .line 270
    goto :goto_48

    .line 269
    :catchall_47
    move-exception v1

    .line 273
    :cond_48
    :goto_48
    :try_start_48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_55

    .line 274
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/k;->j:Ljava/lang/String;

    goto :goto_59

    .line 276
    :cond_55
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/k;->j:Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_59} :catch_5a

    .line 280
    :goto_59
    goto :goto_5b

    .line 278
    :catch_5a
    move-exception v1

    .line 281
    :goto_5b
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/core/k;->b:Ljava/lang/String;

    .line 282
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v2

    const-string v3, "did"

    invoke-virtual {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/core/k;->a:Ljava/lang/String;

    .line 283
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k;->a()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/core/k;->g:Ljava/lang/String;

    .line 285
    sget-wide v2, Landroid/os/Build;->TIME:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/core/k;->h:Ljava/lang/String;

    .line 286
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object p0

    const-string v2, "uuid"

    invoke-virtual {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/k;->i:Ljava/lang/String;

    .line 287
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/k;->k:Z

    .line 288
    return-void
.end method

.method private static m(Landroid/content/Context;)V
    .registers 2

    .line 335
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v0

    if-nez v0, :cond_11

    .line 337
    return-void

    .line 339
    :cond_11
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 340
    if-eqz p0, :cond_27

    .line 341
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/k;->c:Ljava/lang/String;

    .line 342
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/k;->f:Ljava/lang/String;

    .line 344
    :cond_27
    return-void
.end method
