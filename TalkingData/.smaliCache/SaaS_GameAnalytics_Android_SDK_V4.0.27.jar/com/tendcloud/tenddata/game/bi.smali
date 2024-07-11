.class public final Lcom/tendcloud/tenddata/game/bi;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static a:Z

.field private static b:Z

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tendcloud/tenddata/game/bi;->a:Z

    .line 29
    sput-boolean v0, Lcom/tendcloud/tenddata/game/bi;->b:Z

    .line 300
    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "com.noshufou.android.su"

    aput-object v3, v2, v0

    const-string v3, "com.noshufou.android.su.elite"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "eu.chainfire.supersu"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "com.koushikdutta.superuser"

    const/4 v6, 0x3

    aput-object v3, v2, v6

    const-string v3, "com.thirdparty.superuser"

    const/4 v7, 0x4

    aput-object v3, v2, v7

    const-string v3, "com.yellowes.su"

    const/4 v8, 0x5

    aput-object v3, v2, v8

    const-string v3, "com.topjohnwu.magisk"

    const/4 v9, 0x6

    aput-object v3, v2, v9

    sput-object v2, Lcom/tendcloud/tenddata/game/bi;->c:[Ljava/lang/String;

    .line 310
    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "com.koushikdutta.rommanager"

    aput-object v10, v3, v0

    const-string v10, "com.koushikdutta.rommanager.license"

    aput-object v10, v3, v4

    const-string v10, "com.dimonvideo.luckypatcher"

    aput-object v10, v3, v5

    const-string v10, "com.chelpus.lackypatch"

    aput-object v10, v3, v6

    const-string v10, "com.ramdroid.appquarantine"

    aput-object v10, v3, v7

    const-string v10, "com.ramdroid.appquarantinepro"

    aput-object v10, v3, v8

    const-string v10, "com.android.vending.billing.InAppBillingService.COIN"

    aput-object v10, v3, v9

    const-string v10, "com.chelpus.luckypatcher"

    aput-object v10, v3, v1

    sput-object v3, Lcom/tendcloud/tenddata/game/bi;->d:[Ljava/lang/String;

    .line 321
    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/String;

    const-string v10, "/data/local/"

    aput-object v10, v3, v0

    const-string v10, "/data/local/bin/"

    aput-object v10, v3, v4

    const-string v10, "/data/local/xbin/"

    aput-object v10, v3, v5

    const-string v10, "/sbin/"

    aput-object v10, v3, v6

    const-string v10, "/su/bin/"

    aput-object v10, v3, v7

    const-string v10, "/system/bin/"

    aput-object v10, v3, v8

    const-string v10, "/system/bin/.ext/"

    aput-object v10, v3, v9

    const-string v10, "/system/bin/failsafe/"

    aput-object v10, v3, v1

    const-string v10, "/system/sd/xbin/"

    aput-object v10, v3, v2

    const/16 v2, 0x9

    const-string v10, "/system/usr/we-need-root/"

    aput-object v10, v3, v2

    const/16 v2, 0xa

    const-string v10, "/system/xbin/"

    aput-object v10, v3, v2

    const/16 v2, 0xb

    const-string v10, "/cache"

    aput-object v10, v3, v2

    const/16 v2, 0xc

    const-string v10, "/data"

    aput-object v10, v3, v2

    const/16 v2, 0xd

    const-string v10, "/dev"

    aput-object v10, v3, v2

    sput-object v3, Lcom/tendcloud/tenddata/game/bi;->e:[Ljava/lang/String;

    .line 339
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/system"

    aput-object v2, v1, v0

    const-string v0, "/system/bin"

    aput-object v0, v1, v4

    const-string v0, "/system/sbin"

    aput-object v0, v1, v5

    const-string v0, "/system/xbin"

    aput-object v0, v1, v6

    const-string v0, "/vendor/bin"

    aput-object v0, v1, v7

    const-string v0, "/sbin"

    aput-object v0, v1, v8

    const-string v0, "/etc"

    aput-object v0, v1, v9

    sput-object v1, Lcom/tendcloud/tenddata/game/bi;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .registers 10

    .line 130
    nop

    .line 132
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 133
    const-string v2, "ro.debuggable"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v2, "ro.secure"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {}, Lcom/tendcloud/tenddata/game/bi;->f()[Ljava/lang/String;

    move-result-object v2

    .line 136
    if-nez v2, :cond_1c

    .line 138
    return v0

    .line 140
    :cond_1c
    array-length v3, v2
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_6e

    const/4 v4, 0x0

    :goto_1e
    if-ge v0, v3, :cond_6d

    :try_start_20
    aget-object v5, v2, v0
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_6a

    .line 142
    :try_start_22
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_66

    .line 144
    :try_start_36
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 145
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 146
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 147
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_5f
    .catchall {:try_start_36 .. :try_end_5f} :catchall_63

    if-eqz v7, :cond_62

    .line 148
    const/4 v4, 0x1

    .line 155
    :cond_62
    goto :goto_64

    .line 151
    :catchall_63
    move-exception v7

    .line 156
    :goto_64
    goto :goto_2a

    .line 161
    :cond_65
    goto :goto_67

    .line 157
    :catchall_66
    move-exception v5

    .line 140
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 163
    :catchall_6a
    move-exception v0

    move v0, v4

    goto :goto_6f

    .line 167
    :cond_6d
    goto :goto_70

    .line 163
    :catchall_6e
    move-exception v1

    :goto_6f
    move v4, v0

    .line 168
    :goto_70
    return v4
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    .line 37
    sget-boolean v0, Lcom/tendcloud/tenddata/game/bi;->a:Z

    if-nez v0, :cond_49

    .line 39
    const/4 v0, 0x1

    :try_start_5
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bi;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bi;->c(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_42

    const-string p0, "su"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bi;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_42

    const-string p0, "busybox"

    .line 40
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bi;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_42

    invoke-static {}, Lcom/tendcloud/tenddata/game/bi;->a()Z

    move-result p0

    if-nez p0, :cond_42

    invoke-static {}, Lcom/tendcloud/tenddata/game/bi;->b()Z

    move-result p0

    if-nez p0, :cond_42

    .line 41
    invoke-static {}, Lcom/tendcloud/tenddata/game/bi;->e()Z

    move-result p0

    if-nez p0, :cond_42

    invoke-static {}, Lcom/tendcloud/tenddata/game/bi;->d()Z

    move-result p0

    if-nez p0, :cond_42

    invoke-static {}, Lcom/tendcloud/tenddata/game/bi;->c()Z

    move-result p0

    if-eqz p0, :cond_40

    goto :goto_42

    :cond_40
    const/4 p0, 0x0

    goto :goto_43

    :cond_42
    :goto_42
    const/4 p0, 0x1

    :goto_43
    sput-boolean p0, Lcom/tendcloud/tenddata/game/bi;->b:Z
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_46

    .line 46
    goto :goto_47

    .line 42
    :catchall_46
    move-exception p0

    .line 47
    :goto_47
    sput-boolean v0, Lcom/tendcloud/tenddata/game/bi;->a:Z

    .line 49
    :cond_49
    sget-boolean p0, Lcom/tendcloud/tenddata/game/bi;->b:Z

    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 7

    .line 101
    nop

    .line 103
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Lcom/tendcloud/tenddata/game/bi;->e:[Ljava/lang/String;

    array-length v2, v1
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_1f

    const/4 v3, 0x0

    :goto_6
    if-ge v0, v2, :cond_1e

    :try_start_8
    aget-object v4, v1, v0
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_1b

    .line 105
    :try_start_a
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_17

    .line 107
    if-eqz v4, :cond_16

    .line 108
    const/4 v3, 0x1

    .line 114
    :cond_16
    goto :goto_18

    .line 110
    :catchall_17
    move-exception v4

    .line 103
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 116
    :catchall_1b
    move-exception p0

    move v0, v3

    goto :goto_20

    .line 120
    :cond_1e
    goto :goto_21

    .line 116
    :catchall_1f
    move-exception p0

    :goto_20
    move v3, v0

    .line 121
    :goto_21
    return v3
.end method

.method private static a(Ljava/util/List;Landroid/content/Context;)Z
    .registers 5

    .line 70
    nop

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 72
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    :try_start_17
    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_1a} :catch_1c

    .line 76
    const/4 v1, 0x1

    .line 79
    goto :goto_1d

    .line 77
    :catch_1c
    move-exception v2

    .line 80
    :goto_1d
    goto :goto_b

    .line 82
    :cond_1e
    return v1
.end method

.method private static b()Z
    .registers 16

    .line 177
    nop

    .line 179
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Lcom/tendcloud/tenddata/game/bi;->g()[Ljava/lang/String;

    move-result-object v1

    .line 180
    if-nez v1, :cond_9

    .line 182
    return v0

    .line 184
    :cond_9
    array-length v2, v1
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_59

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v3, v2, :cond_58

    :try_start_e
    aget-object v5, v1, v3
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_55

    .line 187
    :try_start_10
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 188
    array-length v6, v5

    const/4 v7, 0x4

    if-ge v6, v7, :cond_1b

    .line 190
    goto :goto_52

    .line 192
    :cond_1b
    const/4 v6, 0x1

    aget-object v7, v5, v6

    .line 193
    const/4 v8, 0x3

    aget-object v5, v5, v8

    .line 194
    sget-object v8, Lcom/tendcloud/tenddata/game/bi;->f:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_25
    if-ge v10, v9, :cond_50

    aget-object v11, v8, v10
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_51

    .line 196
    :try_start_29
    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4b

    .line 198
    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_37
    if-ge v13, v12, :cond_4b

    aget-object v14, v11, v13
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_4c

    .line 200
    :try_start_3b
    const-string v15, "rw"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_47

    if-eqz v14, :cond_46

    .line 201
    nop

    .line 202
    const/4 v4, 0x1

    goto :goto_4b

    .line 208
    :cond_46
    goto :goto_48

    .line 204
    :catchall_47
    move-exception v14

    .line 198
    :goto_48
    add-int/lit8 v13, v13, 0x1

    goto :goto_37

    .line 215
    :cond_4b
    :goto_4b
    goto :goto_4d

    .line 211
    :catchall_4c
    move-exception v11

    .line 194
    :goto_4d
    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    .line 221
    :cond_50
    goto :goto_52

    .line 217
    :catchall_51
    move-exception v5

    .line 184
    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 223
    :catchall_55
    move-exception v0

    move v0, v4

    goto :goto_5a

    .line 227
    :cond_58
    goto :goto_5b

    .line 223
    :catchall_59
    move-exception v1

    :goto_5a
    move v4, v0

    .line 228
    :goto_5b
    return v4
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 3

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/tendcloud/tenddata/game/bi;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/game/bi;->a(Ljava/util/List;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static c()Z
    .registers 1

    .line 237
    const-string v0, "magisk"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bi;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 3

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/tendcloud/tenddata/game/bi;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/game/bi;->a(Ljava/util/List;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static d()Z
    .registers 6

    .line 246
    nop

    .line 248
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "which"

    aput-object v4, v3, v0

    const-string v4, "su"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 249
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 250
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_32

    if-eqz v2, :cond_2c

    const/4 v0, 0x1

    .line 255
    :cond_2c
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 250
    :cond_31
    return v0

    .line 251
    :catchall_32
    move-exception v2

    .line 252
    :try_start_33
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3d

    .line 253
    nop

    .line 255
    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 253
    :cond_3c
    return v0

    .line 255
    :catchall_3d
    move-exception v0

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_43
    throw v0
.end method

.method private static e()Z
    .registers 2

    .line 266
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 267
    if-eqz v0, :cond_e

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static f()[Ljava/lang/String;
    .registers 3

    .line 272
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "getprop"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 273
    if-nez v1, :cond_12

    return-object v0

    .line 274
    :cond_12
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v2, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .line 275
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    return-object v0

    .line 276
    :catchall_28
    move-exception v1

    .line 280
    return-object v0
.end method

.method private static g()[Ljava/lang/String;
    .registers 3

    .line 286
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "mount"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 287
    if-nez v1, :cond_12

    .line 288
    return-object v0

    .line 290
    :cond_12
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v2, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .line 291
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    return-object v0

    .line 292
    :catchall_28
    move-exception v1

    .line 296
    return-object v0
.end method
