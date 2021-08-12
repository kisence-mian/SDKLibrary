.class public Lcom/sigmob/sdk/common/f/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/f/c$a;
    }
.end annotation


# static fields
.field static final a:[Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const-string v0, "/system/lib/libdroid4x.so"

    const-string v1, "/system/bin/mount.vboxsf"

    const-string v2, "/system/lib/vboxguest.ko"

    const-string v3, "/etc/mumu-configs"

    const-string v4, "/system/lib/vboxsf.ko"

    const-string v5, "/system/lib/vboxvideo.ko"

    const-string v6, "/data/.bluestacks.prop"

    const-string v7, "/system/bin/microvirt-vbox-sf"

    const-string v8, "/system/lib/tboxsf.ko"

    const-string v9, "/system/bin/androVM-vbox-sf"

    const-string v10, "/system/bin/microvirtd"

    const-string v11, "/system/bin/windroyed"

    const-string v12, "/system/lib/libdroid4x.so"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/common/f/c;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/sigmob/sdk/common/f/c;->c:I

    return-void
.end method

.method public static A(Landroid/content/Context;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->y(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-static {v0, p0}, Lcom/sigmob/sdk/common/f/d;->a(FLandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static B(Landroid/content/Context;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-static {p0}, Lcom/sigmob/sdk/common/f/d;->c(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static C(Landroid/content/Context;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->y(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-static {v0, p0}, Lcom/sigmob/sdk/common/f/d;->a(FLandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static D(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object p0

    :catchall_9
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)I
    .registers 8

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    int-to-long v1, v1

    :try_start_11
    const-class v3, Landroid/content/pm/ApplicationInfo;

    const-string v4, "FLAG_LARGE_HEAP"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p0, v3}, Lcom/sigmob/sdk/common/f/c;->a(II)Z

    move-result p0

    if-eqz p0, :cond_44

    new-instance p0, Lcom/sigmob/sdk/common/f/n$a;

    const-string v3, "getLargeMemoryClass"

    invoke-direct {p0, v0, v3}, Lcom/sigmob/sdk/common/f/n$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/f/n$a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_3e

    int-to-long v0, p0

    move-wide v1, v0

    goto :goto_44

    :catchall_3e
    move-exception p0

    const-string p0, "Unable to reflectively determine large heap size."

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    :cond_44
    :goto_44
    const-wide/32 v3, 0x1e00000

    const-wide/16 v5, 0x8

    div-long/2addr v1, v5

    const-wide/16 v5, 0x400

    mul-long/2addr v1, v5

    mul-long/2addr v1, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static a()J
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_69

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_69

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-lez v1, :cond_69

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    if-eqz p0, :cond_69

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    if-eqz p1, :cond_69

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    move v3, v1

    :goto_36
    const/4 v4, 0x1

    if-ge v3, v2, :cond_57

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {p1, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_60} :catch_61

    goto :goto_69

    :catch_61
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_69
    :goto_69
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_24

    check-cast p0, Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    move-object v0, p0

    goto :goto_24

    :catchall_23
    move-exception p0

    :cond_24
    :goto_24
    return-object v0
.end method

.method private static a(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static b()Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/sigmob/sdk/common/f/c;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v0, Lcom/sigmob/sdk/common/f/c;->b:Ljava/lang/String;

    return-object v0

    :cond_c
    const-string v1, "wlan0"

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_31

    goto :goto_1a

    :cond_31
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    if-nez v3, :cond_38

    return-object v0

    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_40
    const/4 v8, 0x1

    if-ge v7, v5, :cond_59

    aget-byte v9, v3, v7

    const-string v10, "%02X:"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    :cond_59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_67

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sigmob/sdk/common/f/c;->b:Ljava/lang/String;
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_6e

    goto :goto_1a

    :catchall_6e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_76
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "getPath"

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v0, v3, :cond_47

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_19

    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3d} :catch_3e

    return-object v0

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_19

    :cond_47
    :try_start_47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getVolumeList"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v3, "android.os.storage.StorageVolume"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v4, "isRemovable"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0
    :try_end_71
    .catchall {:try_start_47 .. :try_end_71} :catchall_9b

    move v4, v2

    :goto_72
    if-ge v4, v0, :cond_9c

    :try_start_74
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_98

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_98

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_98

    check-cast v5, Ljava/lang/String;
    :try_end_96
    .catchall {:try_start_74 .. :try_end_96} :catchall_97

    return-object v5

    :catchall_97
    move-exception v5

    :cond_98
    add-int/lit8 v4, v4, 0x1

    goto :goto_72

    :catchall_9b
    move-exception p0

    :cond_9c
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ls -l "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_4b

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_4e

    const/16 v1, 0x73

    if-eq p0, v1, :cond_44

    const/16 v1, 0x78

    if-ne p0, v1, :cond_4b

    :cond_44
    const/4 p0, 0x1

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_4a
    return p0

    :cond_4b
    if-eqz v0, :cond_54

    goto :goto_51

    :catchall_4e
    move-exception p0

    if-eqz v0, :cond_54

    :goto_51
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_54
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;)Landroid/view/WindowManager;
    .registers 2

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_c
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->c(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    const-string v0, "0"

    if-nez p0, :cond_9

    return-object v0

    :cond_9
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    packed-switch p0, :pswitch_data_20

    return-object v0

    :pswitch_15
    const-string p0, "270"

    return-object p0

    :pswitch_18
    const-string p0, "180"

    return-object p0

    :pswitch_1b
    const-string p0, "90"

    return-object p0

    :pswitch_1e
    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public static d()Z
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {v1}, Lcom/sigmob/sdk/common/f/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    :cond_13
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/xbin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {v1}, Lcom/sigmob/sdk/common/f/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_14

    :catchall_b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->g(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_11

    return-object p0

    :catchall_11
    move-exception p0

    return-object v0
.end method

.method public static g()I
    .registers 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static g(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .registers 2

    if-eqz p0, :cond_b

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2

    if-eqz p0, :cond_b

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "\""

    const/4 v1, 0x0

    :try_start_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_19

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->g(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    if-nez p0, :cond_10

    return-object v1

    :cond_10
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->h(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_34
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_45

    :cond_44
    return-object p0

    :catchall_45
    move-exception p0

    return-object v1
.end method

.method public static j()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_14

    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_2e} :catch_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    return-object v0

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_38
    :goto_38
    const-string v0, "0.0.0.0"

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public static k(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static k()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static l(Landroid/content/Context;)Lcom/sigmob/sdk/common/f/c$a;
    .registers 1

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->k(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_9

    sget-object p0, Lcom/sigmob/sdk/common/f/c$a;->a:Lcom/sigmob/sdk/common/f/c$a;

    return-object p0

    :cond_9
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_20

    :pswitch_10
    sget-object p0, Lcom/sigmob/sdk/common/f/c$a;->d:Lcom/sigmob/sdk/common/f/c$a;

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/sigmob/sdk/common/f/c$a;->h:Lcom/sigmob/sdk/common/f/c$a;

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/sigmob/sdk/common/f/c$a;->g:Lcom/sigmob/sdk/common/f/c$a;

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/sigmob/sdk/common/f/c$a;->f:Lcom/sigmob/sdk/common/f/c$a;

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/sigmob/sdk/common/f/c$a;->e:Lcom/sigmob/sdk/common/f/c$a;

    return-object p0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_19
        :pswitch_1c
        :pswitch_19
        :pswitch_19
        :pswitch_1c
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_19
        :pswitch_19
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method public static l()Z
    .registers 9

    sget v0, Lcom/sigmob/sdk/common/f/c;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_b

    if-le v0, v1, :cond_a

    move v2, v3

    :cond_a
    return v2

    :cond_b
    :try_start_b
    const-string v0, "gsm.version.baseband"

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "1.0.0.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_1f
    sget v0, Lcom/sigmob/sdk/common/f/c;->c:I

    add-int/2addr v0, v3

    sput v0, Lcom/sigmob/sdk/common/f/c;->c:I

    :cond_24
    const-string v0, "ro.build.flavor"

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    sget v0, Lcom/sigmob/sdk/common/f/c;->c:I

    add-int/2addr v0, v3

    sput v0, Lcom/sigmob/sdk/common/f/c;->c:I

    goto :goto_4c

    :cond_36
    const-string v4, "vbox"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_46

    const-string v4, "sdk_gphone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_46
    sget v0, Lcom/sigmob/sdk/common/f/c;->c:I

    add-int/lit8 v0, v0, 0xa

    sput v0, Lcom/sigmob/sdk/common/f/c;->c:I

    :cond_4c
    :goto_4c
    const-string v0, "ro.product.board"

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_56
    .catchall {:try_start_b .. :try_end_56} :catchall_ed

    const-string v5, "android"

    if-eqz v4, :cond_60

    :try_start_5a
    sget v0, Lcom/sigmob/sdk/common/f/c;->c:I

    add-int/2addr v0, v3

    sput v0, Lcom/sigmob/sdk/common/f/c;->c:I

    goto :goto_74

    :cond_60
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6e

    const-string v4, "goldfish"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_74

    :cond_6e
    sget v0, Lcom/sigmob/sdk/common/f/c;->c:I

    add-int/lit8 v0, v0, 0xa

    sput v0, Lcom/sigmob/sdk/common/f/c;->c:I

    :cond_74
    :goto_74
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_86

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8b

    :cond_86
    sget v0, Lcom/sigmob/sdk/common/f/c;->c:I

    add-int/2addr v0, v3

    sput v0, Lcom/sigmob/sdk/common/f/c;->c:I

    :cond_8b
    const-string v0, "ro.hardware"

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_99

    sget v0, Lcom/sigmob/sdk/common/f/c;->c:I

    add-int/2addr v0, v3

    sput v0, Lcom/sigmob/sdk/common/f/c;->c:I

    goto :goto_bb

    :cond_99
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ttvm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ac

    sget v0, Lcom/sigmob/sdk/common/f/c;->c:I

    :goto_a7
    add-int/lit8 v0, v0, 0xa

    sput v0, Lcom/sigmob/sdk/common/f/c;->c:I

    goto :goto_bb

    :cond_ac
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "nox"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bb

    sget v0, Lcom/sigmob/sdk/common/f/c;->c:I

    goto :goto_a7

    :cond_bb
    :goto_bb
    sget-object v0, Lcom/sigmob/sdk/common/f/c;->a:[Ljava/lang/String;

    array-length v4, v0

    move v5, v2

    :goto_bf
    if-ge v5, v4, :cond_ee

    aget-object v6, v0, v5

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_ea

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find emulator "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget v6, Lcom/sigmob/sdk/common/f/c;->c:I

    add-int/lit8 v6, v6, 0xa

    sput v6, Lcom/sigmob/sdk/common/f/c;->c:I
    :try_end_ea
    .catchall {:try_start_5a .. :try_end_ea} :catchall_ed

    :cond_ea
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    :catchall_ed
    move-exception v0

    :cond_ee
    sget v0, Lcom/sigmob/sdk/common/f/c;->c:I

    if-le v0, v1, :cond_f3

    move v2, v3

    :cond_f3
    return v2
.end method

.method public static m(Landroid/content/Context;)I
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    return p0
.end method

.method public static n(Landroid/content/Context;)F
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1c

    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    if-nez p0, :cond_12

    return v1

    :cond_12
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    return p0

    :cond_1c
    return v1
.end method

.method public static o(Landroid/content/Context;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1c

    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    if-nez p0, :cond_12

    return v1

    :cond_12
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    const/16 v0, 0x10

    if-ge p0, v0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public static p(Landroid/content/Context;)I
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_29

    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    if-nez p0, :cond_12

    return v1

    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1e

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    goto :goto_1f

    :cond_1e
    move p0, v1

    :goto_1f
    packed-switch p0, :pswitch_data_2a

    return v1

    :pswitch_23
    const/4 p0, 0x3

    return p0

    :pswitch_25
    const/4 p0, 0x1

    return p0

    :pswitch_27
    const/4 p0, 0x2

    return p0

    :cond_29
    return v1

    :pswitch_data_2a
    .packed-switch 0x2
        :pswitch_27
        :pswitch_25
        :pswitch_25
        :pswitch_23
    .end packed-switch
.end method

.method public static q(Landroid/content/Context;)Lcom/sigmob/sdk/common/f/c$a;
    .registers 5

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4d

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->h(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->h(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_63

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    const/16 v3, 0x10

    if-eqz v2, :cond_32

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_32

    sget-object p0, Lcom/sigmob/sdk/common/f/c$a;->c:Lcom/sigmob/sdk/common/f/c$a;

    return-object p0

    :cond_32
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->l(Landroid/content/Context;)Lcom/sigmob/sdk/common/f/c$a;

    move-result-object p0

    return-object p0

    :cond_4a
    sget-object p0, Lcom/sigmob/sdk/common/f/c$a;->a:Lcom/sigmob/sdk/common/f/c$a;

    return-object p0

    :cond_4d
    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->h(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_5d

    :cond_5c
    const/4 v0, -0x1

    :goto_5d
    invoke-static {p0, v0}, Lcom/sigmob/sdk/common/f/c$a;->a(Landroid/content/Context;I)Lcom/sigmob/sdk/common/f/c$a;

    move-result-object p0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_62

    return-object p0

    :catch_62
    move-exception p0

    :cond_63
    sget-object p0, Lcom/sigmob/sdk/common/f/c$a;->a:Lcom/sigmob/sdk/common/f/c$a;

    return-object p0
.end method

.method public static r(Landroid/content/Context;)J
    .registers 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_23

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-eqz p0, :cond_23

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-wide v0

    :catchall_1b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static s(Landroid/content/Context;)F
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_c

    int-to-float p0, p0

    return p0

    :catchall_c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->k(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/content/Context;)Ljava/util/Locale;
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object p0

    :catchall_b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bluetooth_name"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object p0

    :catchall_b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1b

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_name"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-object p0

    :catchall_11
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1b
    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 8

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/c;->c(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_17

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_3b

    :cond_17
    :try_start_17
    const-string v1, "android.view.Display"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getRealMetrics"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/util/DisplayMetrics;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_32} :catch_33

    goto :goto_3b

    :catch_33
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_3b
    return-object v0
.end method

.method public static z(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/d;->b(Landroid/content/Context;)I

    move-result p0

    return p0
.end method
