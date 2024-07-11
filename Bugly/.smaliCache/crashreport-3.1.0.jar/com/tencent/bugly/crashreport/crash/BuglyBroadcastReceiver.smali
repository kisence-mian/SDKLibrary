.class public Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BUGLY"


# static fields
.field private static d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;


# instance fields
.field private a:Landroid/content/IntentFilter;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->e:Z

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->a:Landroid/content/IntentFilter;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;)Landroid/content/IntentFilter;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->a:Landroid/content/IntentFilter;

    return-object p0
.end method

.method static synthetic a()Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;
    .registers 1

    .line 27
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 14

    monitor-enter p0

    .line 125
    const/4 v0, 0x0

    if-eqz p1, :cond_cc

    if-eqz p2, :cond_cc

    :try_start_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_cc

    .line 130
    :cond_14
    iget-boolean p2, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->e:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_1d

    .line 132
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->e:Z
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_c9

    .line 133
    monitor-exit p0

    return v1

    .line 136
    :cond_1d
    :try_start_1d
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/bugly/crashreport/common/info/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is Connect BC "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 138
    const-string v2, "network %s changed to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 140
    if-nez p2, :cond_66

    .line 142
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->c:Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_1d .. :try_end_64} :catchall_c9

    .line 143
    monitor-exit p0

    return v1

    .line 145
    :cond_66
    :try_start_66
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->c:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->c:Ljava/lang/String;

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 150
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v5

    .line 151
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->a()Lcom/tencent/bugly/proguard/u;

    move-result-object v6

    .line 152
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object p1

    .line 154
    if-eqz v5, :cond_c0

    if-eqz v6, :cond_c0

    if-nez p1, :cond_81

    goto :goto_c0

    .line 160
    :cond_81
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_be

    .line 161
    sget p1, Lcom/tencent/bugly/crashreport/crash/c;->a:I

    invoke-virtual {v6, p1}, Lcom/tencent/bugly/proguard/u;->a(I)J

    move-result-wide p1

    sub-long p1, v3, p1

    const-wide/16 v7, 0x7530

    cmp-long p1, p1, v7

    if-lez p1, :cond_a7

    .line 164
    const-string p1, "try to upload crash on network changed."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 165
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object p1

    .line 166
    if-eqz p1, :cond_a7

    .line 167
    const-wide/16 v9, 0x0

    invoke-virtual {p1, v9, v10}, Lcom/tencent/bugly/crashreport/crash/c;->a(J)V

    .line 170
    :cond_a7
    const/16 p1, 0x3e9

    invoke-virtual {v6, p1}, Lcom/tencent/bugly/proguard/u;->a(I)J

    move-result-wide p1

    sub-long/2addr v3, p1

    cmp-long p1, v3, v7

    if-lez p1, :cond_be

    .line 172
    const-string p1, "try to upload userinfo on network changed."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 174
    sget-object p1, Lcom/tencent/bugly/crashreport/biz/b;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/biz/a;->b()V
    :try_end_be
    .catchall {:try_start_66 .. :try_end_be} :catchall_c9

    .line 180
    :cond_be
    monitor-exit p0

    return v1

    .line 155
    :cond_c0
    :goto_c0
    :try_start_c0
    const-string p1, "not inited BC not work"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_c7
    .catchall {:try_start_c0 .. :try_end_c7} :catchall_c9

    .line 156
    monitor-exit p0

    return v1

    .line 124
    :catchall_c9
    move-exception p1

    monitor-exit p0

    throw p1

    .line 127
    :cond_cc
    :goto_cc
    monitor-exit p0

    return v0
.end method

.method static synthetic b(Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;)Landroid/content/Context;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;
    .registers 2

    const-class v0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    monitor-enter v0

    .line 41
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    if-nez v1, :cond_e

    .line 42
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    invoke-direct {v1}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;-><init>()V

    sput-object v1, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;

    .line 44
    :cond_e
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->d:Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 40
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addFilter(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 59
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    :cond_e
    const-string v0, "add action %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 62
    monitor-exit p0

    return-void

    .line 57
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 109
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 114
    return-void

    .line 110
    :catchall_4
    move-exception p1

    .line 111
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    :cond_e
    return-void
.end method

.method public declared-synchronized register(Landroid/content/Context;)V
    .registers 2

    monitor-enter p0

    .line 70
    :try_start_1
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->b:Landroid/content/Context;

    .line 71
    nop

    .line 72
    new-instance p1, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver$1;

    invoke-direct {p1, p0, p0}, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver$1;-><init>(Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;)V

    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 86
    monitor-exit p0

    return-void

    .line 69
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregister(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    .line 96
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Unregister broadcast receiver of Bugly."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/BuglyBroadcastReceiver;->b:Landroid/content/Context;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 103
    monitor-exit p0

    return-void

    .line 99
    :catchall_14
    move-exception p1

    .line 100
    :try_start_15
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_20

    .line 104
    :cond_1e
    monitor-exit p0

    return-void

    .line 95
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method
