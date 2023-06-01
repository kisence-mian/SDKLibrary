.class public Lcom/ssjj/fnsdk/core/update/util/FindEmulator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/update/util/FindEmulator$a;,
        Lcom/ssjj/fnsdk/core/update/util/FindEmulator$b;
    }
.end annotation


# static fields
.field private static c:Lcom/ssjj/fnsdk/core/update/util/FindEmulator;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:[Lcom/ssjj/fnsdk/core/update/util/FindEmulator$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->c:Lcom/ssjj/fnsdk/core/update/util/FindEmulator;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->b:Z

    const-string v1, "/dev/socket/qemud"

    const-string v2, "/dev/qemu_pipe"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->d:[Ljava/lang/String;

    const-string v1, "/system/lib/libc_malloc_debug_qemu.so"

    const-string v2, "/sys/qemu_trace"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->e:[Ljava/lang/String;

    const-string v1, "/dev/socket/genyd"

    const-string v2, "/dev/socket/baseband_genyd"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->f:[Ljava/lang/String;

    const-string v1, "goldfish"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->g:[Ljava/lang/String;

    const-string v1, "e21833235b6eef10"

    const-string v2, "012345678912345"

    const-string v3, "000000000000000"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->h:[Ljava/lang/String;

    const-string v1, "310260000000000"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->i:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/ssjj/fnsdk/core/update/util/FindEmulator$a;

    new-instance v2, Lcom/ssjj/fnsdk/core/update/util/FindEmulator$a;

    const-string v3, "ro.serialno"

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator$a;-><init>(Lcom/ssjj/fnsdk/core/update/util/FindEmulator;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->j:[Lcom/ssjj/fnsdk/core/update/util/FindEmulator$a;

    return-void
.end method

.method private a()Z
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "/system/bin/cat"

    aput-object v2, v0, v1

    const-string v2, "/proc/cpuinfo"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v6, "utf-8"

    invoke-direct {v5, v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_2b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_60

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    const-string v2, "intel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_44} :catch_64

    const-string v4, "cpu_info"

    if-eqz v2, :cond_50

    :try_start_48
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a:Ljava/util/Map;

    const-string v2, "emu_intel"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_50
    const-string v2, "amd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a:Ljava/util/Map;

    const-string v2, "emu_amd"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_63} :catch_64

    goto :goto_2b

    :catch_64
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_68
    return v1
.end method

.method private a(Landroid/content/Context;)Z
    .registers 8

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->h:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-lt v3, v1, :cond_c

    return v2

    :cond_c
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a:Ljava/util/Map;

    const-string v0, "known_dev_id"

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method private b()Z
    .registers 7

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->d:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-lt v3, v1, :cond_8

    return v2

    :cond_8
    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a:Ljava/util/Map;

    const-string v1, "known_pipe_file"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method private b(Landroid/content/Context;)Z
    .registers 8

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->i:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-lt v3, v1, :cond_14

    return v2

    :cond_14
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a:Ljava/util/Map;

    const-string v0, "known_imsi"

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_11
.end method

.method private c()Z
    .registers 7

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->e:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-lt v3, v1, :cond_8

    return v2

    :cond_8
    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a:Ljava/util/Map;

    const-string v1, "known_qemu_file"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method private c(Landroid/content/Context;)Z
    .registers 8

    sget-object p1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "unknown"

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3b

    const-string p1, "generic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3b

    const-string p1, "sdk"

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3b

    const-string p1, "goldfish"

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_39

    goto :goto_3b

    :cond_39
    const/4 p1, 0x0

    return p1

    :cond_3b
    :goto_3b
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a:Ljava/util/Map;

    const-string v0, "emu_build"

    invoke-interface {p1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method private d()Z
    .registers 7

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->f:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-lt v3, v1, :cond_8

    return v2

    :cond_8
    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a:Ljava/util/Map;

    const-string v1, "known_geny_file"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method private d(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a:Ljava/util/Map;

    const-string v1, "has_emu_op_name"

    const-string v2, "emu_op"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return p1
.end method

.method private e()Z
    .registers 13

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/tty/drivers"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/io/File;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x0

    :goto_18
    if-lt v2, v0, :cond_1b

    return v3

    :cond_1b
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5d

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_5d

    const/16 v6, 0x400

    new-array v6, v6, [B

    :try_start_2d
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3d
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->g:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_46
    if-lt v8, v7, :cond_49

    goto :goto_5d

    :cond_49
    aget-object v9, v6, v8

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5a

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a:Ljava/util/Map;

    const-string v1, "known_qemu_driver"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_5a
    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_18
.end method

.method private e(Landroid/content/Context;)Z
    .registers 8

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->j:[Lcom/ssjj/fnsdk/core/update/util/FindEmulator$a;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-lt v3, v1, :cond_8

    return v2

    :cond_8
    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/ssjj/fnsdk/core/update/util/FindEmulator$a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/ssjj/fnsdk/core/update/util/FindEmulator$a;->b:Ljava/lang/String;

    if-nez v4, :cond_27

    if-eqz v5, :cond_27

    const-string v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a:Ljava/util/Map;

    const-string v0, "known_qemu_prop"

    invoke-interface {p1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method private f()Z
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->g()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private g()Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/proc/net/tcp"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x3e8

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_7d
    .catchall {:try_start_2 .. :try_end_15} :catchall_7b

    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6b

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, -0x1

    if-nez v4, :cond_35

    const/4 v3, -0x1

    goto :goto_43

    :cond_35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ssjj/fnsdk/core/update/util/FindEmulator$b;

    iget-wide v8, v4, Lcom/ssjj/fnsdk/core/update/util/FindEmulator$b;->b:J

    cmp-long v10, v8, v5

    if-nez v10, :cond_2a

    iget v3, v4, Lcom/ssjj/fnsdk/core/update/util/FindEmulator$b;->c:I

    :goto_43
    if-eq v3, v7, :cond_84

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_49
    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_50

    goto :goto_84

    :cond_50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ssjj/fnsdk/core/update/util/FindEmulator$b;

    iget-wide v7, v4, Lcom/ssjj/fnsdk/core/update/util/FindEmulator$b;->b:J

    cmp-long v9, v7, v5

    if-eqz v9, :cond_49

    iget v4, v4, Lcom/ssjj/fnsdk/core/update/util/FindEmulator$b;->c:I

    if-ne v4, v3, :cond_49

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a:Ljava/util/Map;

    const-string v7, "has_emu_adb"

    const-string v8, "true"

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_49

    :cond_6b
    const-string v4, "\\W+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator$b;->a([Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/util/FindEmulator$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_78} :catch_79
    .catchall {:try_start_15 .. :try_end_78} :catchall_88

    goto :goto_1d

    :catch_79
    move-exception v1

    goto :goto_81

    :catchall_7b
    move-exception v0

    goto :goto_8a

    :catch_7d
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_81
    :try_start_81
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_88

    :cond_84
    :goto_84
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return v0

    :catchall_88
    move-exception v0

    move-object v1, v2

    :goto_8a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/update/util/FindEmulator;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->c:Lcom/ssjj/fnsdk/core/update/util/FindEmulator;

    if-nez v0, :cond_b

    new-instance v0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->c:Lcom/ssjj/fnsdk/core/update/util/FindEmulator;

    :cond_b
    sget-object v0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->c:Lcom/ssjj/fnsdk/core/update/util/FindEmulator;

    return-object v0
.end method


# virtual methods
.method public getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v0, "android.os.SystemProperties"

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "get"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_27} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    return-object p1

    :catch_28
    move-exception p1

    const/4 p1, 0x0

    throw p1

    :catch_2b
    move-exception p1

    throw p1
.end method

.method public init(Landroid/content/Context;)V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_4
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->f()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->c()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->e()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->b()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->d()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->d(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_48

    const/4 p1, 0x0

    goto :goto_49

    :cond_48
    const/4 p1, 0x1

    :goto_49
    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->b:Z
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_4c

    goto :goto_63

    :catchall_4c
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check emu err: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :goto_63
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "check emu: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->b:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->b:Z

    if-eqz p1, :cond_a8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "found: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_a8
    return-void
.end method

.method public isEmulator()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->b:Z

    return v0
.end method
