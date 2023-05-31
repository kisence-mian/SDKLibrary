.class public Lcom/sigmob/sdk/base/common/utils/ClientMetadata;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/sigmob/sdk/base/common/utils/j;


# static fields
.field private static B:Z = false

.field private static C:I = 0x0

.field private static D:I = 0x0

.field private static volatile F:Lcom/sigmob/sdk/base/common/utils/ClientMetadata; = null

.field private static final L:Ljava/lang/String; = "getSimState"

.field private static final M:Ljava/lang/String; = "getImei"

.field private static final N:Ljava/lang/String; = "getLine1Number"

.field private static final O:Ljava/util/concurrent/atomic/AtomicInteger;

.field static final a:[Ljava/lang/String;

.field private static final c:I = 0x9

.field private static d:I = 0x0

.field private static final e:I = -0x1

.field private static g:Lcom/bun/supplier/IdSupplier; = null

.field private static final i:I = 0x1e00000

.field private static final j:I = 0x1e00000

.field private static final k:I = 0x6400000

.field private static l:Ljava/lang/String;

.field private static u:Landroid/os/Handler;

.field private static z:Ljava/lang/String;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/lang/String;

.field private final G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private final I:Landroid/content/Context;

.field private final J:Landroid/net/ConnectivityManager;

.field private K:J

.field b:Ljava/text/DecimalFormat;

.field private final f:Lcom/sigmob/sdk/base/common/utils/i;

.field private h:Ljava/lang/String;

.field private m:Landroid/location/Location;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$DownloadCompleteReceiver;

.field private q:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$AppInstallReceiver;

.field private r:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;

.field private s:I

.field private t:Landroid/hardware/SensorManager;

.field private v:I

.field private w:I

.field private x:Lcom/sigmob/sdk/base/common/utils/y;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/common/utils/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x1f4

    sput v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d:I

    const-string v0, "-1"

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->l:Ljava/lang/String;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/lib/libdroid4x.so"

    aput-object v1, v0, v3

    const-string v1, "/system/bin/mount.vboxsf"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "/system/lib/vboxguest.ko"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/etc/mumu-configs"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/system/lib/vboxsf.ko"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/system/lib/vboxvideo.ko"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/data/.bluestacks.prop"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/system/bin/microvirt-vbox-sf"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/system/lib/tboxsf.ko"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/system/bin/androVM-vbox-sf"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/system/bin/microvirtd"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/system/bin/windroyed"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/system/lib/libdroid4x.so"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a:[Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->z:Ljava/lang/String;

    sput-boolean v4, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->B:Z

    sput v3, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->C:I

    sput v3, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->D:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->h:Ljava/lang/String;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->v:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->w:I

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/y;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/utils/y;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->x:Lcom/sigmob/sdk/base/common/utils/y;

    const-string v0, "0"

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->K:J

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#######.######"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->J:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/aa;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->G:Ljava/lang/String;

    :try_start_52
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->G:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_58} :catch_a5

    move-result-object v0

    :goto_59
    if-eqz v0, :cond_63

    :try_start_5b
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->H:Ljava/lang/String;
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_63} :catch_a8

    :cond_63
    :goto_63
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b(Landroid/content/Context;)I

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/i;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/sigmob/sdk/base/common/utils/i;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/utils/j;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->f:Lcom/sigmob/sdk/base/common/utils/i;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$DownloadCompleteReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$DownloadCompleteReceiver;-><init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->p:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$DownloadCompleteReceiver;

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$AppInstallReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$AppInstallReceiver;-><init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->q:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$AppInstallReceiver;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->aC()V

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;-><init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->r:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->r:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$WifiScanReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->K()Z

    move-result v0

    if-eqz v0, :cond_a4

    const-string v0, "1"

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E:Ljava/lang/String;

    :cond_a4
    return-void

    :catch_a5
    move-exception v0

    move-object v0, v1

    goto :goto_59

    :catch_a8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_63
.end method

.method public static E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->F:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    if-nez v0, :cond_a

    const-class v1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->F:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    monitor-exit v1

    :cond_a
    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public static H()Z
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static J()Z
    .registers 3

    const-string v0, "/system/bin/su"

    const-string v1, "/system/xbin/su"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    :cond_15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static N()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static O()Ljava/lang/String;
    .registers 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_b
    return-object v0

    :cond_c
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_b

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;)I
    .registers 2

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    goto :goto_b
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;J)J
    .registers 4

    iput-wide p1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->K:J

    return-wide p1
.end method

.method public static a(Ljava/io/File;J)J
    .registers 8

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x32

    div-long p1, v0, v2
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_18} :catch_27

    :goto_18
    const-wide/32 v0, 0x6400000

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x1e00000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :catch_27
    move-exception v0

    const-string v0, "Unable to calculate 2% of available disk space, defaulting to minimum"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    goto :goto_18
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/bun/supplier/IdSupplier;)Lcom/bun/supplier/IdSupplier;
    .registers 1

    sput-object p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g:Lcom/bun/supplier/IdSupplier;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/common/utils/ClientMetadata;
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->F:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    if-nez v0, :cond_1c

    const-class v1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->F:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->F:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    sget-object v2, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->F:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    iput-object p1, v2, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->n:Ljava/lang/String;

    sget-object v2, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->F:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->D()V

    :cond_1b
    monitor-exit v1

    :cond_1c
    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "-1"

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->l:Ljava/lang/String;

    goto :goto_a
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/common/utils/y;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_d

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_12

    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_11
    return-object v2

    :cond_12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_64
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_43f

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/base/common/utils/y;

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->a:[F

    move-object/from16 v21, v0

    if-eqz v21, :cond_33d

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->a:[F

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_33d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->a:[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->a:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->a:[F

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f5
    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->b:[F

    move-object/from16 v21, v0

    if-eqz v21, :cond_36c

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->b:[F

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_36c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->b:[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->b:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->b:[F

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_178
    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->c:[F

    move-object/from16 v21, v0

    if-eqz v21, :cond_39b

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->c:[F

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_39b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->c:[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->c:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->c:[F

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1fb
    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->d:[F

    move-object/from16 v21, v0

    if-eqz v21, :cond_3ca

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->d:[F

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3ca

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->d:[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->d:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->d:[F

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_280
    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->f:[F

    move-object/from16 v21, v0

    if-eqz v21, :cond_3fb

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->f:[F

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->f:[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->f:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->f:[F

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_309
    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->e:[F

    move-object/from16 v21, v0

    if-eqz v21, :cond_430

    iget-object v0, v2, Lcom/sigmob/sdk/base/common/utils/y;->e:[F

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_430

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b:Ljava/text/DecimalFormat;

    move-object/from16 v21, v0

    iget-object v2, v2, Lcom/sigmob/sdk/base/common/utils/y;->e:[F

    const/16 v22, 0x0

    aget v2, v2, v22

    float-to-double v0, v2

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_338
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_64

    :cond_33d
    const-string v21, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v21, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v21, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f5

    :cond_36c
    const-string v21, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v21, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v21, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_178

    :cond_39b
    const-string v21, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v21, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v21, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1fb

    :cond_3ca
    const-string v21, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v21, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v21, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_280

    :cond_3fb
    const-string v21, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v21, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v21, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_309

    :cond_430
    const-string v2, "0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_338

    :cond_43f
    const-string v2, "{"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"gravity\":{%s}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v21, 0x0

    const-string v22, "\"x\":%s,\"y\":%s,\"z\":%s"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v23, v24

    const/4 v5, 0x1

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v23, v5

    const/4 v5, 0x2

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v23, v5

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v21

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"gyroscope\":{%s}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "\"x\":%s,\"y\":%s,\"z\":%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v21, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v21

    const/4 v8, 0x1

    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v10}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"magnetic_field\":{%s}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "\"x\":%s,\"y\":%s,\"z\":%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v11}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v12}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v13}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"light\":%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"linear_acceleration\":{%s}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "\"x\":%s,\"y\":%s,\"z\":%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"accelerometer\":{%s}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "\"x\":%s,\"y\":%s,\"z\":%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v15}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_11
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->A:Ljava/util/List;

    return-object p1
.end method

.method public static a(Landroid/net/Uri;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_2a
    return-object v1
.end method

.method private a(Landroid/content/Context;JLcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 11

    const/4 v5, 0x0

    if-eqz p4, :cond_81

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->w()Landroid/app/DownloadManager;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/sigmob/sdk/base/common/t;->a(Landroid/app/DownloadManager;J)Ljava/util/Map;

    move-result-object v2

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->z:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p4, v0}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    if-eqz v2, :cond_a5

    const-string v0, "fileName"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "status"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v1, "uri"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v0, :cond_a5

    const/16 v0, 0x8

    if-ne v3, v0, :cond_a5

    :try_start_34
    invoke-static {p1, v1}, Lcom/sigmob/sdk/base/common/utils/e;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0, v1, p1}, Lcom/sigmob/sdk/base/common/t;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->h(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->u:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-direct {p0, p4, v1, v0, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->A:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p4, v1}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    if-eqz v0, :cond_76

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/sigmob/sdk/base/common/utils/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_76
    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->v:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-direct {p0, p4, v1, v0, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_81} :catch_82

    :cond_81
    :goto_81
    return-void

    :catch_82
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->v:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_INSTALL_FAIL:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v1, v2, v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->v:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-direct {p0, p4, v0, v5, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    goto :goto_81

    :cond_a5
    :try_start_a5
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_af} :catch_cc

    :goto_af
    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->v:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_INSTALL_FAIL:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v1

    const-string v2, "download info is null"

    invoke-direct {p0, p4, v0, v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->u:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-direct {p0, p4, v0, v5, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    goto :goto_81

    :catch_cc
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_af
.end method

.method private a(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->x:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/pm/PackageInfo;)V
    .registers 6

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->B:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p2, v0}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->w:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-direct {p0, p2, v0, p3, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/videoAd/f;->c:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/f;->a()I

    move-result v1

    if-ne v0, v1, :cond_3c

    :try_start_22
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/o;->a(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->C:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p2, v0}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_3c} :catch_3d

    :cond_3c
    :goto_3c
    return-void

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_3c
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Landroid/content/Context;JLcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;JLcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/pm/PackageInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sub_category"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_message"

    invoke-interface {v6, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "9"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .registers 11

    const-string v5, "5"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    invoke-static {}, Lcom/sigmob/sdk/base/common/a/e;->b()Lcom/sigmob/sdk/base/common/a/e;

    move-result-object v7

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;-><init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Ljava/lang/String;Landroid/content/pm/PackageInfo;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/sigmob/sdk/base/common/a/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->l:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/common/utils/y;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/common/utils/y;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v1, "motion_before"

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "motion_after"

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "motion_interval"

    iget v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->v:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "101"

    const/4 v3, 0x0

    move-object v1, p4

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->B:Z

    return-void
.end method

.method private static a(II)Z
    .registers 3

    and-int v0, p0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :try_start_7
    const-string v1, "android.support.v4.content.ContextCompat"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_3b

    move-result-object v0

    :goto_d
    :try_start_d
    const-string v1, "androidx.core.content.ContextCompat"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_39

    move-result-object v0

    :goto_13
    if-eqz v0, :cond_37

    :try_start_15
    new-instance v1, Lcom/sigmob/sdk/base/common/utils/x;

    const-string v2, "checkSelfPermission"

    invoke-direct {v1, v0, v2}, Lcom/sigmob/sdk/base/common/utils/x;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Landroid/content/Context;

    invoke-virtual {v1, v0, p0}, Lcom/sigmob/sdk/base/common/utils/x;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/base/common/utils/x;

    const-class v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/sigmob/sdk/base/common/utils/x;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/base/common/utils/x;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/x;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_31} :catch_36

    move-result v0

    if-nez v0, :cond_37

    const/4 v0, 0x1

    :goto_35
    return v0

    :catch_36
    move-exception v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_35

    :catch_39
    move-exception v1

    goto :goto_13

    :catch_3b
    move-exception v1

    goto :goto_d
.end method

.method private static aA()Lcom/bun/supplier/IdSupplier;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g:Lcom/bun/supplier/IdSupplier;

    return-object v0
.end method

.method private aB()Z
    .registers 5

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.USAGE_ACCESS_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private aC()V
    .registers 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_15

    const-string v1, "android.intent.action.INSTALL_FAILURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_15
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->p:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$DownloadCompleteReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->q:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$AppInstallReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private aD()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    const-string v0, "Failed to retrieve PackageInfo#versionName."

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static ah()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static ai()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public static aj()I
    .registers 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static ak()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static al()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static am()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static as()I
    .registers 3

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    const v2, 0xffffff

    if-le v0, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    sget-object v2, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method static synthetic ax()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->F:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    return-object v0
.end method

.method static synthetic ay()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->u:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic az()I
    .registers 1

    sget v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d:I

    return v0
.end method

.method static synthetic b(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->K:J

    return-wide v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v2, "wifi_id_list"

    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wifi_mac_list"

    invoke-interface {v5, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "101"

    const-string v4, "wifi_list"

    move-object v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static b()Z
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->is_gdpr_region()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static c(Landroid/content/Context;)I
    .registers 9

    const-wide/16 v6, 0x400

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    int-to-long v2, v1

    :try_start_13
    const-class v1, Landroid/content/pm/ApplicationInfo;

    const-string v4, "FLAG_LARGE_HEAP"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(II)Z

    move-result v1

    if-eqz v1, :cond_52

    new-instance v1, Lcom/sigmob/sdk/base/common/utils/x;

    const-string v4, "getLargeMemoryClass"

    invoke-direct {v1, v0, v4}, Lcom/sigmob/sdk/base/common/utils/x;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/x;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_3c} :catch_4c

    move-result v0

    int-to-long v0, v0

    :goto_3e
    const-wide/32 v2, 0x1e00000

    const-wide/16 v4, 0x8

    div-long/2addr v0, v4

    mul-long/2addr v0, v6

    mul-long/2addr v0, v6

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_d

    :catch_4c
    move-exception v0

    const-string v0, "Unable to reflectively determine large heap size."

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    :cond_52
    move-wide v0, v2

    goto :goto_3e
.end method

.method public static c()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->aA()Lcom/bun/supplier/IdSupplier;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->aA()Lcom/bun/supplier/IdSupplier;

    move-result-object v1

    invoke-interface {v1}, Lcom/bun/supplier/IdSupplier;->getAAID()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    :catch_11
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAAID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_7
.end method

.method static synthetic c(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->A:Ljava/util/List;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->aA()Lcom/bun/supplier/IdSupplier;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->aA()Lcom/bun/supplier/IdSupplier;

    move-result-object v1

    invoke-interface {v1}, Lcom/bun/supplier/IdSupplier;->getOAID()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    :catch_11
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOAID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_7
.end method

.method static synthetic d(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->y:Ljava/util/List;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.support.v4.content.ContextCompat"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_3b

    move-result-object v0

    :goto_7
    :try_start_7
    const-string v1, "androidx.core.content.ContextCompat"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_39

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_31

    :try_start_f
    new-instance v1, Lcom/sigmob/sdk/base/common/utils/x;

    const-string v2, "requestPermissions"

    invoke-direct {v1, v0, v2}, Lcom/sigmob/sdk/base/common/utils/x;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, [Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/sigmob/sdk/base/common/utils/x;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/base/common/utils/x;

    const-class v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sigmob/sdk/base/common/utils/x;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/base/common/utils/x;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/x;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_31} :catch_32

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception v0

    const-string v1, "requestPermissions error"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    :catch_39
    move-exception v1

    goto :goto_d

    :catch_3b
    move-exception v1

    goto :goto_7
.end method

.method static synthetic e(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->v:I

    return v0
.end method

.method public static e()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->aA()Lcom/bun/supplier/IdSupplier;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->aA()Lcom/bun/supplier/IdSupplier;

    move-result-object v1

    invoke-interface {v1}, Lcom/bun/supplier/IdSupplier;->getVAID()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    :catch_11
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVAID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_7
.end method

.method static synthetic f(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->w:I

    return v0
.end method

.method static synthetic g(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)Lcom/sigmob/sdk/base/common/utils/y;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->x:Lcom/sigmob/sdk/base/common/utils/y;

    return-object v0
.end method

.method private h(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method private static i(Ljava/lang/String;)Z
    .registers 6

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

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1b} :catch_52
    .catchall {:try_start_1 .. :try_end_1b} :catchall_59

    move-result-object v1

    :try_start_1c
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4b

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_3b} :catch_65
    .catchall {:try_start_1c .. :try_end_3b} :catchall_63

    move-result v0

    const/16 v2, 0x73

    if-eq v0, v2, :cond_44

    const/16 v2, 0x78

    if-ne v0, v2, :cond_4b

    :cond_44
    const/4 v0, 0x1

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_4a
    :goto_4a
    return v0

    :cond_4b
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_50
    :goto_50
    const/4 v0, 0x0

    goto :goto_4a

    :catch_52
    move-exception v1

    :goto_53
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_50

    :catchall_59
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_5d
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_62
    throw v0

    :catchall_63
    move-exception v0

    goto :goto_5d

    :catch_65
    move-exception v0

    move-object v0, v1

    goto :goto_53
.end method

.method public static j()Z
    .registers 1

    sget-boolean v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->B:Z

    return v0
.end method

.method public static l()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static m()I
    .registers 1

    sget v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->D:I

    return v0
.end method

.method public static n()I
    .registers 1

    sget v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->C:I

    return v0
.end method

.method public static o()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public static x()J
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->h:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    const-string v3, "wlan0"

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v5

    if-nez v5, :cond_39

    move-object v0, v1

    goto :goto_c

    :cond_39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v5

    move v0, v2

    :goto_40
    if-ge v0, v7, :cond_5a

    aget-byte v8, v5, v0

    const-string v9, "%02X:"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_5a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_69

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->h:Ljava/lang/String;
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_6f} :catch_70

    goto :goto_1b

    :catch_70
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_74
    move-object v0, v1

    goto :goto_c
.end method

.method public B()Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_13

    move-object v0, v1

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1a} :catch_1c

    move-result-object v0

    goto :goto_12

    :catch_1c
    move-exception v0

    move-object v0, v1

    goto :goto_12
.end method

.method public C()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_22

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_19

    move-object v0, v1

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_22
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->J:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3e
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_50} :catch_52

    move-result-object v0

    goto :goto_18

    :catch_52
    move-exception v0

    move-object v0, v1

    goto :goto_18
.end method

.method public D()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_33

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSDKconfig()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfig;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_34

    :cond_33
    :goto_33
    return-void

    :cond_34
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_33

    :catch_4f
    move-exception v0

    const-string v1, "scanWifiList "

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_33
.end method

.method public F()Landroid/location/LocationManager;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public G()Landroid/location/Location;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_1c

    move-result v0

    if-eqz v0, :cond_16

    :try_start_a
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->F()Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->m:Landroid/location/Location;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_16} :catch_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_1c

    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->m:Landroid/location/Location;

    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    const/4 v0, 0x0

    goto :goto_18

    :catch_1c
    move-exception v0

    goto :goto_16
.end method

.method public I()Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    if-eqz v0, :cond_1e

    :try_start_4
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1d

    move-result v0

    goto :goto_11

    :catch_1d
    move-exception v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public K()Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    const-string v0, "gsm.version.baseband"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "1.0.0.0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_13} :catch_c5

    move-result v0

    if-eqz v0, :cond_d0

    :cond_16
    move v0, v1

    :goto_17
    :try_start_17
    const-string v3, "ro.build.flavor"

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_81

    add-int/lit8 v0, v0, 0x1

    :cond_25
    :goto_25
    const-string v3, "ro.product.board"

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_94

    add-int/lit8 v0, v0, 0x1

    :cond_33
    :goto_33
    const-string v3, "ro.board.platform"

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    :cond_47
    add-int/lit8 v0, v0, 0x1

    :cond_49
    const-string v3, "ro.hardware"

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a7

    add-int/lit8 v0, v0, 0x1

    :cond_53
    :goto_53
    sget-object v4, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_57
    if-ge v3, v5, :cond_c7

    aget-object v6, v4, v3

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find emulator "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0xa

    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    :cond_81
    const-string v4, "vbox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_91

    const-string v4, "sdk_gphone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_91
    add-int/lit8 v0, v0, 0xa

    goto :goto_25

    :cond_94
    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a4

    const-string v4, "goldfish"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_a4
    add-int/lit8 v0, v0, 0xa

    goto :goto_33

    :cond_a7
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ttvm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b6

    add-int/lit8 v0, v0, 0xa

    goto :goto_53

    :cond_b6
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_bf} :catch_ce

    move-result v3

    if-eqz v3, :cond_53

    add-int/lit8 v0, v0, 0xa

    goto :goto_53

    :catch_c5
    move-exception v0

    move v0, v2

    :cond_c7
    :goto_c7
    const/4 v3, 0x3

    if-le v0, v3, :cond_cc

    move v0, v1

    :goto_cb
    return v0

    :cond_cc
    move v0, v2

    goto :goto_cb

    :catch_ce
    move-exception v3

    goto :goto_c7

    :cond_d0
    move v0, v2

    goto/16 :goto_17
.end method

.method public L()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E:Ljava/lang/String;

    return-object v0
.end method

.method public M()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->enableAntiFraud()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    :cond_21
    :goto_21
    return-void

    :cond_22
    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->enableAntiFraud()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "start anti spam motion"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->y:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getMotionCount()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->w:I

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getMotionInterval()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->v:I

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getMotionQueueMax()I

    move-result v0

    sput v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d:I

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string v0, "\u5149\u7ebf\u4f20\u611f\u5668 "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string v0, "\u52a0\u901f\u4f20\u611f\u5668 "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string v0, "\u78c1\u573a\u4f20\u611f\u5668 "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string v0, "\u9640\u87ba\u4eea "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string v0, "\u91cd\u529b\u4f20\u611f\u5668 "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string v0, "\u7ebf\u6027\u52a0\u901f\u5668 "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$3;-><init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)V

    sput-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->u:Landroid/os/Handler;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/ac;->c:Lcom/sigmob/sdk/base/common/ac;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/ac;->a()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_e9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e9} :catch_eb

    goto/16 :goto_21

    :catch_eb
    move-exception v0

    goto/16 :goto_21
.end method

.method public P()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_20

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :cond_20
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public Q()Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public R()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->Q()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "pad"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "phone"

    goto :goto_8
.end method

.method public S()Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_f

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->UNKNOWN:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->MOBILE:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    goto :goto_e

    :pswitch_19
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->MOBILE_2G:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    goto :goto_e

    :pswitch_1c
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->MOBILE_3G:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    goto :goto_e

    :pswitch_1f
    sget-object v0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->MOBILE_4G:Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    goto :goto_e

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_19
        :pswitch_19
        :pswitch_1c
        :pswitch_19
        :pswitch_1c
        :pswitch_1c
        :pswitch_19
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public T()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public U()F
    .registers 4

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1f

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v2, "batterymanager"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    if-nez v0, :cond_15

    move v0, v1

    :goto_14
    return v0

    :cond_15
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    goto :goto_14

    :cond_1f
    move v0, v1

    goto :goto_14
.end method

.method public V()Z
    .registers 4

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_13

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v2, "batterymanager"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    if-nez v0, :cond_14

    :cond_13
    :goto_13
    return v1

    :cond_14
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_20

    const/4 v0, 0x1

    :goto_1e
    move v1, v0

    goto :goto_13

    :cond_20
    move v0, v1

    goto :goto_1e
.end method

.method public W()I
    .registers 5

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2b

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v2, "batterymanager"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    if-nez v0, :cond_15

    move v0, v1

    :goto_14
    return v0

    :cond_15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2d

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    :goto_20
    packed-switch v0, :pswitch_data_30

    move v0, v1

    goto :goto_14

    :pswitch_25
    const/4 v0, 0x3

    goto :goto_14

    :pswitch_27
    const/4 v0, 0x2

    goto :goto_14

    :pswitch_29
    const/4 v0, 0x1

    goto :goto_14

    :cond_2b
    move v0, v1

    goto :goto_14

    :cond_2d
    move v0, v1

    goto :goto_20

    nop

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_27
        :pswitch_29
        :pswitch_29
        :pswitch_25
    .end packed-switch
.end method

.method public X()Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, -0x1

    :try_start_1
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->J:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1c

    move-result v0

    :cond_17
    :goto_17
    # invokes: Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->fromAndroidNetworkType(I)Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;->access$2100(I)Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    move-result-object v0

    return-object v0

    :catch_1c
    move-exception v1

    goto :goto_17
.end method

.method public Y()Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_f

    move-object v0, v1

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_34

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_3c

    move-result v3

    if-eqz v3, :cond_3e

    :try_start_29
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_3c

    move-result-object v0

    goto :goto_e

    :catch_2e
    move-exception v2

    :try_start_2f
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_34
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_3c

    move-result-object v0

    :goto_38
    if-nez v0, :cond_e

    :cond_3a
    :goto_3a
    move-object v0, v1

    goto :goto_e

    :catch_3c
    move-exception v0

    goto :goto_3a

    :cond_3e
    move-object v0, v2

    goto :goto_38
.end method

.method public Z()F
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_e

    int-to-float v0, v0

    :goto_d
    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2f} :catch_33

    move-result-object v0

    if-eqz v0, :cond_34

    :goto_32
    return-object v0

    :catch_33
    move-exception v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v1, "string"

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1e
    return-object p2
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_34

    const-string v1, "string"

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStringResources resid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_34
    :goto_34
    return-object p2

    :cond_35
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_34
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->v:I

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->m:Landroid/location/Location;

    return-void
.end method

.method public a(Landroid/view/WindowInsets;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->s:I

    :cond_14
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/common/utils/a;Lcom/sigmob/sdk/base/common/utils/a;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIdChanged() called with: oldId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], newId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public aa()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ab()Ljava/util/Locale;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_c
.end method

.method public ac()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-object v0

    :goto_1a
    return-object v0

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public ad()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds",
            "MissingPermission"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-object v0

    :goto_1a
    return-object v0

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public ae()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_c
.end method

.method public af()Ljava/lang/String;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1d

    :try_start_6
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_12

    :cond_1d
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ae()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public ag()Landroid/util/DisplayMetrics;
    .registers 8

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1d

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :goto_1c
    return-object v1

    :cond_1d
    :try_start_1d
    const-string v2, "android.view.Display"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getRealMetrics"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/util/DisplayMetrics;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3a} :catch_3b

    goto :goto_1c

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method public an()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/b;->b(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public ao()I
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ag()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/b;->a(FLandroid/content/Context;)I

    move-result v0

    goto :goto_5
.end method

.method public ap()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/b;->c(Landroid/content/Context;)I

    move-result v0

    goto :goto_5
.end method

.method public aq()I
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ag()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/b;->a(FLandroid/content/Context;)I

    move-result v0

    goto :goto_5
.end method

.method public ar()Landroid/util/DisplayMetrics;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public at()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->aD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public au()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public av()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->f:Lcom/sigmob/sdk/base/common/utils/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/i;->a()Lcom/sigmob/sdk/base/common/utils/a;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/utils/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public aw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->H:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    new-instance v2, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$2;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$2;-><init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)V

    invoke-static {p1, v1, v2}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/supplier/IIdentifierListener;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a} :catch_26

    move-result v0

    const v1, 0xf63e4

    if-ne v0, v1, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    const v1, 0xf63e5

    if-eq v0, v1, :cond_10

    const v1, 0xf63e3

    if-eq v0, v1, :cond_10

    const v1, 0xf63e6

    if-eq v0, v1, :cond_10

    const v1, 0xf63e7

    if-ne v0, v1, :cond_10

    goto :goto_10

    :catch_26
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init MdidHepler error\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->w(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public b(I)V
    .registers 8

    const/4 v1, 0x0

    sput p1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->D:I

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v2, "age_restricted"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "401"

    sget-object v3, Lcom/sigmob/sdk/base/common/b/b;->K:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v4

    move-object v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_23
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    :cond_16
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->o:Ljava/lang/String;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->v()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/aa;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "uid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_30} :catch_31

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_30
.end method

.method public c(I)V
    .registers 8

    const/4 v1, 0x0

    sput p1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->C:I

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v2, "age"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "401"

    sget-object v3, Lcom/sigmob/sdk/base/common/b/b;->K:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v4

    move-object v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_23
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    sput-object p1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->z:Ljava/lang/String;

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    if-eqz v0, :cond_26

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v2, "user_consent"

    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sub_category"

    const-string v3, "consent"

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "401"

    sget-object v3, Lcom/sigmob/sdk/base/common/b/b;->J:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v4

    move-object v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_26
    return-void
.end method

.method public d(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "getSimState"

    invoke-virtual {p0, v2, p1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v0, :cond_17

    if-eqz v2, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public e(I)I
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v2, "telephony_subscription_service"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const-string v4, "getSubId"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    check-cast v1, [I

    const/4 v4, 0x0

    aget v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    check-cast v2, [I

    check-cast v2, [I

    const/4 v1, 0x0

    aget v1, v2, v1
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_64} :catch_65

    :goto_64
    return v1

    :catch_65
    move-exception v1

    const-string v2, "getSubidBySlotId: "

    invoke-static {v2, v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6b
    const/4 v1, -0x1

    goto :goto_64
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    check-cast v0, Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_24} :catch_25

    :goto_24
    return-object v0

    :catch_25
    move-exception v0

    move-object v0, v1

    goto :goto_24

    :cond_28
    move-object v0, v1

    goto :goto_24
.end method

.method public f()Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_f

    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    move-object v0, v1

    goto :goto_e

    :pswitch_1c
    const-string v0, "0"

    goto :goto_e

    :pswitch_1f
    const-string v0, "180"

    goto :goto_e

    :pswitch_22
    const-string v0, "270"

    goto :goto_e

    :pswitch_25
    const-string v0, "90"

    goto :goto_e

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_25
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method public f(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_15
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->d(I)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v0, "getLine1Number"

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->e(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_27
    :goto_27
    return-object v0

    :cond_28
    const-string v1, "READ_PHONE_STATE permission has NOT been granted to getSimPhonenumber()."

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public f(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->t:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/SDKConfig;->filterAntiEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Lcom/sigmob/sdk/base/common/utils/z;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/common/utils/z;-><init>()V

    iput-object p1, v1, Lcom/sigmob/sdk/base/common/utils/z;->b:Ljava/lang/String;

    sget-object v2, Lcom/sigmob/sdk/base/common/ac;->a:Lcom/sigmob/sdk/base/common/ac;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/ac;->a()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_29
    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->n:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_f

    move-object v0, v1

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_34

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_47

    move-result v3

    if-eqz v3, :cond_49

    :try_start_29
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_47

    move-result-object v0

    goto :goto_e

    :catch_2e
    move-exception v2

    :try_start_2f
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_34
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_42

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    :goto_3e
    if-nez v0, :cond_e

    :cond_40
    :goto_40
    move-object v0, v1

    goto :goto_e

    :cond_42
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_45} :catch_47

    move-result-object v0

    goto :goto_3e

    :catch_47
    move-exception v0

    goto :goto_40

    :cond_49
    move-object v0, v2

    goto :goto_3e
.end method

.method g(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->o:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->s:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v2, "storage"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_47

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_19

    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getPath"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_41} :catch_42

    :goto_41
    return-object v0

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    :cond_47
    :try_start_47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getVolumeList"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "android.os.storage.StorageVolume"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getPath"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "isRemovable"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_76} :catch_a3

    move-result v5

    :goto_77
    if-ge v1, v5, :cond_a4

    :try_start_79
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v7, v0, Ljava/lang/Boolean;

    if-eqz v7, :cond_9f

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9f

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_9f

    check-cast v0, Ljava/lang/String;
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_9d} :catch_9e

    goto :goto_41

    :catch_9e
    move-exception v0

    :cond_9f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_77

    :catch_a3
    move-exception v0

    :cond_a4
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 7

    const-string v0, "name :%s, accuracy %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    :goto_9
    :pswitch_9
    return-void

    :pswitch_a
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->x:Lcom/sigmob/sdk/base/common/utils/y;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, v1, Lcom/sigmob/sdk/base/common/utils/y;->d:[F

    goto :goto_9

    :pswitch_17
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->x:Lcom/sigmob/sdk/base/common/utils/y;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, v1, Lcom/sigmob/sdk/base/common/utils/y;->a:[F

    goto :goto_9

    :pswitch_24
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->x:Lcom/sigmob/sdk/base/common/utils/y;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, v1, Lcom/sigmob/sdk/base/common/utils/y;->b:[F

    goto :goto_9

    :pswitch_31
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->x:Lcom/sigmob/sdk/base/common/utils/y;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, v1, Lcom/sigmob/sdk/base/common/utils/y;->e:[F

    goto :goto_9

    :pswitch_3e
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->x:Lcom/sigmob/sdk/base/common/utils/y;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, v1, Lcom/sigmob/sdk/base/common/utils/y;->c:[F

    goto :goto_9

    :pswitch_4b
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->x:Lcom/sigmob/sdk/base/common/utils/y;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, v1, Lcom/sigmob/sdk/base/common/utils/y;->f:[F

    goto :goto_9

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_a
        :pswitch_3e
        :pswitch_9
        :pswitch_24
        :pswitch_31
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_17
        :pswitch_4b
    .end packed-switch
.end method

.method public p()J
    .registers 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_25

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-eqz v0, :cond_25

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-wide v0

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :cond_25
    const-wide/16 v0, 0x0

    goto :goto_1c
.end method

.method public q()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1f

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_24
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public r()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public s()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public t()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public u()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :cond_19
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public v()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    return-object v0
.end method

.method w()Landroid/app/DownloadManager;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    return-object v0
.end method

.method public y()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final z()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->I:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object v0

    :goto_d
    return-object v0

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_d
.end method
