.class public Lcom/kwad/sdk/e/o;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "^[0-9a-fA-F]{16}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/e/o;->a:Ljava/util/regex/Pattern;

    const-string v0, ""

    sput-object v0, Lcom/kwad/sdk/e/o;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/kwad/sdk/e/o;->c:Ljava/lang/String;

    const/16 v0, 0x5c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a5f5faddde9e9f02"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "8e17f7422b35fbea"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "b88c3c236923d9d9"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cb36bf76cca443d0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5d4e49ed381836c5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cffa38e9136f93e9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "62bd2daa59ea0173"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "b7aad49a2d5bc5d9"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "f2138912c5e5dd5c"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "330a1e81a2bf9f31"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "59c0f432ccbef844"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "521376155e535f39"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "aa5ec6ce14abd680"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "5522a09bb500d82f"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "6dfe4a96800edfb4"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ecc9a2dded8cdf72"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "399f868043955b11"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "34dc327c00dbff94"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "d1b4e3862c309f8b"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "68bdbf71f863ccac"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "01558dd995085a35"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "351174200a06da52"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "fa0988506c76ff4b"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "8eb8ef823312c61a"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "a72e81be65c4638b"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "416d15a015c8f324"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "474086ea2d737519"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "befdddf908c8d749"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "780ee58a6f57aab6"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "cfe86fa07cae3601"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "704ff4d1534f0ff4"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "9298b9e9bbd7cdea"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "7b634c42f236c6e8"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "11eacf22b9ceab7d"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "2941a4f39eec5864"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "87d134dc5ba45550"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "fdd2313bb1750eb9"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "6560ef232d8424bb"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "5d876286e1064482"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "f66fefb916f4962d"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "7baf82d0ac49f596"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "57748921d8d88ed4"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "120cd57f1a50b8f5"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "e164f9610ddd9fc8"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "6256f0e8da6389de"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "bcb22df712476416"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "714fa9aff63f7adb"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "cb8252e4da7cf610"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "e18f649aa80e140c"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "966790a9db5ea8d8"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "e1769e681af901dd"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "d23f2574a60964a4"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "d717e6298d3c9cb2"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "f5ea5e8ba730864e"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "a8a0a223d1a42232"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "6675a4f231f5c8db"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "3edb7c2103e5c75a"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "8ce6a9a216b326c4"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "af606153eb3be0a7"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "7ae255c3d760c920"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "e50e94c40048c5fd"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "55009bca30f9dc4c"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "c37566487909214a"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "891b74f7e534d14a"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "726e190aae663525"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "df473127d30fb669"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "bfbcc646d92dfd48"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "a4a1954c44751936"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "da4a44a3d7c4d8be"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "5ff5bca4a775dd30"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "14917461e1917c53"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "14ce20d0a80955fa"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "a56a63de4d3f3d39"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "f780246adc7bd556"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "3495a541aea0da72"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "f7f205ce47fed2a5"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "f52db3f434279c3a"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "dca17088c97dee5e"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "dd53a8b3a2a4ccc0"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "52e07629290d45e4"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "cda522b0f8f50d9a"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "b85a1c8bcd51d82c"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "e344a00cd3f5e93a"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "fa59d8a66d7bdd88"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "68fb1f1393a216e8"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "4c30ab1fb10af181"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "b1376e0578099143"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "88752f72d8d305fd"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "fddf20078d27bf3c"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "dab2120bffa2be8c"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "c7c8dde481793471"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "e4b1bdbcabfc284d"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/e/o;->d:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/io/File;)J
    .registers 5

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1b

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    :goto_1a
    return-wide v0

    :cond_1b
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_25

    move-result-wide v0

    mul-long/2addr v0, v2

    goto :goto_1a

    :catch_25
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_1a
.end method

.method private static a()Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    const/16 v2, 0x30

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/e/o;->a(Ljava/lang/String;IC)Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_1a

    move-result-object v0

    :goto_19
    return-object v0

    :catchall_1a
    move-exception v0

    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const-string v0, ""

    goto :goto_a
.end method

.method private static a(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v1, p1, :cond_14

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/kwad/sdk/e/o;->d:Ljava/util/List;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/io/File;)J
    .registers 7

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    :goto_4
    return-wide v0

    :cond_5
    :try_start_5
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v3, v4, :cond_20

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    goto :goto_4

    :cond_20
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_2a

    move-result-wide v0

    mul-long/2addr v0, v4

    goto :goto_4

    :catch_2a
    move-exception v2

    goto :goto_4
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    :cond_18
    const-string v0, ""

    goto :goto_16
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/kwad/sdk/e/o;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static c()I
    .registers 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_19

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    move-result v0

    :goto_17
    return v0

    :catch_18
    move-exception v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static c(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const-string v1, "ksadsdk_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "android_id"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const-string v1, ""

    if-nez p0, :cond_5

    :goto_4
    return-object v1

    :cond_5
    :try_start_5
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_26

    :cond_1c
    :goto_1c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, ""

    :goto_24
    move-object v1, v0

    goto :goto_4

    :catch_26
    move-exception v0

    goto :goto_1c

    :cond_28
    move-object v0, v1

    goto :goto_24
.end method

.method public static e()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/e/o;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/e/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {v0}, Lcom/kwad/sdk/e/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANDROID_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    invoke-static {}, Lcom/kwad/sdk/e/o;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/e/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANDROID_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_42
    invoke-static {}, Lcom/kwad/sdk/e/o;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-static {v0}, Lcom/kwad/sdk/e/o;->c(Ljava/lang/String;)V

    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANDROID_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const-string v1, ""

    if-nez p0, :cond_5

    :goto_4
    return-object v1

    :cond_5
    :try_start_5
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_26

    :cond_1c
    :goto_1c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, ""

    :goto_24
    move-object v1, v0

    goto :goto_4

    :catch_26
    move-exception v0

    goto :goto_1c

    :cond_28
    move-object v0, v1

    goto :goto_24
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    sget-object v0, Lcom/kwad/sdk/e/o;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p0, :cond_d

    :cond_a
    sget-object v0, Lcom/kwad/sdk/e/o;->c:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/e/o;->c:Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_23} :catch_26

    :cond_23
    :goto_23
    sget-object v0, Lcom/kwad/sdk/e/o;->c:Ljava/lang/String;

    goto :goto_c

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method public static g()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    if-nez p0, :cond_6

    const-string v0, ""

    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/kwad/sdk/e/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a3

    :try_start_e
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/e/o;->b:Ljava/lang/String;

    :cond_22
    sget-object v0, Lcom/kwad/sdk/e/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/kwad/sdk/e/o;->b:Ljava/lang/String;

    const-string v2, "02:00:00:00:00:00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_34
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    if-eqz v2, :cond_61

    array-length v0, v2

    if-nez v0, :cond_a7

    :cond_61
    :goto_61
    sget-object v0, Lcom/kwad/sdk/e/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    sget-object v0, Lcom/kwad/sdk/e/o;->b:Ljava/lang/String;

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    :cond_73
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "cat /sys/class/net/wlan0/address "

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/LineNumberReader;

    invoke-direct {v0, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/e/o;->b:Ljava/lang/String;

    :cond_91
    sget-object v0, Lcom/kwad/sdk/e/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/kwad/sdk/e/o;->b:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/e/o;->b:Ljava/lang/String;
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_a3} :catch_de

    :cond_a3
    :goto_a3
    sget-object v0, Lcom/kwad/sdk/e/o;->b:Ljava/lang/String;

    goto/16 :goto_5

    :cond_a7
    :try_start_a7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v2

    move v0, v1

    :goto_ae
    if-ge v0, v4, :cond_c8

    aget-byte v1, v2, v0
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b2} :catch_de

    const-string v5, "%02X:"

    const/4 v6, 0x1

    :try_start_b5
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_ae

    :cond_c8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_d7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_d7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/e/o;->b:Ljava/lang/String;
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_dd} :catch_de

    goto :goto_61

    :catch_de
    move-exception v0

    goto :goto_a3
.end method

.method public static h(Landroid/content/Context;)J
    .registers 5

    const-wide/16 v2, 0x0

    if-nez p0, :cond_6

    move-wide v0, v2

    :goto_5
    return-wide v0

    :cond_6
    :try_start_6
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_19

    goto :goto_5

    :catch_19
    move-exception v0

    move-wide v0, v2

    goto :goto_5
.end method

.method public static h()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_14

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2f

    move-result-object v0

    :goto_2e
    return-object v0

    :catchall_2f
    move-exception v0

    :cond_30
    const-string v0, ""

    goto :goto_2e
.end method

.method public static i(Landroid/content/Context;)J
    .registers 6

    const-wide/16 v2, 0x0

    if-nez p0, :cond_6

    move-wide v0, v2

    :cond_5
    :goto_5
    return-wide v0

    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    invoke-static {}, Lcom/kwad/sdk/e/o;->l()J
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_25

    move-result-wide v0

    goto :goto_5

    :catch_25
    move-exception v0

    move-wide v0, v2

    goto :goto_5
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/content/Context;)I
    .registers 3

    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return v0

    :catch_17
    move-exception v0

    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static j()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static k()I
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/e/o;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x3

    goto :goto_b
.end method

.method public static k(Landroid/content/Context;)I
    .registers 3

    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return v0

    :catch_17
    move-exception v0

    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static l()J
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/io/FileReader;

    const-string v2, "/proc/meminfo"

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_47
    .catchall {:try_start_1 .. :try_end_f} :catchall_3f

    :cond_f
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    const-string v1, "MemTotal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2d} :catch_35
    .catchall {:try_start_f .. :try_end_2d} :catchall_50

    move-result-wide v0

    const/16 v3, 0xa

    shl-long/2addr v0, v3

    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_4a

    :goto_34
    return-wide v0

    :catch_35
    move-exception v0

    move-object v0, v2

    :goto_37
    if-eqz v0, :cond_3c

    :goto_39
    :try_start_39
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_4c

    :cond_3c
    :goto_3c
    const-wide/16 v0, 0x0

    goto :goto_34

    :catchall_3f
    move-exception v0

    move-object v2, v1

    :goto_41
    if-eqz v2, :cond_46

    :try_start_43
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_4e

    :cond_46
    :goto_46
    throw v0

    :catch_47
    move-exception v0

    move-object v0, v1

    goto :goto_37

    :catch_4a
    move-exception v2

    goto :goto_34

    :catch_4c
    move-exception v0

    goto :goto_3c

    :catch_4e
    move-exception v1

    goto :goto_46

    :catchall_50
    move-exception v0

    goto :goto_41

    :cond_52
    move-object v0, v2

    goto :goto_39
.end method

.method private static l(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-lt v1, v2, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method public static m()J
    .registers 2

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/e/o;->a(Ljava/io/File;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v0

    :goto_8
    return-wide v0

    :catch_9
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public static n()J
    .registers 2

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/e/o;->b(Ljava/io/File;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v0

    :goto_8
    return-wide v0

    :catch_9
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method private static o()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    const-string v2, "ksadsdk_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "android_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private static p()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_f

    move-result-object v0

    :goto_e
    return-object v0

    :catchall_f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_e
.end method
