.class public Lcom/qq/gdt/action/e/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Y29tLnRlbmNlbnQubW0="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Y29tLnRlbmNlbnQubW9iaWxlcXE="

    aput-object v2, v0, v1

    sput-object v0, Lcom/qq/gdt/action/e/a;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 16

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/qq/gdt/action/e/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/qq/gdt/action/e/a;->c(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {}, Lcom/qq/gdt/action/e/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/qq/gdt/action/e/a;->d(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {}, Lcom/qq/gdt/action/e/a;->d()J

    move-result-wide v6

    invoke-static {}, Lcom/qq/gdt/action/e/a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Lcom/qq/gdt/action/e/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/qq/gdt/action/e/a;->c()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0}, Lcom/qq/gdt/action/e/a;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "%s|%d|%d|%s|%d|%d"

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    const/4 v1, 0x1

    iget-object v14, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v14, v13, v1

    const/4 v1, 0x2

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v2, v13, v1

    const/4 v1, 0x3

    aput-object v3, v13, v1

    const/4 v1, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v13, v1

    const/4 v1, 0x5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v13, v1

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s|%s|%s|%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    const/4 v5, 0x2

    aput-object v10, v4, v5

    const/4 v5, 0x3

    const-string v6, "|"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/qq/gdt/action/e/a;->b(Ljava/lang/String;)[C

    move-result-object v1

    invoke-static {v0}, Lcom/qq/gdt/action/e/a;->b(Ljava/lang/String;)[C

    move-result-object v0

    invoke-static {v1}, Lcom/qq/gdt/action/e/a;->a([C)V

    invoke-static {v1, v0}, Lcom/qq/gdt/action/e/a;->b([C[C)V

    invoke-static {v1, v0}, Lcom/qq/gdt/action/e/a;->a([C[C)Ljava/lang/String;
    :try_end_7f
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_7f} :catch_81
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7f} :catch_a1

    move-result-object v0

    :goto_80
    return-object v0

    :catch_81
    move-exception v0

    const-string v1, "AMS-QADID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createQADID error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "01000000000000000000000000000000"

    goto :goto_80

    :catch_a1
    move-exception v0

    const-string v1, "AMS-QADID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createQADID exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "01000000000000000000000000000000"

    goto :goto_80
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static a([C[C)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1e

    const/16 v2, 0x10

    if-ge v0, v2, :cond_16

    aget-char v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_16
    add-int/lit8 v2, v0, -0x10

    aget-char v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([C)V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1c

    const/16 v1, 0x30

    aput-char v1, p0, v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, p0, v4

    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, p0, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, p0, v4

    goto :goto_1b
.end method

.method private static b([C)J
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_11

    aget-char v3, p0, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/e/a;->d(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static b()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b([C[C)V
    .registers 10

    const/16 v4, 0x1e

    const/16 v7, 0xf

    const/16 v6, 0xe

    const/4 v1, 0x0

    new-array v2, v4, [C

    move v0, v1

    :goto_a
    if-ge v0, v4, :cond_1e

    const/16 v3, 0x10

    if-ge v0, v3, :cond_17

    aget-char v3, p0, v0

    aput-char v3, v2, v0

    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_17
    add-int/lit8 v3, v0, -0x10

    aget-char v3, p1, v3

    aput-char v3, v2, v0

    goto :goto_14

    :cond_1e
    invoke-static {v2}, Lcom/qq/gdt/action/e/a;->b([C)J

    move-result-wide v2

    const-wide/16 v4, 0x100

    rem-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_40

    const/16 v2, 0x30

    aput-char v2, p1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, p1, v7

    :goto_3f
    return-void

    :cond_40
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, p1, v6

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, p1, v7

    goto :goto_3f
.end method

.method private static b(Ljava/lang/String;)[C
    .registers 7

    invoke-static {p0}, Lcom/qq/gdt/action/e/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x10

    new-array v3, v0, [C

    const/16 v1, 0x8

    move v0, v1

    :goto_b
    const/16 v4, 0x18

    if-ge v0, v4, :cond_1a

    sub-int v4, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1a
    return-object v3
.end method

.method private static c(Landroid/content/Context;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_1c

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_3a

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_1c
    :goto_1c
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_3a
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_1c
.end method

.method private static c()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_b} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v1

    goto :goto_c

    :catch_f
    move-exception v1

    goto :goto_c
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v3, :cond_33

    aget-byte v4, v1, v0

    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0x10

    if-ge v5, v6, :cond_27

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3a} :catch_3c

    move-result-object v0

    :goto_3b
    return-object v0

    :catch_3c
    move-exception v0

    const-string v0, ""

    goto :goto_3b
.end method

.method private static d()J
    .registers 4

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1d

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    mul-long/2addr v0, v2

    :goto_1c
    return-wide v0

    :cond_1d
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_1c
.end method

.method private static d(Landroid/content/Context;)J
    .registers 10

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_1f

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-eqz v0, :cond_a7

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    :goto_1d
    move-wide v2, v0

    :cond_1e
    :goto_1e
    return-wide v2

    :cond_1f
    :try_start_1f
    new-instance v4, Ljava/io/FileReader;

    const-string v0, "/proc/meminfo"

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_26} :catch_5e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_6d
    .catchall {:try_start_1f .. :try_end_26} :catchall_7d

    :try_start_26
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v5, 0x1000

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2d} :catch_a0
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_9b
    .catchall {:try_start_26 .. :try_end_2d} :catchall_94

    :cond_2d
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    const-string v5, "MemTotal"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2d

    :cond_3b
    if-eqz v1, :cond_51

    const-string v5, "\\s+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_4d} :catch_a4
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_4d} :catch_9e
    .catchall {:try_start_2d .. :try_end_4d} :catchall_96

    move-result-wide v2

    const-wide/16 v6, 0x400

    mul-long/2addr v2, v6

    :cond_51
    if-eqz v0, :cond_56

    :try_start_53
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_8a

    :cond_56
    :goto_56
    if-eqz v4, :cond_1e

    :try_start_58
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_1e

    :catch_5c
    move-exception v0

    goto :goto_1e

    :catch_5e
    move-exception v0

    move-object v0, v1

    :goto_60
    if-eqz v0, :cond_65

    :try_start_62
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_8c

    :cond_65
    :goto_65
    if-eqz v1, :cond_1e

    :try_start_67
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_1e

    :catch_6b
    move-exception v0

    goto :goto_1e

    :catch_6d
    move-exception v0

    move-object v0, v1

    move-object v4, v1

    :goto_70
    if-eqz v0, :cond_75

    :try_start_72
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_8e

    :cond_75
    :goto_75
    if-eqz v4, :cond_1e

    :try_start_77
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_1e

    :catch_7b
    move-exception v0

    goto :goto_1e

    :catchall_7d
    move-exception v0

    move-object v4, v1

    :goto_7f
    if-eqz v1, :cond_84

    :try_start_81
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_90

    :cond_84
    :goto_84
    if-eqz v4, :cond_89

    :try_start_86
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_92

    :cond_89
    :goto_89
    throw v0

    :catch_8a
    move-exception v0

    goto :goto_56

    :catch_8c
    move-exception v0

    goto :goto_65

    :catch_8e
    move-exception v0

    goto :goto_75

    :catch_90
    move-exception v1

    goto :goto_84

    :catch_92
    move-exception v1

    goto :goto_89

    :catchall_94
    move-exception v0

    goto :goto_7f

    :catchall_96
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_7f

    :catch_9b
    move-exception v0

    move-object v0, v1

    goto :goto_70

    :catch_9e
    move-exception v1

    goto :goto_70

    :catch_a0
    move-exception v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_60

    :catch_a4
    move-exception v1

    move-object v1, v4

    goto :goto_60

    :cond_a7
    move-wide v0, v2

    goto/16 :goto_1d
.end method

.method private static d(Ljava/lang/String;)[B
    .registers 8

    const/16 v6, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_2a

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_b

    :cond_2a
    return-object v2
.end method

.method private static e()Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_7
    new-instance v3, Ljava/io/FileReader;

    const-string v1, "/proc/version"

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_e} :catch_27
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_36
    .catchall {:try_start_7 .. :try_end_e} :catchall_45

    :try_start_e
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_15} :catch_68
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_63
    .catchall {:try_start_e .. :try_end_15} :catchall_5e

    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_18} :catch_6c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_65
    .catchall {:try_start_15 .. :try_end_18} :catchall_60

    move-result-object v2

    if-eqz v2, :cond_1c

    move-object v0, v2

    :cond_1c
    if-eqz v1, :cond_21

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_52

    :cond_21
    :goto_21
    if-eqz v3, :cond_26

    :try_start_23
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_54

    :cond_26
    :goto_26
    return-object v0

    :catch_27
    move-exception v1

    move-object v1, v2

    :goto_29
    if-eqz v1, :cond_2e

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_56

    :cond_2e
    :goto_2e
    if-eqz v2, :cond_26

    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_26

    :catch_34
    move-exception v1

    goto :goto_26

    :catch_36
    move-exception v1

    move-object v3, v2

    :goto_38
    if-eqz v2, :cond_3d

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_58

    :cond_3d
    :goto_3d
    if-eqz v3, :cond_26

    :try_start_3f
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_26

    :catch_43
    move-exception v1

    goto :goto_26

    :catchall_45
    move-exception v0

    move-object v3, v2

    :goto_47
    if-eqz v2, :cond_4c

    :try_start_49
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_5a

    :cond_4c
    :goto_4c
    if-eqz v3, :cond_51

    :try_start_4e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_5c

    :cond_51
    :goto_51
    throw v0

    :catch_52
    move-exception v1

    goto :goto_21

    :catch_54
    move-exception v1

    goto :goto_26

    :catch_56
    move-exception v1

    goto :goto_2e

    :catch_58
    move-exception v1

    goto :goto_3d

    :catch_5a
    move-exception v1

    goto :goto_4c

    :catch_5c
    move-exception v1

    goto :goto_51

    :catchall_5e
    move-exception v0

    goto :goto_47

    :catchall_60
    move-exception v0

    move-object v2, v1

    goto :goto_47

    :catch_63
    move-exception v1

    goto :goto_38

    :catch_65
    move-exception v2

    move-object v2, v1

    goto :goto_38

    :catch_68
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_29

    :catch_6c
    move-exception v2

    move-object v2, v3

    goto :goto_29
.end method

.method private static e(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/qq/gdt/action/e/a;->a:[Ljava/lang/String;

    array-length v4, v3

    :goto_d
    if-ge v0, v4, :cond_31

    aget-object v5, v3, v0

    :try_start_11
    invoke-static {v5}, Lcom/qq/gdt/action/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-wide v6, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_23} :catch_26

    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :catch_26
    move-exception v5

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_31
    return-object v1
.end method
