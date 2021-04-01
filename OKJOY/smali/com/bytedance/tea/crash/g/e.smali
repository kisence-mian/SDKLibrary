.class public final Lcom/bytedance/tea/crash/g/e;
.super Ljava/lang/Object;
.source "Filters.java"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    .line 27
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "HeapTaskDaemon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "ThreadPlus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "ApiDispatcher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "ApiLocalDispatcher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "AsyncLoader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "AsyncTask"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "Binder"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "PackageProcessor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "SettingsObserver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "WifiManager"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "JavaBridge"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "Compiler"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "Signal Catcher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "GC"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "ReferenceQueueDaemon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "FinalizerDaemon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "FinalizerWatchdogDaemon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "CookieSyncManager"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "RefQueueWorker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "CleanupReference"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "VideoManager"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "DBHelper-AsyncOp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "InstalledAppTracker2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "AppData-AsyncOp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "IdleConnectionMonitor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "LogReaper"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "ActionReaper"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "Okio Watchdog"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "CheckWaitingQueue"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "NPTH-CrashTimer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "NPTH-JavaCallback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "NPTH-LocalParser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    const-string v1, "ANR_FILE_MODIFY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public static a()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/bytedance/tea/crash/g/e;->a:Ljava/util/Set;

    return-object v0
.end method
