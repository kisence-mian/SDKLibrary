.class public final Lcom/mintegral/msdk/base/utils/b;
.super Ljava/lang/Object;
.source "CommonBatteryStatusUtil.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:Z

.field private static e:I

.field private static f:Z

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 27
    sput v1, Lcom/mintegral/msdk/base/utils/b;->a:I

    .line 28
    sput v1, Lcom/mintegral/msdk/base/utils/b;->b:I

    .line 29
    sput v1, Lcom/mintegral/msdk/base/utils/b;->c:I

    .line 384
    sput-boolean v0, Lcom/mintegral/msdk/base/utils/b;->d:Z

    .line 411
    sput v0, Lcom/mintegral/msdk/base/utils/b;->e:I

    .line 424
    sput-boolean v0, Lcom/mintegral/msdk/base/utils/b;->f:Z

    .line 437
    sput-boolean v0, Lcom/mintegral/msdk/base/utils/b;->g:Z

    return-void
.end method

.method public static a()I
    .registers 8

    .prologue
    const/16 v0, 0x32

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    .line 104
    const/4 v4, 0x0

    :try_start_d
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 1116
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 1117
    if-eqz v3, :cond_53

    .line 1118
    const/4 v5, 0x0

    const-string v6, "level"

    const/16 v7, 0x32

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    aput v6, v4, v5

    .line 1119
    const/4 v5, 0x1

    const-string v6, "plugged"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    aput v3, v4, v5

    .line 1120
    const/4 v3, 0x1

    aget v3, v4, v3

    if-eqz v3, :cond_51

    :goto_37
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/b;->a(Z)V

    .line 1121
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x1

    aget v3, v4, v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/b;->a(II)I

    move-result v2

    aput v2, v4, v1

    .line 1122
    const/4 v1, 0x0

    aget v1, v4, v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/b;->a(I)V

    .line 106
    :goto_4d
    const/4 v1, 0x0

    aget v0, v4, v1

    .line 112
    :cond_50
    :goto_50
    return v0

    :cond_51
    move v1, v2

    .line 1120
    goto :goto_37

    .line 1124
    :cond_53
    const/4 v1, 0x0

    const/16 v2, 0x32

    aput v2, v4, v1

    .line 1125
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v4, v1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5c} :catch_5d

    goto :goto_4d

    .line 108
    :catch_5d
    move-exception v1

    sget v1, Lcom/mintegral/msdk/base/utils/b;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_50

    .line 109
    sget v0, Lcom/mintegral/msdk/base/utils/b;->a:I

    goto :goto_50
.end method

.method private static a(II)I
    .registers 7

    .prologue
    const/16 v1, 0x64

    .line 148
    .line 149
    const/4 v0, 0x0

    .line 151
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 152
    const-string v3, "SCH-i909"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "SCH-I535"

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "SCH-W899"

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 155
    :cond_1d
    if-le p0, v1, :cond_21

    div-int/lit8 p0, p0, 0xa

    :cond_21
    move v0, p0

    .line 183
    :cond_22
    :goto_22
    if-le v0, v1, :cond_2b

    .line 184
    if-eqz p1, :cond_b7

    const/16 v2, 0x6e

    if-ge v0, v2, :cond_b7

    move v0, v1

    .line 194
    :cond_2b
    :goto_2b
    return v0

    .line 156
    :cond_2c
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XT702"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    move v0, p0

    .line 157
    goto :goto_22

    .line 158
    :cond_3e
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XT907"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_50

    move v0, p0

    .line 159
    goto :goto_22

    .line 160
    :cond_50
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XT1058"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_62

    move v0, p0

    .line 161
    goto :goto_22

    .line 162
    :cond_62
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XT1080"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_74

    move v0, p0

    .line 163
    goto :goto_22

    .line 164
    :cond_74
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "motorola"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 165
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/charge_counter"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 167
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 170
    :cond_93
    if-gtz v0, :cond_a9

    .line 171
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 173
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 177
    :cond_a9
    if-gt v0, v1, :cond_ad

    if-gtz v0, :cond_b0

    :cond_ad
    move v0, p0

    .line 178
    goto/16 :goto_22

    .line 179
    :cond_b0
    rem-int/lit8 v2, p0, 0xa

    if-eqz v2, :cond_22

    :cond_b4
    move v0, p0

    goto/16 :goto_22

    .line 187
    :cond_b7
    div-int/lit8 v0, v0, 0xa

    .line 188
    if-gt v0, v1, :cond_b7

    goto/16 :goto_2b
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    const/4 v1, 0x0

    .line 342
    const/16 v0, 0x400

    new-array v3, v0, [C

    .line 345
    :try_start_a
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_47
    .catchall {:try_start_a .. :try_end_f} :catchall_37

    .line 346
    :try_start_f
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 347
    :goto_14
    invoke-virtual {v1, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    if-ltz v4, :cond_31

    .line 348
    invoke-static {v4, v3, v2}, Lcom/mintegral/msdk/base/utils/b;->a(I[CLjava/lang/StringBuilder;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_1e
    .catchall {:try_start_f .. :try_end_1d} :catchall_42

    goto :goto_14

    .line 353
    :catch_1e
    move-exception v1

    :goto_1f
    if-eqz v0, :cond_24

    .line 355
    :try_start_21
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_3e

    .line 360
    :cond_24
    :goto_24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 362
    const-string v0, "0"

    .line 364
    :cond_30
    return-object v0

    .line 355
    :cond_31
    :try_start_31
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_24

    .line 357
    :catch_35
    move-exception v0

    goto :goto_24

    .line 353
    :catchall_37
    move-exception v0

    :goto_38
    if-eqz v1, :cond_3d

    .line 355
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_40

    .line 357
    :cond_3d
    :goto_3d
    throw v0

    :catch_3e
    move-exception v0

    goto :goto_24

    :catch_40
    move-exception v1

    goto :goto_3d

    .line 353
    :catchall_42
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_38

    :catch_47
    move-exception v0

    move-object v0, v1

    goto :goto_1f
.end method

.method private static declared-synchronized a(I)V
    .registers 3

    .prologue
    .line 418
    const-class v0, Lcom/mintegral/msdk/base/utils/b;

    monitor-enter v0

    :try_start_3
    sput p0, Lcom/mintegral/msdk/base/utils/b;->e:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 419
    monitor-exit v0

    return-void

    .line 418
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(I[CLjava/lang/StringBuilder;)V
    .registers 6

    .prologue
    .line 369
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_17

    .line 370
    aget-char v1, p1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_14

    aget-char v1, p1, v0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_14

    .line 371
    aget-char v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    :cond_17
    return-void
.end method

.method private static declared-synchronized a(Z)V
    .registers 3

    .prologue
    .line 431
    const-class v0, Lcom/mintegral/msdk/base/utils/b;

    monitor-enter v0

    :try_start_3
    sput-boolean p0, Lcom/mintegral/msdk/base/utils/b;->f:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 432
    monitor-exit v0

    return-void

    .line 431
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b()I
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 235
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    .line 238
    const/4 v3, 0x0

    :try_start_b
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "status"

    const/4 v4, 0x1

    .line 239
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1c} :catch_25

    move-result v2

    .line 244
    :goto_1d
    const/4 v3, 0x2

    if-eq v2, v3, :cond_23

    const/4 v3, 0x5

    if-ne v2, v3, :cond_24

    :cond_23
    move v0, v1

    .line 250
    :cond_24
    return v0

    .line 240
    :catch_25
    move-exception v2

    .line 241
    const-string v3, "BatteryStatusUtil"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v0

    goto :goto_1d
.end method
