.class public Landroidx/test/runner/MonitoringInstrumentation;
.super Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;
.source "MonitoringInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;,
        Landroidx/test/runner/MonitoringInstrumentation$StubResultCallable;
    }
.end annotation


# static fields
.field private static final MILLIS_TO_POLL_FOR_ACTIVITY_STOP:J

.field private static final MILLIS_TO_WAIT_FOR_ACTIVITY_TO_STOP:J

.field private static final START_ACTIVITY_TIMEOUT_SECONDS:I = 0x2d

.field private static final TAG:Ljava/lang/String; = "MonitoringInstr"


# instance fields
.field private anActivityHasBeenLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private applicationMonitor:Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private volatile finished:Z

.field private handlerForMainLooper:Landroid/os/Handler;

.field private idleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private intentMonitor:Landroidx/test/internal/runner/intent/IntentMonitorImpl;

.field private volatile interceptingActivityFactory:Landroidx/test/runner/intercepting/InterceptingActivityFactory;

.field private isDexmakerClassLoaderInitialized:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isJsBridgeLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile isOriginalInstr:Ljava/lang/Boolean;

.field private jsBridgeClassName:Ljava/lang/String;

.field private lastIdleTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

.field private standardHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 103
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/test/runner/MonitoringInstrumentation;->MILLIS_TO_WAIT_FOR_ACTIVITY_TO_STOP:J

    .line 104
    const-wide/16 v2, 0x28

    div-long/2addr v0, v2

    sput-wide v0, Landroidx/test/runner/MonitoringInstrumentation;->MILLIS_TO_POLL_FOR_ACTIVITY_STOP:J

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 99
    invoke-direct {p0}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;-><init>()V

    .line 107
    new-instance v0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    invoke-direct {v0}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    .line 108
    new-instance v0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;

    invoke-direct {v0}, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->applicationMonitor:Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;

    .line 110
    new-instance v0, Landroidx/test/internal/runner/intent/IntentMonitorImpl;

    invoke-direct {v0}, Landroidx/test/internal/runner/intent/IntentMonitorImpl;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->intentMonitor:Landroidx/test/internal/runner/intent/IntentMonitorImpl;

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->anActivityHasBeenLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lastIdleTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->isJsBridgeLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->isOriginalInstr:Ljava/lang/Boolean;

    .line 123
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->isDexmakerClassLoaderInitialized:Ljava/lang/ThreadLocal;

    .line 125
    new-instance v0, Landroidx/test/runner/MonitoringInstrumentation$1;

    invoke-direct {v0, p0}, Landroidx/test/runner/MonitoringInstrumentation$1;-><init>(Landroidx/test/runner/MonitoringInstrumentation;)V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 134
    iput-boolean v1, p0, Landroidx/test/runner/MonitoringInstrumentation;->finished:Z

    return-void
.end method

.method static synthetic access$000(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2
    .param p0, "x0"    # Landroidx/test/runner/MonitoringInstrumentation;

    .line 99
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lastIdleTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2
    .param p0, "x0"    # Landroidx/test/runner/MonitoringInstrumentation;

    .line 99
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->standardHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic access$201(Landroidx/test/runner/MonitoringInstrumentation;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 3
    .param p0, "x0"    # Landroidx/test/runner/MonitoringInstrumentation;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 99
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Landroidx/test/runner/MonitoringInstrumentation;

    .line 99
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->isJsBridgeLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/test/runner/MonitoringInstrumentation;)Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;
    .registers 2
    .param p0, "x0"    # Landroidx/test/runner/MonitoringInstrumentation;

    .line 99
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    return-object v0
.end method

.method private getTargetProcessValues()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 952
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_b

    .line 953
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 955
    :cond_b
    const/4 v0, 0x0

    .line 957
    .local v0, "tpVal":Ljava/lang/String;
    nop

    .line 958
    :try_start_d
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 959
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 960
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    move-object v0, v1

    .line 962
    if-nez v0, :cond_26

    .line 963
    const-string v1, ""

    move-object v0, v1

    .line 965
    :cond_26
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_2a} :catch_59

    move-object v0, v1

    .line 969
    nop

    .line 970
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_37

    .line 971
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 974
    :cond_37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 975
    .local v1, "tps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, -0x1

    const-string v4, ","

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_44
    if-ge v3, v4, :cond_58

    aget-object v5, v2, v3

    .line 976
    .local v5, "tp":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 977
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_55

    .line 978
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    .end local v5    # "tp":Ljava/lang/String;
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 981
    :cond_58
    return-object v1

    .line 966
    .end local v1    # "tps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_59
    move-exception v1

    .line 967
    .local v1, "unpossible":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot locate ourselves: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MonitoringInstr"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 968
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ae

    :goto_ad
    throw v2

    :goto_ae
    goto :goto_ad
.end method

.method private isHostingProcess(Ljava/lang/String;Landroidx/test/internal/util/ProcSummary;)Z
    .registers 8
    .param p1, "wantName"    # Ljava/lang/String;
    .param p2, "ps"    # Landroidx/test/internal/util/ProcSummary;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wantName",
            "ps"
        }
    .end annotation

    .line 903
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 904
    .local v0, "wantLen":I
    iget-object v1, p2, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 905
    .local v1, "cmdLen":I
    if-ne v0, v1, :cond_13

    .line 907
    iget-object v2, p2, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 908
    :cond_13
    const/4 v2, 0x0

    if-ge v0, v1, :cond_17

    .line 910
    return v2

    .line 924
    :cond_17
    iget-object v3, p2, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 925
    iget-object v3, p2, Landroidx/test/internal/util/ProcSummary;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 926
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0xa5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Use smaller processNames in AndroidManifest.xml. Long names are truncated. This process\'s cmdline is a prefix of the processName and suffix of comm - assuming: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MonitoringInstr"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v2, 0x1

    return v2

    .line 937
    :cond_62
    return v2
.end method

.method private isOriginalInstrumentationProcess()Z
    .registers 3

    .line 943
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->isOriginalInstr:Ljava/lang/Boolean;

    .line 944
    .local v0, "isOriginal":Ljava/lang/Boolean;
    if-nez v0, :cond_e

    .line 945
    invoke-direct {p0}, Landroidx/test/runner/MonitoringInstrumentation;->isOriginalUncached()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 946
    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->isOriginalInstr:Ljava/lang/Boolean;

    .line 948
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private isOriginalUncached()Z
    .registers 8

    .line 985
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_8

    .line 986
    return v1

    .line 988
    :cond_8
    invoke-direct {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getTargetProcessValues()Ljava/util/List;

    move-result-object v0

    .line 989
    .local v0, "targetProcesses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 991
    return v1

    .line 993
    :cond_13
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 994
    .local v3, "isWildcard":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_27

    if-nez v3, :cond_27

    .line 997
    return v1

    .line 1000
    :cond_27
    const/4 v1, 0x0

    .line 1003
    .local v1, "me":Landroidx/test/internal/util/ProcSummary;
    :try_start_28
    const-string v4, "self"

    invoke-static {v4}, Landroidx/test/internal/util/ProcSummary;->summarize(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary;

    move-result-object v4
    :try_end_2e
    .catch Landroidx/test/internal/util/ProcSummary$SummaryException; {:try_start_28 .. :try_end_2e} :catch_56

    move-object v1, v4

    .line 1007
    nop

    .line 1009
    if-eqz v3, :cond_4b

    .line 1011
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1012
    .local v2, "appDefProcessName":Ljava/lang/String;
    if-nez v2, :cond_46

    .line 1013
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1015
    :cond_46
    invoke-direct {p0, v2, v1}, Landroidx/test/runner/MonitoringInstrumentation;->isHostingProcess(Ljava/lang/String;Landroidx/test/internal/util/ProcSummary;)Z

    move-result v4

    return v4

    .line 1018
    .end local v2    # "appDefProcessName":Ljava/lang/String;
    :cond_4b
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Landroidx/test/runner/MonitoringInstrumentation;->isHostingProcess(Ljava/lang/String;Landroidx/test/internal/util/ProcSummary;)Z

    move-result v2

    return v2

    .line 1004
    :catch_56
    move-exception v4

    .line 1005
    .local v4, "se":Landroidx/test/internal/util/ProcSummary$SummaryException;
    const-string v5, "MonitoringInstr"

    const-string v6, "Could not list apps for this user, running in sandbox? Assuming primary"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1006
    return v2
.end method

.method private logUncaughtExceptions()V
    .registers 3

    .line 263
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->standardHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 264
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Landroidx/test/runner/MonitoringInstrumentation$3;

    invoke-direct {v1, p0}, Landroidx/test/runner/MonitoringInstrumentation$3;-><init>(Landroidx/test/runner/MonitoringInstrumentation;)V

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 292
    return-void
.end method

.method private setupDexmakerClassloader()V
    .registers 6

    .line 242
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Landroidx/test/runner/MonitoringInstrumentation;->isDexmakerClassLoaderInitialized:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 245
    return-void

    .line 248
    :cond_f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 251
    .local v0, "originalClassLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 253
    .local v1, "newClassLoader":Ljava/lang/ClassLoader;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 257
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 255
    const-string v3, "Setting context classloader to \'%s\', Original: \'%s\'"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 253
    const-string v3, "MonitoringInstr"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 259
    iget-object v2, p0, Landroidx/test/runner/MonitoringInstrumentation;->isDexmakerClassLoaderInitialized:Ljava/lang/ThreadLocal;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method private stubResultFor(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 629
    invoke-static {}, Landroidx/test/runner/intent/IntentStubberRegistry;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 632
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_45

    .line 633
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Landroidx/test/runner/MonitoringInstrumentation$StubResultCallable;

    invoke-direct {v1, p1}, Landroidx/test/runner/MonitoringInstrumentation$StubResultCallable;-><init>(Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 635
    .local v0, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Landroid/app/Instrumentation$ActivityResult;>;"
    invoke-virtual {p0, v0}, Landroidx/test/runner/MonitoringInstrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 637
    :try_start_1d
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityResult;
    :try_end_23
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1d .. :try_end_23} :catch_32
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_23} :catch_24

    return-object v1

    .line 641
    :catch_24
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 643
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 638
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_32
    move-exception v1

    .line 639
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 640
    const-string v4, "Could not retrieve stub result for intent %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 646
    .end local v0    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Landroid/app/Instrumentation$ActivityResult;>;"
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_45
    invoke-static {}, Landroidx/test/runner/intent/IntentStubberRegistry;->getInstance()Landroidx/test/runner/intent/IntentStubber;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/test/runner/intent/IntentStubber;->getActivityResultForIntent(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0

    .line 649
    :cond_4e
    const/4 v0, 0x0

    return-object v0
.end method

.method private tryLoadingJsBridge(Ljava/lang/String;)V
    .registers 4
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
        }
    .end annotation

    .line 820
    if-eqz p1, :cond_b

    .line 823
    new-instance v0, Landroidx/test/runner/MonitoringInstrumentation$5;

    invoke-direct {v0, p0, p1}, Landroidx/test/runner/MonitoringInstrumentation$5;-><init>(Landroidx/test/runner/MonitoringInstrumentation;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/test/runner/MonitoringInstrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 840
    return-void

    .line 821
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JsBridge class name cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "bundle"
        }
    .end annotation

    .line 701
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V

    .line 702
    invoke-super {p0, p1, p2}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 703
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->CREATED:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V

    .line 704
    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 689
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 690
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->DESTROYED:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V

    .line 691
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 740
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callActivityOnPause(Landroid/app/Activity;)V

    .line 741
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V

    .line 742
    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 695
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 696
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESTARTED:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V

    .line 697
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 734
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callActivityOnResume(Landroid/app/Activity;)V

    .line 735
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V

    .line 736
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 714
    :try_start_5
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callActivityOnStart(Landroid/app/Activity;)V

    .line 715
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->STARTED:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_f} :catch_11

    .line 719
    nop

    .line 720
    return-void

    .line 716
    :catch_11
    move-exception v0

    .line 717
    .local v0, "re":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroidx/test/runner/MonitoringInstrumentation;->startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 718
    throw v0
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 725
    :try_start_0
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callActivityOnStop(Landroid/app/Activity;)V

    .line 726
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->STOPPED:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_11

    .line 728
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 729
    nop

    .line 730
    return-void

    .line 728
    :catchall_11
    move-exception v0

    iget-object v1, p0, Landroidx/test/runner/MonitoringInstrumentation;->startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .registers 4
    .param p1, "app"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->applicationMonitor:Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/ApplicationStage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/ApplicationStage;

    invoke-virtual {v0, p1, v1}, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->signalLifecycleChange(Landroid/app/Application;Landroidx/test/runner/lifecycle/ApplicationStage;)V

    .line 419
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 420
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->applicationMonitor:Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/ApplicationStage;->CREATED:Landroidx/test/runner/lifecycle/ApplicationStage;

    invoke-virtual {v0, p1, v1}, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->signalLifecycleChange(Landroid/app/Application;Landroidx/test/runner/lifecycle/ApplicationStage;)V

    .line 421
    return-void
.end method

.method protected dumpThreadStateToOutputs(Ljava/lang/String;)V
    .registers 4
    .param p1, "outputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFileName"
        }
    .end annotation

    .line 666
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getThreadState()Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, "threadState":Ljava/lang/String;
    const-string v1, "THREAD_STATE"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-void
.end method

.method public execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 20
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intents"    # [Landroid/content/Intent;
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "contextThread",
            "token",
            "target",
            "intents",
            "options"
        }
    .end annotation

    .line 585
    move-object/from16 v0, p5

    const-string v1, "MonitoringInstr"

    const-string v2, "execStartActivities(context, ibinder, ibinder, activity, intent[], bundle)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v1, -0x1

    .line 590
    .local v1, "requestCode":I
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v2, :cond_22

    aget-object v12, v0, v11

    .line 591
    .local v12, "intent":Landroid/content/Intent;
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v8, v12

    move v9, v1

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Landroidx/test/runner/MonitoringInstrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    .line 590
    .end local v12    # "intent":Landroid/content/Intent;
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 593
    :cond_22
    return-void
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .registers 10
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "contextThread",
            "token",
            "target",
            "intent",
            "requestCode"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->intentMonitor:Landroidx/test/internal/runner/intent/IntentMonitorImpl;

    invoke-virtual {v0, p5}, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->signalIntent(Landroid/content/Intent;)V

    .line 512
    invoke-direct {p0, p5}, Landroidx/test/runner/MonitoringInstrumentation;->stubResultFor(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 513
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_1d

    .line 514
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    const-string v2, "Stubbing intent %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonitoringInstr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-object v0

    .line 517
    :cond_1d
    invoke-super/range {p0 .. p6}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v1

    return-object v1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 11
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "contextThread",
            "token",
            "target",
            "intent",
            "requestCode",
            "options"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->intentMonitor:Landroidx/test/internal/runner/intent/IntentMonitorImpl;

    invoke-virtual {v0, p5}, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->signalIntent(Landroid/content/Intent;)V

    .line 531
    invoke-direct {p0, p5}, Landroidx/test/runner/MonitoringInstrumentation;->stubResultFor(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 532
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_1d

    .line 533
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    const-string v2, "Stubbing intent %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonitoringInstr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-object v0

    .line 536
    :cond_1d
    invoke-super/range {p0 .. p7}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v1

    return-object v1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 10
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "contextThread",
            "token",
            "target",
            "intent",
            "requestCode",
            "options",
            "user"
        }
    .end annotation

    .line 569
    invoke-super/range {p0 .. p8}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 12
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Fragment;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "contextThread",
            "token",
            "target",
            "intent",
            "requestCode",
            "options"
        }
    .end annotation

    .line 605
    const-string v0, "MonitoringInstr"

    const-string v1, "execStartActivity(context, IBinder, IBinder, Fragment, Intent, int, Bundle)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v1, p0, Landroidx/test/runner/MonitoringInstrumentation;->intentMonitor:Landroidx/test/internal/runner/intent/IntentMonitorImpl;

    invoke-virtual {v1, p5}, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->signalIntent(Landroid/content/Intent;)V

    .line 607
    invoke-direct {p0, p5}, Landroidx/test/runner/MonitoringInstrumentation;->stubResultFor(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v1

    .line 608
    .local v1, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v1, :cond_22

    .line 609
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    const-string v3, "Stubbing intent %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-object v1

    .line 612
    :cond_22
    invoke-super/range {p0 .. p7}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 11
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "contextThread",
            "token",
            "target",
            "intent",
            "requestCode",
            "options"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->intentMonitor:Landroidx/test/internal/runner/intent/IntentMonitorImpl;

    invoke-virtual {v0, p5}, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->signalIntent(Landroid/content/Intent;)V

    .line 550
    invoke-direct {p0, p5}, Landroidx/test/runner/MonitoringInstrumentation;->stubResultFor(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 551
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_1d

    .line 552
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    const-string v2, "Stubbing intent %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonitoringInstr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-object v0

    .line 555
    :cond_1d
    invoke-super/range {p0 .. p7}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v1

    return-object v1
.end method

.method public finish(ILandroid/os/Bundle;)V
    .registers 12
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "results"
        }
    .end annotation

    .line 349
    iget-boolean v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->finished:Z

    const-string v1, "MonitoringInstr"

    if-eqz v0, :cond_c

    .line 350
    const-string v0, "finish called 2x!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 353
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->finished:Z

    .line 356
    iget-object v2, p0, Landroidx/test/runner/MonitoringInstrumentation;->handlerForMainLooper:Landroid/os/Handler;

    new-instance v3, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    invoke-direct {v3, p0}, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;-><init>(Landroidx/test/runner/MonitoringInstrumentation;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 359
    .local v2, "startTime":J
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->waitForActivitiesToComplete()V

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 361
    .local v4, "endTime":J
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    sub-long v7, v4, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v0, v6

    const-string v6, "waitForActivitiesToComplete() took: %sms"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->registerInstance(Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;)V

    .line 363
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->restoreUncaughtExceptionHandler()V

    .line 364
    invoke-super {p0, p1, p2}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->finish(ILandroid/os/Bundle;)V

    .line 365
    return-void
.end method

.method protected getThreadState()Ljava/lang/String;
    .registers 12

    .line 671
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 672
    .local v0, "threads":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    .local v1, "threadState":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 674
    .local v3, "threadAndStack":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 675
    .local v4, "threadMessage":Ljava/lang/StringBuilder;
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/StackTraceElement;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_39
    if-ge v8, v7, :cond_4f

    aget-object v9, v6, v8

    .line 677
    .local v9, "ste":Ljava/lang/StackTraceElement;
    const-string v10, "    "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .end local v9    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    .line 681
    :cond_4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .end local v3    # "threadAndStack":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v4    # "threadMessage":Ljava/lang/StringBuilder;
    goto :goto_11

    .line 684
    :cond_5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected installMultidex()V
    .registers 11

    .line 187
    const-string v0, "multidex is available at runtime, but calling it failed."

    const-string v1, "No multidex."

    const-string v2, "MonitoringInstr"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_54

    .line 189
    :try_start_c
    const-string v3, "androidx.multidex.MultiDex"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_12} :catch_50
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_12} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_12} :catch_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_12} :catch_3d

    .line 191
    .local v3, "multidex":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_12
    const-string v4, "installInstrumentation"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Landroid/content/Context;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    .line 192
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 193
    .local v4, "installInstrumentation":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_37} :catch_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_37} :catch_50
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_37} :catch_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_37} :catch_3d

    .line 196
    .end local v4    # "installInstrumentation":Ljava/lang/reflect/Method;
    goto :goto_54

    .line 194
    :catch_38
    move-exception v4

    .line 195
    .local v4, "nsme":Ljava/lang/NoSuchMethodException;
    :try_start_39
    invoke-virtual {p0, v3}, Landroidx/test/runner/MonitoringInstrumentation;->installOldMultiDex(Ljava/lang/Class;)V
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_39 .. :try_end_3c} :catch_50
    .catch Ljava/lang/NoSuchMethodException; {:try_start_39 .. :try_end_3c} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_39 .. :try_end_3c} :catch_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_54

    .line 203
    .end local v3    # "multidex":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_3d
    move-exception v1

    .line 204
    .local v1, "iae":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 201
    .end local v1    # "iae":Ljava/lang/IllegalAccessException;
    :catch_44
    move-exception v1

    .line 202
    .local v1, "ite":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 199
    .end local v1    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_4b
    move-exception v0

    .line 200
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "nsme":Ljava/lang/NoSuchMethodException;
    goto :goto_54

    .line 197
    :catch_50
    move-exception v0

    .line 198
    .local v0, "ignored":Ljava/lang/ClassNotFoundException;
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v0    # "ignored":Ljava/lang/ClassNotFoundException;
    :cond_54
    :goto_54
    return-void
.end method

.method protected installOldMultiDex(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multidexClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 215
    .local p1, "multidexClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "install"

    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 216
    .local v1, "install":Ljava/lang/reflect/Method;
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public interceptActivityUsing(Landroidx/test/runner/intercepting/InterceptingActivityFactory;)V
    .registers 2
    .param p1, "interceptingActivityFactory"    # Landroidx/test/runner/intercepting/InterceptingActivityFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interceptingActivityFactory"
        }
    .end annotation

    .line 802
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    iput-object p1, p0, Landroidx/test/runner/MonitoringInstrumentation;->interceptingActivityFactory:Landroidx/test/runner/intercepting/InterceptingActivityFactory;

    .line 804
    return-void
.end method

.method protected final isPrimaryInstrProcess()Z
    .registers 2

    .line 898
    invoke-direct {p0}, Landroidx/test/runner/MonitoringInstrumentation;->isOriginalInstrumentationProcess()Z

    move-result v0

    return v0
.end method

.method protected isPrimaryInstrProcess(Ljava/lang/String;)Z
    .registers 3
    .param p1, "argsProcessName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "argsProcessName"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 884
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->isPrimaryInstrProcess()Z

    move-result v0

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .registers 16
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "application"    # Landroid/app/Application;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "info"    # Landroid/content/pm/ActivityInfo;
    .param p7, "title"    # Ljava/lang/CharSequence;
    .param p8, "parent"    # Landroid/app/Activity;
    .param p9, "id"    # Ljava/lang/String;
    .param p10, "lastNonConfigurationInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "context",
            "token",
            "application",
            "intent",
            "info",
            "title",
            "parent",
            "id",
            "lastNonConfigurationInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 762
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "activityClassPackageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, "contextPackageName":Ljava/lang/String;
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 765
    .local v2, "intentComponentName":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 766
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 767
    new-instance v3, Landroid/content/ComponentName;

    .line 768
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-virtual {p5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 771
    :cond_30
    invoke-super/range {p0 .. p10}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v3

    return-object v3
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 5
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cl",
            "className",
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 787
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->interceptingActivityFactory:Landroidx/test/runner/intercepting/InterceptingActivityFactory;

    invoke-interface {v0, p1, p2, p3}, Landroidx/test/runner/intercepting/InterceptingActivityFactory;->shouldIntercept(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 788
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->interceptingActivityFactory:Landroidx/test/runner/intercepting/InterceptingActivityFactory;

    invoke-interface {v0, p1, p2, p3}, Landroidx/test/runner/intercepting/InterceptingActivityFactory;->create(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_13

    .line 789
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 787
    :goto_13
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 146
    const-string v0, "MonitoringInstr"

    const-string v1, "Instrumentation started!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Landroidx/test/runner/MonitoringInstrumentation;->logUncaughtExceptions()V

    .line 150
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->installMultidex()V

    .line 152
    invoke-static {p0, p1}, Landroidx/test/platform/app/InstrumentationRegistry;->registerInstance(Landroid/app/Instrumentation;Landroid/os/Bundle;)V

    .line 153
    invoke-static {p0, p1}, Landroidx/test/InstrumentationRegistry;->registerInstance(Landroid/app/Instrumentation;Landroid/os/Bundle;)V

    .line 154
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    invoke-static {v0}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->registerInstance(Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;)V

    .line 155
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->applicationMonitor:Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;

    invoke-static {v0}, Landroidx/test/runner/lifecycle/ApplicationLifecycleMonitorRegistry;->registerInstance(Landroidx/test/runner/lifecycle/ApplicationLifecycleMonitor;)V

    .line 156
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->intentMonitor:Landroidx/test/internal/runner/intent/IntentMonitorImpl;

    invoke-static {v0}, Landroidx/test/runner/intent/IntentMonitorRegistry;->registerInstance(Landroidx/test/runner/intent/IntentMonitor;)V

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->handlerForMainLooper:Landroid/os/Handler;

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "corePoolSize":I
    const-wide/16 v1, 0x0

    .line 161
    .local v1, "keepAliveTime":J
    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v9}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v10, Landroidx/test/runner/MonitoringInstrumentation$2;

    invoke-direct {v10, p0}, Landroidx/test/runner/MonitoringInstrumentation$2;-><init>(Landroidx/test/runner/MonitoringInstrumentation;)V

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const-wide/16 v6, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v11, p0, Landroidx/test/runner/MonitoringInstrumentation;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 176
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    iget-object v4, p0, Landroidx/test/runner/MonitoringInstrumentation;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v3, v4}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 177
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->specifyDexMakerCacheProperty()V

    .line 179
    invoke-direct {p0}, Landroidx/test/runner/MonitoringInstrumentation;->setupDexmakerClassloader()V

    .line 180
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->useDefaultInterceptingActivityFactory()V

    .line 181
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 408
    const-string v0, "MonitoringInstr"

    const-string v1, "Instrumentation Finished!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/runner/MonitoringInstrumentation;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 411
    invoke-static {}, Landroidx/test/internal/runner/InstrumentationConnection;->getInstance()Landroidx/test/internal/runner/InstrumentationConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/internal/runner/InstrumentationConnection;->terminate()V

    .line 413
    invoke-super {p0}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->onDestroy()V

    .line 414
    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "e"
        }
    .end annotation

    .line 654
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 655
    const-string v1, "Exception encountered by: %s. Dumping thread state to outputs and pining for the fjords."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "error":Ljava/lang/String;
    const-string v1, "MonitoringInstr"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    const-string v2, "ThreadState-onException.txt"

    invoke-virtual {p0, v2}, Landroidx/test/runner/MonitoringInstrumentation;->dumpThreadStateToOutputs(Ljava/lang/String;)V

    .line 661
    const-string v2, "Dying now..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-super {p0, p1, p2}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    return v1
.end method

.method public onStart()V
    .registers 3

    .line 307
    invoke-super {p0}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->onStart()V

    .line 309
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->jsBridgeClassName:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 310
    invoke-direct {p0, v0}, Landroidx/test/runner/MonitoringInstrumentation;->tryLoadingJsBridge(Ljava/lang/String;)V

    .line 329
    :cond_a
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->waitForIdleSync()V

    .line 334
    invoke-direct {p0}, Landroidx/test/runner/MonitoringInstrumentation;->setupDexmakerClassloader()V

    .line 336
    invoke-static {}, Landroidx/test/internal/runner/InstrumentationConnection;->getInstance()Landroidx/test/internal/runner/InstrumentationConnection;

    move-result-object v0

    new-instance v1, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    invoke-direct {v1, p0}, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;-><init>(Landroidx/test/runner/MonitoringInstrumentation;)V

    invoke-virtual {v0, p0, v1}, Landroidx/test/internal/runner/InstrumentationConnection;->init(Landroid/app/Instrumentation;Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;)V

    .line 337
    return-void
.end method

.method protected restoreUncaughtExceptionHandler()V
    .registers 3

    .line 295
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/runner/MonitoringInstrumentation;->standardHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 296
    return-void
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 432
    const-string v0, "MonitoringInstr"

    new-instance v1, Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 433
    .local v1, "wrapped":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-super {p0, v1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 435
    :try_start_b
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_20
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_e} :catch_10

    .line 442
    nop

    .line 443
    return-void

    .line 439
    :catch_10
    move-exception v2

    .line 440
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    const-string v3, "An exception is thrown from the runnable posted to the main thread"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 436
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_20
    move-exception v2

    .line 437
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "An execution is interrupted"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected final setJsBridgeClassName(Ljava/lang/String;)V
    .registers 4
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
        }
    .end annotation

    .line 230
    if-eqz p1, :cond_15

    .line 234
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->isJsBridgeLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    .line 237
    iput-object p1, p0, Landroidx/test/runner/MonitoringInstrumentation;->jsBridgeClassName:Ljava/lang/String;

    .line 238
    return-void

    .line 235
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsBridge is already loaded!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JsBridge class name cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected specifyDexMakerCacheProperty()V
    .registers 5

    .line 225
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dxmaker_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 226
    .local v0, "dexCache":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dexmaker.dexcache"

    invoke-virtual {v1, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "intent"
        }
    .end annotation

    .line 447
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkNotMainThread()V

    .line 448
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lastIdleTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 450
    .local v0, "lastIdleTimeBeforeLaunch":J
    iget-object v2, p0, Landroidx/test/runner/MonitoringInstrumentation;->anActivityHasBeenLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 464
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 466
    :cond_18
    iget-object v2, p0, Landroidx/test/runner/MonitoringInstrumentation;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Landroidx/test/runner/MonitoringInstrumentation$4;

    invoke-direct {v5, p0, p1}, Landroidx/test/runner/MonitoringInstrumentation$4;-><init>(Landroidx/test/runner/MonitoringInstrumentation;Landroid/content/Intent;)V

    .line 467
    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 476
    .local v2, "startedActivity":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/app/Activity;>;"
    const-wide/16 v5, 0x2d

    :try_start_25
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5, v6, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;
    :try_end_2d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_25 .. :try_end_2d} :catch_4b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_25 .. :try_end_2d} :catch_3e
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2d} :catch_2e

    return-object v5

    .line 496
    :catch_2e
    move-exception v3

    .line 497
    .local v3, "ie":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 498
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "interrupted"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 494
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :catch_3e
    move-exception v3

    .line 495
    .local v3, "ee":Ljava/util/concurrent/ExecutionException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    const-string v6, "Could not launch activity"

    invoke-direct {v4, v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 477
    .end local v3    # "ee":Ljava/util/concurrent/ExecutionException;
    :catch_4b
    move-exception v5

    .line 478
    .local v5, "te":Ljava/util/concurrent/TimeoutException;
    const-string v6, "ThreadState-startActivityTimeout.txt"

    invoke-virtual {p0, v6}, Landroidx/test/runner/MonitoringInstrumentation;->dumpThreadStateToOutputs(Ljava/lang/String;)V

    .line 479
    invoke-interface {v2, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 480
    new-instance v6, Ljava/lang/RuntimeException;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v3

    const/16 v3, 0x2d

    .line 491
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    const/4 v3, 0x2

    .line 492
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x3

    iget-object v4, p0, Landroidx/test/runner/MonitoringInstrumentation;->lastIdleTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 493
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v3

    .line 481
    const-string v3, "Could not launch intent %s within %s seconds. Perhaps the main thread has not gone idle within a reasonable amount of time? There could be an animation or something constantly repainting the screen. Or the activity is doing network calls on creation? See the threaddump logs. For your reference the last time the event queue was idle before your activity launch request was %s and now the last time the queue went idle was: %s. If these numbers are the same your activity might be hogging the event queue."

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public useDefaultInterceptingActivityFactory()V
    .registers 2

    .line 811
    new-instance v0, Landroidx/test/internal/runner/intercepting/DefaultInterceptingActivityFactory;

    invoke-direct {v0}, Landroidx/test/internal/runner/intercepting/DefaultInterceptingActivityFactory;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->interceptingActivityFactory:Landroidx/test/runner/intercepting/InterceptingActivityFactory;

    .line 812
    return-void
.end method

.method protected waitForActivitiesToComplete()V
    .registers 9

    .line 379
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_72

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroidx/test/runner/MonitoringInstrumentation;->MILLIS_TO_WAIT_FOR_ACTIVITY_TO_STOP:J

    add-long/2addr v0, v2

    .line 384
    .local v0, "endTime":J
    iget-object v2, p0, Landroidx/test/runner/MonitoringInstrumentation;->startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 385
    .local v2, "currentActivityCount":I
    :goto_17
    const-string v3, "MonitoringInstr"

    if-lez v2, :cond_4e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_4e

    .line 387
    const/16 v4, 0x25

    :try_start_25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unstopped activity count: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget-wide v4, Landroidx/test/runner/MonitoringInstrumentation;->MILLIS_TO_POLL_FOR_ACTIVITY_STOP:J

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 389
    iget-object v4, p0, Landroidx/test/runner/MonitoringInstrumentation;->startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_46} :catch_48

    move v2, v3

    .line 393
    goto :goto_17

    .line 390
    :catch_48
    move-exception v4

    .line 391
    .local v4, "ie":Ljava/lang/InterruptedException;
    const-string v5, "Abandoning activity wait due to interruption."

    invoke-static {v3, v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    .end local v4    # "ie":Ljava/lang/InterruptedException;
    :cond_4e
    if-lez v2, :cond_71

    .line 397
    const-string v4, "ThreadState-unstopped.txt"

    invoke-virtual {p0, v4}, Landroidx/test/runner/MonitoringInstrumentation;->dumpThreadStateToOutputs(Ljava/lang/String;)V

    .line 398
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 402
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-wide v6, Landroidx/test/runner/MonitoringInstrumentation;->MILLIS_TO_WAIT_FOR_ACTIVITY_TO_STOP:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 400
    const-string v5, "Still %s activities active after waiting %s ms."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 398
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_71
    return-void

    .line 380
    .end local v0    # "endTime":J
    .end local v2    # "currentActivityCount":I
    :cond_72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from main thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_7b

    :goto_7a
    throw v0

    :goto_7b
    goto :goto_7a
.end method
