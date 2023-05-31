.class final Lcom/bytedance/a/f;
.super Lcom/bytedance/a/g$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/a/f$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static volatile d:Lcom/bytedance/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bytedance/a/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/a/f;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 5

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/bytedance/a/g$b;-><init>()V

    .line 61
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/a/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/bytedance/a/f$1;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/bytedance/a/f$1;-><init>(Lcom/bytedance/a/f;Landroid/content/SharedPreferences;Landroid/content/Context;Landroid/content/Context;)V

    .line 111
    const-string v0, "TrackerDr-query-hms"

    invoke-static {v0, v1}, Lcom/bytedance/a/e;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 113
    :cond_1d
    return-void
.end method

.method static synthetic a(Lcom/bytedance/a/f;Landroid/content/Context;)Lcom/bytedance/a/f$a$a;
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/bytedance/a/f;->c(Landroid/content/Context;)Lcom/bytedance/a/f$a$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/bytedance/a/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 5

    .prologue
    .line 45
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/a/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p0, p1}, Lcom/bytedance/a/f;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/a/f;

    .line 47
    return-void
.end method

.method private b(Landroid/content/Context;)J
    .registers 6

    .prologue
    .line 116
    const/4 v0, -0x1

    .line 118
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.huawei.hwid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_10

    .line 120
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_12

    .line 125
    :cond_10
    :goto_10
    int-to-long v0, v0

    return-wide v0

    .line 122
    :catch_12
    move-exception v1

    .line 123
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_10
.end method

.method static synthetic b(Lcom/bytedance/a/f;Landroid/content/Context;)J
    .registers 4

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/bytedance/a/f;->b(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/a/f;
    .registers 4

    .prologue
    .line 50
    sget-object v0, Lcom/bytedance/a/f;->d:Lcom/bytedance/a/f;

    if-nez v0, :cond_13

    .line 51
    const-class v1, Lcom/bytedance/a/f;

    monitor-enter v1

    .line 52
    :try_start_7
    sget-object v0, Lcom/bytedance/a/f;->d:Lcom/bytedance/a/f;

    if-nez v0, :cond_12

    .line 53
    new-instance v0, Lcom/bytedance/a/f;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/a/f;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/bytedance/a/f;->d:Lcom/bytedance/a/f;

    .line 55
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 57
    :cond_13
    sget-object v0, Lcom/bytedance/a/f;->d:Lcom/bytedance/a/f;

    return-object v0

    .line 55
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private c(Landroid/content/Context;)Lcom/bytedance/a/f$a$a;
    .registers 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 134
    new-instance v3, Lcom/bytedance/a/f$a$a;

    invoke-direct {v3}, Lcom/bytedance/a/f$a$a;-><init>()V

    .line 136
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 137
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    const-string v1, "com.huawei.hwid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    new-instance v1, Lcom/bytedance/a/f$2;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/a/f$2;-><init>(Lcom/bytedance/a/f;Lcom/bytedance/a/f$a$a;JLjava/util/concurrent/CountDownLatch;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 164
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_28} :catch_2e

    .line 169
    :goto_28
    new-instance v0, Lcom/bytedance/a/f$a$a;

    invoke-direct {v0, v3}, Lcom/bytedance/a/f$a$a;-><init>(Lcom/bytedance/a/f$a$a;)V

    return-object v0

    .line 165
    :catch_2e
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/a/f$a$a;->d(Ljava/lang/String;)Lcom/bytedance/a/f$a$a;

    goto :goto_28
.end method


# virtual methods
.method a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 130
    const-string v0, "com.huawei.hwid"

    invoke-static {p1, v0}, Lcom/bytedance/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
