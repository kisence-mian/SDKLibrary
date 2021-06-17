.class public Lcom/tendcloud/tenddata/game/aw;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/aw$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

.field public static final b:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

.field public static final c:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

.field private static final d:I = 0x36ee80

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-string v0, "([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/aw;->e:Ljava/util/regex/Pattern;

    .line 54
    const-string v0, "\\s*([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/aw;->f:Ljava/util/regex/Pattern;

    .line 472
    new-instance v0, Lcom/tendcloud/tenddata/game/ax;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ax;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/aw;->g:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 6

    .line 424
    nop

    .line 425
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_9

    .line 426
    return v1

    .line 428
    :cond_9
    nop

    .line 429
    nop

    .line 431
    const/4 v0, 0x0

    :try_start_c
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_45

    .line 432
    :try_start_11
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_41

    .line 433
    :try_start_16
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/high16 v4, 0x6400000

    if-gt v3, v4, :cond_37

    .line 437
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_3f

    .line 441
    nop

    .line 443
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    .line 446
    goto :goto_30

    .line 444
    :catchall_2f
    move-exception v0

    .line 448
    :goto_30
    nop

    .line 450
    :try_start_31
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    .line 453
    :goto_34
    goto :goto_54

    .line 451
    :catchall_35
    move-exception p0

    goto :goto_34

    .line 435
    :cond_37
    :try_start_37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Input stream more than 100 MB size limit"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_3f

    .line 438
    :catchall_3f
    move-exception v0

    goto :goto_43

    :catchall_41
    move-exception p0

    move-object p0, v0

    :goto_43
    move-object v0, v2

    goto :goto_47

    :catchall_45
    move-exception p0

    move-object p0, v0

    .line 441
    :goto_47
    if-eqz v0, :cond_4e

    .line 443
    :try_start_49
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    .line 446
    goto :goto_4e

    .line 444
    :catchall_4d
    move-exception v0

    .line 448
    :cond_4e
    :goto_4e
    if-eqz p0, :cond_54

    .line 450
    :try_start_50
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_35

    goto :goto_34

    .line 456
    :cond_54
    :goto_54
    return v1
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 260
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 261
    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "alps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "android"

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "sprd"

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "spreadtrum"

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "rockchip"

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "wondermedia"

    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "mtk"

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "mt65"

    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "nvidia"

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "brcm"

    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "marvell"

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_72

    if-eqz p1, :cond_70

    goto :goto_71

    .line 278
    :cond_70
    return-object p0

    .line 276
    :cond_71
    :goto_71
    return-object v0

    .line 280
    :catchall_72
    move-exception p0

    .line 283
    return-object v0
.end method

.method private static a(Landroid/content/Context;I)Ljava/util/List;
    .registers 8

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 205
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_9

    return-object p0

    .line 206
    :catchall_9
    move-exception v0

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    const/4 v1, 0x0

    .line 217
    :try_start_10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "pm list packages"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 218
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_4d

    .line 220
    :goto_28
    :try_start_28
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 221
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 223
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    goto :goto_28

    .line 225
    :cond_42
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_45
    .catchall {:try_start_28 .. :try_end_45} :catchall_4a

    .line 230
    nop

    .line 232
    :try_start_46
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_57

    goto :goto_56

    .line 226
    :catchall_4a
    move-exception p0

    move-object v1, v3

    goto :goto_4e

    :catchall_4d
    move-exception p0

    .line 228
    :goto_4e
    :try_start_4e
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_5a

    .line 230
    if-eqz v1, :cond_59

    .line 232
    :try_start_53
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    .line 235
    :goto_56
    goto :goto_59

    .line 233
    :catchall_57
    move-exception p0

    goto :goto_56

    .line 237
    :cond_59
    :goto_59
    return-object v0

    .line 230
    :catchall_5a
    move-exception p0

    if-eqz v1, :cond_62

    .line 232
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    .line 235
    goto :goto_62

    .line 233
    :catchall_61
    move-exception p1

    .line 235
    :cond_62
    :goto_62
    goto :goto_64

    :goto_63
    throw p0

    :goto_64
    goto :goto_63
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 4

    .line 116
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    const-string v1, "nfcStatus"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aw;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v1, "appsRegistedHCE"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aw;->q(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v1, "ssMode"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aw;->r(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    .line 120
    return-object v0

    .line 121
    :catchall_21
    move-exception p0

    .line 125
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 126
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 8

    .line 304
    const-string v0, "*"

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 305
    if-eqz p0, :cond_43

    .line 306
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 307
    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 308
    const-string v3, "pixel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 309
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v0, "densityDpi"

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_43
    .catchall {:try_start_2 .. :try_end_43} :catchall_44

    .line 315
    :cond_43
    goto :goto_45

    .line 313
    :catchall_44
    move-exception p0

    .line 316
    :goto_45
    return-object p1
.end method

.method public static b(Landroid/content/Context;)I
    .registers 3

    .line 131
    nop

    .line 132
    const/4 v0, 0x0

    if-nez p0, :cond_5

    .line 133
    return v0

    .line 136
    :cond_5
    const/16 v1, 0xa

    :try_start_7
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 137
    const-string v1, "nfc"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcManager;

    .line 138
    invoke-virtual {v1}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_3d

    .line 140
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_24

    .line 141
    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_3d

    .line 143
    :cond_24
    const/16 v1, 0x13

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.nfc.hce"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_3e

    if-eqz p0, :cond_3b

    .line 145
    const/4 p0, 0x3

    const/4 v0, 0x3

    goto :goto_3d

    .line 147
    :cond_3b
    const/4 p0, 0x2

    const/4 v0, 0x2

    .line 155
    :cond_3d
    :goto_3d
    goto :goto_42

    .line 152
    :catchall_3e
    move-exception p0

    .line 154
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 156
    :goto_42
    return v0
.end method

.method private static b(Ljava/lang/String;)I
    .registers 4

    .line 599
    const/4 v0, 0x0

    :try_start_1
    const-string v1, ""

    .line 600
    sget-object v2, Lcom/tendcloud/tenddata/game/aw;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 601
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 602
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 605
    :cond_17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    return p0

    .line 606
    :catch_1c
    move-exception p0

    .line 608
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 609
    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 62
    :try_start_0
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return-object v0

    .line 63
    :catchall_3
    move-exception v0

    .line 66
    const-string v0, ""

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3

    .line 321
    :try_start_0
    const-string v0, "brightness"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aw;->p(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 324
    goto :goto_b

    .line 322
    :catchall_a
    move-exception p0

    .line 325
    :goto_b
    return-object p1
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 70
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 330
    const-string v0, "*"

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 331
    if-eqz p0, :cond_38

    .line 332
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 333
    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 335
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 336
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_39

    .line 334
    return-object p0

    .line 341
    :cond_38
    goto :goto_3a

    .line 339
    :catchall_39
    move-exception p0

    .line 342
    :goto_3a
    const-string p0, ""

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 630
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 631
    nop

    .line 632
    nop

    .line 634
    :try_start_7
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_2f

    .line 636
    const/16 p0, 0x400

    :try_start_e
    new-array v2, p0, [C

    .line 637
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 640
    :goto_15
    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, p0}, Ljava/io/BufferedReader;->read([CII)I

    move-result v6

    if-eq v4, v6, :cond_26

    .line 641
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v5, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 643
    :cond_26
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 644
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2c} :catch_2d
    .catchall {:try_start_e .. :try_end_2c} :catchall_2f

    .line 647
    goto :goto_2e

    .line 645
    :catch_2d
    move-exception p0

    .line 650
    :goto_2e
    goto :goto_30

    .line 648
    :catchall_2f
    move-exception p0

    .line 651
    :goto_30
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .line 74
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 4

    .line 682
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 683
    const-string v1, "mobile"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aw;->l(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 684
    const-string v1, "wifi"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aw;->g(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 685
    const-string v1, "gps"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aw;->f(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 686
    const-string v1, "telephone"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aw;->k(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 687
    const-string v1, "nfc"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aw;->i(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 688
    const-string v1, "bluetooth"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aw;->h(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 689
    const-string v1, "otg"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aw;->e(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 690
    const-string v1, "insertEarphones"

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aw;->j(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_4e

    .line 691
    return-object v0

    .line 692
    :catchall_4e
    move-exception p0

    .line 696
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 697
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    .line 78
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 3

    .line 703
    nop

    .line 704
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 705
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_b

    .line 706
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_c

    .line 708
    :cond_b
    return v0

    .line 712
    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 713
    if-eqz p0, :cond_1c

    const-string v1, "android.hardware.usb.host"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1d

    if-eqz p0, :cond_1c

    .line 714
    const/4 p0, 0x1

    const/4 v0, 0x1

    .line 718
    :cond_1c
    goto :goto_1e

    .line 716
    :catchall_1d
    move-exception p0

    .line 719
    :goto_1e
    return v0
.end method

.method public static f()I
    .registers 2

    .line 82
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 3

    .line 723
    nop

    .line 724
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 725
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_b

    .line 726
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_c

    .line 728
    :cond_b
    return v0

    .line 732
    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 733
    if-eqz p0, :cond_1c

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1d

    if-eqz p0, :cond_1c

    .line 734
    const/4 p0, 0x1

    const/4 v0, 0x1

    .line 738
    :cond_1c
    goto :goto_1e

    .line 736
    :catchall_1d
    move-exception p0

    .line 739
    :goto_1e
    return v0
.end method

.method public static g()Ljava/lang/String;
    .registers 4

    .line 87
    const-string v0, ""

    :try_start_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 88
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tendcloud/tenddata/game/aw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 90
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tendcloud/tenddata/game/aw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    if-nez v2, :cond_27

    move-object v2, v0

    :cond_27
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_39

    .line 92
    return-object v0

    .line 94
    :catchall_39
    move-exception v1

    .line 96
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Z
    .registers 3

    .line 744
    nop

    .line 745
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 746
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_b

    .line 747
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_c

    .line 749
    :cond_b
    return v0

    .line 753
    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 754
    if-eqz p0, :cond_1c

    const-string v1, "android.hardware.wifi"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1d

    if-eqz p0, :cond_1c

    .line 755
    const/4 p0, 0x1

    const/4 v0, 0x1

    .line 759
    :cond_1c
    goto :goto_1e

    .line 757
    :catchall_1d
    move-exception p0

    .line 760
    :goto_1e
    return v0
.end method

.method public static h()Ljava/lang/String;
    .registers 2

    .line 101
    const-string v0, "unknown"

    .line 103
    const/16 v1, 0xe

    :try_start_4
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 104
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    .line 110
    :cond_e
    goto :goto_10

    .line 106
    :catchall_f
    move-exception v1

    .line 111
    :goto_10
    return-object v0
.end method

.method public static h(Landroid/content/Context;)Z
    .registers 3

    .line 765
    nop

    .line 766
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 767
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_b

    .line 768
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_c

    .line 770
    :cond_b
    return v0

    .line 774
    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 775
    if-eqz p0, :cond_1c

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1d

    if-eqz p0, :cond_1c

    .line 776
    const/4 p0, 0x1

    const/4 v0, 0x1

    .line 780
    :cond_1c
    goto :goto_1e

    .line 778
    :catchall_1d
    move-exception p0

    .line 781
    :goto_1e
    return v0
.end method

.method public static i()I
    .registers 1

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static i(Landroid/content/Context;)Z
    .registers 3

    .line 786
    nop

    .line 787
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 788
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_b

    .line 789
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_c

    .line 791
    :cond_b
    return v0

    .line 795
    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 796
    if-eqz p0, :cond_1c

    const-string v1, "android.hardware.nfc"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1d

    if-eqz p0, :cond_1c

    .line 797
    const/4 p0, 0x1

    const/4 v0, 0x1

    .line 801
    :cond_1c
    goto :goto_1e

    .line 799
    :catchall_1d
    move-exception p0

    .line 802
    :goto_1e
    return v0
.end method

.method public static j()Ljava/lang/String;
    .registers 1

    .line 291
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Z
    .registers 3

    .line 807
    nop

    .line 808
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 809
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_b

    .line 810
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_c

    .line 812
    :cond_b
    return v0

    .line 816
    :cond_c
    :goto_c
    :try_start_c
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 817
    if-eqz p0, :cond_1b

    .line 818
    invoke-virtual {p0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1c

    move v0, p0

    .line 822
    :cond_1b
    goto :goto_1d

    .line 820
    :catchall_1c
    move-exception p0

    .line 823
    :goto_1d
    return v0
.end method

.method public static k()Ljava/lang/String;
    .registers 1

    .line 295
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Landroid/content/Context;)Z
    .registers 3

    .line 829
    nop

    .line 830
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 831
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_b

    .line 832
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_c

    .line 834
    :cond_b
    return v0

    .line 838
    :cond_c
    :goto_c
    :try_start_c
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 839
    if-eqz p0, :cond_1d

    .line 840
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1e

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    .line 844
    :cond_1d
    goto :goto_1f

    .line 842
    :catchall_1e
    move-exception p0

    .line 845
    :goto_1f
    return v0
.end method

.method public static l()Ljava/lang/String;
    .registers 1

    .line 299
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Landroid/content/Context;)Z
    .registers 3

    .line 850
    nop

    .line 851
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 852
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_b

    .line 853
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_c

    .line 855
    :cond_b
    return v0

    .line 859
    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 860
    const-string v1, "android.hardware.telephony"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    .line 863
    goto :goto_18

    .line 861
    :catchall_17
    move-exception p0

    .line 864
    :goto_18
    return v0
.end method

.method public static m(Landroid/content/Context;)I
    .registers 2

    .line 869
    const/4 v0, -0x1

    if-nez p0, :cond_b

    .line 870
    :try_start_3
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_a

    .line 871
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_b

    .line 873
    :cond_a
    return v0

    .line 876
    :cond_b
    :goto_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 877
    if-eqz p0, :cond_18

    .line 878
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    return p0

    .line 882
    :cond_18
    goto :goto_1a

    .line 880
    :catchall_19
    move-exception p0

    .line 883
    :goto_1a
    return v0
.end method

.method public static m()[Ljava/lang/String;
    .registers 12

    .line 346
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    .line 347
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_e

    .line 348
    const-string v4, ""

    aput-object v4, v1, v3

    .line 347
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 349
    :cond_e
    nop

    .line 350
    nop

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 354
    nop

    .line 356
    :try_start_16
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 357
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x400

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_a1

    .line 359
    :goto_24
    const/4 v5, 0x1

    :try_start_25
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3f

    .line 360
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/high16 v7, 0x6400000

    if-gt v6, v7, :cond_37

    goto :goto_24

    .line 362
    :cond_37
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "List size more than 104857600 limit"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_4b

    .line 365
    :cond_3f
    nop

    .line 370
    :try_start_40
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 371
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_46} :catch_47
    .catchall {:try_start_40 .. :try_end_46} :catchall_a1

    .line 377
    goto :goto_49

    .line 372
    :catch_47
    move-exception v3

    .line 378
    nop

    .line 380
    :goto_49
    const/4 v3, 0x1

    goto :goto_56

    .line 366
    :catchall_4b
    move-exception v6

    .line 370
    :try_start_4c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 371
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_52} :catch_53
    .catchall {:try_start_4c .. :try_end_52} :catchall_a1

    .line 377
    goto :goto_55

    .line 372
    :catch_53
    move-exception v3

    .line 378
    nop

    .line 380
    :goto_55
    const/4 v3, 0x0

    :goto_56
    const/4 v4, 0x3

    :try_start_57
    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "Processor\\s*:\\s*(.*)"

    aput-object v7, v6, v2

    const-string v7, "CPU\\s*variant\\s*:\\s*0x(.*)"

    aput-object v7, v6, v5

    const/4 v7, 0x2

    const-string v8, "Hardware\\s*:\\s*(.*)"

    aput-object v8, v6, v7

    .line 382
    if-eqz v3, :cond_98

    .line 383
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 384
    const/4 v7, 0x0

    :goto_6d
    if-ge v7, v4, :cond_98

    .line 385
    aget-object v8, v6, v7

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 386
    const/4 v9, 0x0

    :goto_76
    if-ge v9, v3, :cond_95

    .line 387
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 388
    invoke-virtual {v8, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 389
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_92

    .line 390
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v7

    .line 386
    :cond_92
    add-int/lit8 v9, v9, 0x1

    goto :goto_76

    .line 384
    :cond_95
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d

    .line 396
    :cond_98
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4
    :try_end_a0
    .catchall {:try_start_57 .. :try_end_a0} :catchall_a1

    .line 400
    goto :goto_a5

    .line 397
    :catchall_a1
    move-exception v0

    .line 399
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 401
    :goto_a5
    return-object v1
.end method

.method public static n(Landroid/content/Context;)I
    .registers 2

    .line 887
    const/4 v0, -0x1

    if-nez p0, :cond_b

    .line 888
    :try_start_3
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_a

    .line 889
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_b

    .line 891
    :cond_a
    return v0

    .line 894
    :cond_b
    :goto_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 895
    if-eqz p0, :cond_18

    .line 896
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    return p0

    .line 900
    :cond_18
    goto :goto_1a

    .line 898
    :catchall_19
    move-exception p0

    .line 901
    :goto_1a
    return v0
.end method

.method public static n()Lorg/json/JSONObject;
    .registers 4

    .line 406
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 407
    const-string v1, "name"

    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->m()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string v1, "coreNum"

    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->o()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 409
    const-string v1, "maxFreq"

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/aw;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 410
    const-string v1, "minFreq"

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/aw;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 411
    const-string v1, "curFreq"

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/aw;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    .line 412
    return-object v0

    .line 413
    :catchall_3c
    move-exception v0

    .line 417
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 418
    const/4 v0, 0x0

    return-object v0
.end method

.method public static o()I
    .registers 3

    .line 460
    nop

    .line 462
    const/4 v0, 0x1

    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tendcloud/tenddata/game/aw;->g:Ljava/io/FileFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 463
    if-eqz v1, :cond_12

    .line 464
    array-length v0, v1
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_13

    .line 468
    :cond_12
    goto :goto_14

    .line 466
    :catchall_13
    move-exception v1

    .line 469
    :goto_14
    return v0
.end method

.method public static o(Landroid/content/Context;)I
    .registers 2

    .line 905
    const/4 v0, -0x1

    if-nez p0, :cond_b

    .line 906
    :try_start_3
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_a

    .line 907
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_b

    .line 909
    :cond_a
    return v0

    .line 912
    :cond_b
    :goto_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 913
    if-eqz p0, :cond_18

    .line 914
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    return p0

    .line 918
    :cond_18
    goto :goto_1a

    .line 916
    :catchall_19
    move-exception p0

    .line 919
    :goto_1a
    return v0
.end method

.method public static p(Landroid/content/Context;)I
    .registers 3

    .line 922
    nop

    .line 923
    const/4 v0, -0x1

    if-nez p0, :cond_c

    .line 924
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    if-eqz p0, :cond_b

    .line 925
    sget-object p0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    goto :goto_c

    .line 927
    :cond_b
    return v0

    .line 931
    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "screen_brightness"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    .line 934
    goto :goto_18

    .line 932
    :catchall_17
    move-exception p0

    .line 935
    :goto_18
    return v0
.end method

.method public static p()[Ljava/lang/String;
    .registers 1

    .line 500
    const/4 v0, 0x0

    return-object v0
.end method

.method private static q(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 12

    .line 160
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 161
    return-object v1

    .line 164
    :cond_a
    :try_start_a
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 165
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/game/aw;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_5e

    .line 167
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 168
    if-nez v3, :cond_29

    .line 169
    goto :goto_1a

    .line 171
    :cond_29
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 172
    if-eqz v4, :cond_5d

    .line 173
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2f
    if-ge v6, v5, :cond_5d

    aget-object v7, v4, v6
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_5f

    .line 175
    :try_start_33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x80

    invoke-virtual {v8, v9, v7}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 176
    if-eqz v7, :cond_58

    const-string v8, "android.nfc.cardemulation.host_apdu_service"

    .line 178
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 179
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_57
    .catchall {:try_start_33 .. :try_end_57} :catchall_59

    .line 180
    goto :goto_5d

    .line 186
    :cond_58
    goto :goto_5a

    .line 182
    :catchall_59
    move-exception v7

    .line 173
    :goto_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 190
    :cond_5d
    :goto_5d
    goto :goto_1a

    .line 192
    :cond_5e
    return-object v0

    .line 194
    :catchall_5f
    move-exception p0

    .line 198
    return-object v1
.end method

.method public static q()[I
    .registers 7

    .line 504
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_40

    .line 505
    nop

    .line 506
    nop

    .line 508
    :try_start_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 509
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 510
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 511
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    .line 513
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    .line 514
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    .line 516
    const/4 v5, 0x0

    div-int/lit16 v6, v2, 0x200

    mul-int v4, v4, v6

    div-int/2addr v4, v0

    aput v4, v1, v5

    .line 517
    const/4 v4, 0x1

    div-int/lit16 v2, v2, 0x200

    mul-int v3, v3, v2

    div-int/2addr v3, v0

    aput v3, v1, v4
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3e

    .line 523
    :cond_3d
    goto :goto_3f

    .line 519
    :catchall_3e
    move-exception v0

    .line 525
    :goto_3f
    return-object v1

    :array_40
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static r(Landroid/content/Context;)I
    .registers 3

    .line 241
    nop

    .line 243
    const/16 v0, 0x13

    const/4 v1, -0x1

    :try_start_4
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 244
    const-string v0, "nfc"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/nfc/NfcManager;

    .line 245
    invoke-virtual {p0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    .line 246
    if-eqz p0, :cond_23

    .line 247
    invoke-static {p0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object p0

    .line 248
    const-string v0, "payment"

    invoke-virtual {p0, v0}, Landroid/nfc/cardemulation/CardEmulation;->getSelectionModeForCategory(Ljava/lang/String;)I

    move-result p0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_24

    move v1, p0

    .line 254
    :cond_23
    goto :goto_28

    .line 251
    :catchall_24
    move-exception p0

    .line 253
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 255
    :goto_28
    return v1
.end method

.method public static r()[I
    .registers 11

    .line 529
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_76

    .line 530
    nop

    .line 531
    nop

    .line 532
    nop

    .line 533
    nop

    .line 534
    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 535
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v2, :cond_16

    .line 536
    aput v4, v3, v5

    .line 535
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 539
    :cond_16
    :try_start_16
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/proc/meminfo"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 540
    new-instance v6, Ljava/io/BufferedReader;

    const/16 v7, 0x400

    invoke-direct {v6, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_70

    .line 542
    const/4 v7, 0x0

    :goto_25
    if-ge v7, v2, :cond_44

    .line 543
    :try_start_27
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 544
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/high16 v10, 0x6400000

    if-gt v9, v10, :cond_3c

    .line 547
    invoke-static {v8}, Lcom/tendcloud/tenddata/game/aw;->b(Ljava/lang/String;)I

    move-result v8

    aput v8, v3, v7

    .line 542
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 545
    :cond_3c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Input stream more than 100 MB size limit"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_44
    aget v2, v3, v4

    aput v2, v1, v4

    .line 550
    const/4 v2, 0x1

    aget v4, v3, v2

    aget v0, v3, v0

    add-int/2addr v4, v0

    const/4 v0, 0x3

    aget v0, v3, v0

    add-int/2addr v4, v0

    aput v4, v1, v2
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_54} :catch_65
    .catchall {:try_start_27 .. :try_end_54} :catchall_5b

    .line 557
    :try_start_54
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 558
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5a} :catch_6d
    .catchall {:try_start_54 .. :try_end_5a} :catchall_70

    goto :goto_6c

    .line 556
    :catchall_5b
    move-exception v0

    .line 557
    :try_start_5c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 558
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_62} :catch_63
    .catchall {:try_start_5c .. :try_end_62} :catchall_70

    .line 564
    goto :goto_64

    .line 559
    :catch_63
    move-exception v2

    .line 564
    :goto_64
    :try_start_64
    throw v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_70

    .line 551
    :catch_65
    move-exception v0

    .line 557
    :try_start_66
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 558
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6c} :catch_6d
    .catchall {:try_start_66 .. :try_end_6c} :catchall_70

    .line 564
    :goto_6c
    goto :goto_6f

    .line 559
    :catch_6d
    move-exception v0

    .line 565
    nop

    .line 569
    :goto_6f
    goto :goto_74

    .line 566
    :catchall_70
    move-exception v0

    .line 568
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 570
    :goto_74
    return-object v1

    nop

    :array_76
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static s()[I
    .registers 5

    .line 576
    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [I

    .line 577
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 578
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 579
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    div-int/lit16 v4, v4, 0x200

    mul-int v3, v3, v4

    const/4 v4, 0x2

    div-int/2addr v3, v4

    aput v3, v0, v2

    .line 580
    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    .line 581
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x200

    mul-int v3, v3, v1

    div-int/2addr v3, v4

    aput v3, v0, v2

    .line 583
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 584
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    div-int/lit16 v3, v3, 0x200

    mul-int v2, v2, v3

    div-int/2addr v2, v4

    aput v2, v0, v4

    .line 586
    const/4 v2, 0x3

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    .line 587
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x200

    mul-int v3, v3, v1

    div-int/2addr v3, v4

    aput v3, v0, v2
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_5e

    .line 588
    return-object v0

    .line 589
    :catchall_5e
    move-exception v0

    .line 591
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 592
    const/4 v0, 0x0

    return-object v0
.end method

.method public static t()I
    .registers 3

    .line 615
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "/sys/class/power_supply/battery/full_bat"

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 616
    sget-object v2, Lcom/tendcloud/tenddata/game/aw;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 617
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 618
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_21

    return v0

    .line 620
    :cond_20
    return v0

    .line 623
    :catch_21
    move-exception v1

    .line 625
    return v0
.end method
