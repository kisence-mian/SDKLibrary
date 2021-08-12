.class public Lcom/tencent/bugly/CrashModule;
.super Lcom/tencent/bugly/a;
.source "BUGLY"


# static fields
.field public static final MODULE_ID:I = 0x3ec

.field private static c:I

.field private static e:Lcom/tencent/bugly/CrashModule;


# instance fields
.field private a:J

.field private b:Lcom/tencent/bugly/BuglyStrategy$a;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/tencent/bugly/CrashModule;->c:I

    .line 30
    new-instance v0, Lcom/tencent/bugly/CrashModule;

    invoke-direct {v0}, Lcom/tencent/bugly/CrashModule;-><init>()V

    sput-object v0, Lcom/tencent/bugly/CrashModule;->e:Lcom/tencent/bugly/CrashModule;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/tencent/bugly/a;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/CrashModule;->d:Z

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .registers 9

    monitor-enter p0

    .line 93
    if-nez p2, :cond_5

    .line 94
    monitor-exit p0

    return-void

    .line 97
    :cond_5
    :try_start_5
    invoke-virtual {p2}, Lcom/tencent/bugly/BuglyStrategy;->getLibBuglySOFilePath()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_20

    .line 99
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p1

    iput-object v0, p1, Lcom/tencent/bugly/crashreport/common/info/a;->m:Ljava/lang/String;

    .line 100
    const-string p1, "setted libBugly.so file path :%s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 103
    :cond_20
    invoke-virtual {p2}, Lcom/tencent/bugly/BuglyStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/BuglyStrategy$a;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 104
    invoke-virtual {p2}, Lcom/tencent/bugly/BuglyStrategy;->getCrashHandleCallback()Lcom/tencent/bugly/BuglyStrategy$a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/CrashModule;->b:Lcom/tencent/bugly/BuglyStrategy$a;

    .line 105
    const-string p1, "setted CrashHanldeCallback"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 108
    :cond_33
    invoke-virtual {p2}, Lcom/tencent/bugly/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-lez p1, :cond_50

    .line 109
    invoke-virtual {p2}, Lcom/tencent/bugly/BuglyStrategy;->getAppReportDelay()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/bugly/CrashModule;->a:J

    .line 110
    const-string v0, "setted delay: %d"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_52

    .line 112
    :cond_50
    monitor-exit p0

    return-void

    .line 92
    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lcom/tencent/bugly/CrashModule;
    .registers 2

    .line 33
    sget-object v0, Lcom/tencent/bugly/CrashModule;->e:Lcom/tencent/bugly/CrashModule;

    const/16 v1, 0x3ec

    iput v1, v0, Lcom/tencent/bugly/CrashModule;->id:I

    .line 34
    sget-object v0, Lcom/tencent/bugly/CrashModule;->e:Lcom/tencent/bugly/CrashModule;

    return-object v0
.end method


# virtual methods
.method public getTables()[Ljava/lang/String;
    .registers 2

    .line 129
    const-string v0, "t_cr"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized hasInitialized()Z
    .registers 2

    monitor-enter p0

    .line 38
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/CrashModule;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 38
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy;)V
    .registers 15

    monitor-enter p0

    .line 48
    if-eqz p1, :cond_97

    :try_start_3
    iget-boolean v0, p0, Lcom/tencent/bugly/CrashModule;->d:Z

    if-eqz v0, :cond_9

    goto/16 :goto_97

    .line 51
    :cond_9
    const-string v0, "Initializing crash module."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 52
    invoke-static {}, Lcom/tencent/bugly/proguard/n;->a()Lcom/tencent/bugly/proguard/n;

    move-result-object v0

    sget v2, Lcom/tencent/bugly/CrashModule;->c:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/tencent/bugly/CrashModule;->c:I

    const/16 v4, 0x3ec

    invoke-virtual {v0, v4, v2}, Lcom/tencent/bugly/proguard/n;->a(II)V

    .line 53
    iput-boolean v3, p0, Lcom/tencent/bugly/CrashModule;->d:Z

    .line 54
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/CrashReport;->setContext(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p1, p3}, Lcom/tencent/bugly/CrashModule;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    .line 56
    const/16 v5, 0x3ec

    iget-object v8, p0, Lcom/tencent/bugly/CrashModule;->b:Lcom/tencent/bugly/BuglyStrategy$a;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    move v7, p2

    invoke-static/range {v5 .. v10}, Lcom/tencent/bugly/crashreport/crash/c;->a(ILandroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/proguard/o;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object p2

    .line 58
    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/crash/c;->e()V

    .line 60
    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/crash/c;->m()V

    .line 62
    if-eqz p3, :cond_4e

    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->isEnableNativeCrashMonitor()Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_4e

    .line 65
    :cond_43
    const-string v0, "[crash] Closed native crash monitor!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/crash/c;->f()V

    goto :goto_51

    .line 63
    :cond_4e
    :goto_4e
    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/crash/c;->g()V

    .line 68
    :goto_51
    if-eqz p3, :cond_65

    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->isEnableANRCrashMonitor()Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_65

    .line 71
    :cond_5a
    const-string v0, "[crash] Closed ANR monitor!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/crash/c;->i()V

    goto :goto_68

    .line 69
    :cond_65
    :goto_65
    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/crash/c;->h()V

    .line 75
    :goto_68
    if-eqz p3, :cond_6f

    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    goto :goto_71

    :cond_6f
    const-wide/16 v0, 0x0

    .line 77
    :goto_71
    invoke-virtual {p2, v0, v1}, Lcom/tencent/bugly/crashreport/crash/c;->a(J)V

    .line 79
    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/crash/c;->l()V

    .line 82
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/crash/d;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/crash/d;

    .line 85
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->getInstance()Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    move-result-object p2

    .line 86
    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p3}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->addFilter(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2, p1}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 89
    invoke-static {}, Lcom/tencent/bugly/proguard/n;->a()Lcom/tencent/bugly/proguard/n;

    move-result-object p1

    sget p2, Lcom/tencent/bugly/CrashModule;->c:I

    sub-int/2addr p2, v3

    sput p2, Lcom/tencent/bugly/CrashModule;->c:I

    invoke-virtual {p1, v4, p2}, Lcom/tencent/bugly/proguard/n;->a(II)V
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_94

    .line 90
    monitor-exit p0

    return-void

    .line 47
    :catchall_94
    move-exception p1

    monitor-exit p0

    throw p1

    .line 49
    :cond_97
    :goto_97
    monitor-exit p0

    return-void
.end method

.method public onServerStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .registers 3

    .line 116
    if-nez p1, :cond_3

    .line 117
    return-void

    .line 119
    :cond_3
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_c

    .line 121
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/crashreport/crash/c;->a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V

    .line 123
    :cond_c
    return-void
.end method
