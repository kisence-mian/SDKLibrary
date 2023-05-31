.class final Lcom/bytedance/embed_device_register/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embed_device_register/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/bytedance/embed_device_register/e;


# instance fields
.field private c:Lcom/bytedance/embed_device_register/e$a;

.field private d:Lcom/bytedance/embed_device_register/g$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bytedance/embed_device_register/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/embed_device_register/e;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 9

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/embed_device_register/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 64
    new-instance v3, Lcom/bytedance/embed_device_register/h;

    invoke-direct {v3}, Lcom/bytedance/embed_device_register/h;-><init>()V

    .line 65
    new-instance v0, Lcom/bytedance/embed_device_register/e$1;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/embed_device_register/e$1;-><init>(Lcom/bytedance/embed_device_register/e;Landroid/content/SharedPreferences;Lcom/bytedance/embed_device_register/h;Landroid/content/Context;Landroid/content/Context;)V

    .line 115
    const-string v1, "TrackerDr-query-hms"

    invoke-static {v1, v0}, Lcom/bytedance/embed_device_register/d;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 117
    :cond_25
    return-void
.end method

.method static synthetic a(Lcom/bytedance/embed_device_register/e;Landroid/content/Context;)Lcom/bytedance/embed_device_register/e$a$a;
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/bytedance/embed_device_register/e;->c(Landroid/content/Context;)Lcom/bytedance/embed_device_register/e$a$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/embed_device_register/e;)Lcom/bytedance/embed_device_register/e$a;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e;->c:Lcom/bytedance/embed_device_register/e$a;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/embed_device_register/e;Lcom/bytedance/embed_device_register/e$a;)Lcom/bytedance/embed_device_register/e$a;
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bytedance/embed_device_register/e;->c:Lcom/bytedance/embed_device_register/e$a;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 5

    .prologue
    .line 46
    const-string v0, "TrackerDr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/embed_device_register/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/embed_device_register/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {p0, p1}, Lcom/bytedance/embed_device_register/e;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/e;

    .line 48
    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 180
    const-string v0, "com.huawei.hwid"

    invoke-static {p0, v0}, Lcom/bytedance/embed_device_register/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;)J
    .registers 6

    .prologue
    .line 120
    const/4 v0, -0x1

    .line 122
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.huawei.hwid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_10

    .line 124
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_12

    .line 129
    :cond_10
    :goto_10
    int-to-long v0, v0

    return-wide v0

    .line 126
    :catch_12
    move-exception v1

    .line 127
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_10
.end method

.method static synthetic b(Lcom/bytedance/embed_device_register/e;Landroid/content/Context;)J
    .registers 4

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/bytedance/embed_device_register/e;->b(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static b(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/bytedance/embed_device_register/e;
    .registers 4

    .prologue
    .line 51
    sget-object v0, Lcom/bytedance/embed_device_register/e;->b:Lcom/bytedance/embed_device_register/e;

    if-nez v0, :cond_13

    .line 52
    const-class v1, Lcom/bytedance/embed_device_register/e;

    monitor-enter v1

    .line 53
    :try_start_7
    sget-object v0, Lcom/bytedance/embed_device_register/e;->b:Lcom/bytedance/embed_device_register/e;

    if-nez v0, :cond_12

    .line 54
    new-instance v0, Lcom/bytedance/embed_device_register/e;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/embed_device_register/e;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/bytedance/embed_device_register/e;->b:Lcom/bytedance/embed_device_register/e;

    .line 56
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 58
    :cond_13
    sget-object v0, Lcom/bytedance/embed_device_register/e;->b:Lcom/bytedance/embed_device_register/e;

    return-object v0

    .line 56
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic b(Lcom/bytedance/embed_device_register/e;)Lcom/bytedance/embed_device_register/g$b;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e;->d:Lcom/bytedance/embed_device_register/g$b;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/bytedance/embed_device_register/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(Landroid/content/Context;)Lcom/bytedance/embed_device_register/e$a$a;
    .registers 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 141
    new-instance v3, Lcom/bytedance/embed_device_register/e$a$a;

    invoke-direct {v3}, Lcom/bytedance/embed_device_register/e$a$a;-><init>()V

    .line 143
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 144
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    const-string v1, "com.huawei.hwid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    new-instance v1, Lcom/bytedance/embed_device_register/e$2;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/embed_device_register/e$2;-><init>(Lcom/bytedance/embed_device_register/e;Lcom/bytedance/embed_device_register/e$a$a;JLjava/util/concurrent/CountDownLatch;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 171
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_28} :catch_2e

    .line 176
    :goto_28
    new-instance v0, Lcom/bytedance/embed_device_register/e$a$a;

    invoke-direct {v0, v3}, Lcom/bytedance/embed_device_register/e$a$a;-><init>(Lcom/bytedance/embed_device_register/e$a$a;)V

    return-object v0

    .line 172
    :catch_2e
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/embed_device_register/e$a$a;->d(Ljava/lang/String;)Lcom/bytedance/embed_device_register/e$a$a;

    goto :goto_28
.end method


# virtual methods
.method a()Lcom/bytedance/embed_device_register/e$a;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bytedance/embed_device_register/e;->c:Lcom/bytedance/embed_device_register/e$a;

    return-object v0
.end method

.method a(Lcom/bytedance/embed_device_register/g$b;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/bytedance/embed_device_register/e;->d:Lcom/bytedance/embed_device_register/g$b;

    .line 134
    return-void
.end method
