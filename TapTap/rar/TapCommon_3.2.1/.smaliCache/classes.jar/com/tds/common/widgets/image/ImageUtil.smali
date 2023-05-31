.class final Lcom/tds/common/widgets/image/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field private static final MAX_DISK_CACHE_SIZE:I = 0x1f400000

.field private static final MIN_DISK_CACHE_SIZE:I = 0x3200000


# direct methods
.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateDiskCacheSize(Ljava/io/File;)J
    .registers 12
    .param p0, "dir"    # Ljava/io/File;

    .line 31
    const-wide/32 v0, 0x3200000

    .line 33
    .local v0, "size":J
    :try_start_3
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 34
    .local v2, "statFs":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    .line 35
    .local v3, "blockCount":J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    .line 36
    .local v5, "blockSize":J
    mul-long v7, v3, v5

    .line 38
    .local v7, "available":J
    const-wide/16 v9, 0x32

    div-long v9, v7, v9
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_1a} :catch_1c

    move-wide v0, v9

    .line 40
    .end local v2    # "statFs":Landroid/os/StatFs;
    .end local v3    # "blockCount":J
    .end local v5    # "blockSize":J
    .end local v7    # "available":J
    goto :goto_1d

    .line 39
    :catch_1c
    move-exception v2

    .line 43
    :goto_1d
    const-wide/32 v2, 0x1f400000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/32 v4, 0x3200000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method static calculateMemoryCacheSize(Landroid/content/Context;)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 48
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 49
    .local v1, "largeHeap":Z
    :goto_16
    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v2

    goto :goto_21

    :cond_1d
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 51
    .local v2, "memoryClass":I
    :goto_21
    const-wide/32 v3, 0x100000

    int-to-long v5, v2

    mul-long/2addr v5, v3

    const-wide/16 v3, 0x4

    div-long/2addr v5, v3

    long-to-int v3, v5

    return v3
.end method

.method static checkMain()V
    .registers 2

    .line 59
    invoke-static {}, Lcom/tds/common/widgets/image/ImageUtil;->isMain()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 62
    return-void

    .line 60
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "method must called on main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBitmapBytes(Landroid/graphics/Bitmap;)I
    .registers 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 24
    .local v0, "result":I
    :goto_f
    if-ltz v0, :cond_12

    .line 27
    return v0

    .line 25
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getMd5(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "in"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "digest":Ljava/security/MessageDigest;
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 70
    goto :goto_d

    .line 68
    :catch_9
    move-exception v1

    .line 69
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 72
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 74
    .local v1, "bytes":[B
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 75
    .local v2, "bigInt":Ljava/math/BigInteger;
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static isMain()Z
    .registers 2

    .line 55
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
