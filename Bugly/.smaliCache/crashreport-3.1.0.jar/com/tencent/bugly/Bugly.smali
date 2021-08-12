.class public Lcom/tencent/bugly/Bugly;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static final SDK_IS_DEV:Ljava/lang/String; = "false"

.field private static a:Z

.field public static applicationContext:Landroid/content/Context;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field public static enable:Z

.field public static isDev:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/Bugly;->applicationContext:Landroid/content/Context;

    .line 45
    const-string v0, "BuglyCrashModule"

    const-string v1, "BuglyRqdModule"

    const-string v2, "BuglyBetaModule"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/bugly/Bugly;->b:[Ljava/lang/String;

    .line 46
    filled-new-array {v1, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/Bugly;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAppChannel()Ljava/lang/String;
    .registers 6

    const-class v0, Lcom/tencent/bugly/Bugly;

    monitor-enter v0

    .line 114
    :try_start_3
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_3c

    .line 115
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 116
    monitor-exit v0

    return-object v2

    .line 119
    :cond_c
    :try_start_c
    iget-object v3, v1, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 120
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v3

    .line 121
    if-nez v3, :cond_1e

    .line 122
    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_3c

    monitor-exit v0

    return-object v1

    .line 126
    :cond_1e
    const/16 v4, 0x22c

    const/4 v5, 0x1

    :try_start_21
    invoke-virtual {v3, v4, v2, v5}, Lcom/tencent/bugly/proguard/p;->a(ILcom/tencent/bugly/proguard/o;Z)Ljava/util/Map;

    move-result-object v2

    .line 128
    if-eqz v2, :cond_38

    .line 129
    const-string v3, "app_channel"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 130
    if-eqz v2, :cond_38

    .line 131
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_3c

    monitor-exit v0

    return-object v1

    .line 136
    :cond_38
    :try_start_38
    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_3c

    monitor-exit v0

    return-object v1

    .line 113
    :catchall_3c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    .line 59
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/bugly/Bugly;->init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V

    .line 60
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    .registers 9

    const-class v0, Lcom/tencent/bugly/Bugly;

    monitor-enter v0

    .line 72
    :try_start_3
    sget-boolean v1, Lcom/tencent/bugly/Bugly;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_67

    if-eqz v1, :cond_9

    .line 73
    monitor-exit v0

    return-void

    .line 75
    :cond_9
    const/4 v1, 0x1

    :try_start_a
    sput-boolean v1, Lcom/tencent/bugly/Bugly;->a:Z

    .line 76
    invoke-static {p0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 77
    sput-object p0, Lcom/tencent/bugly/Bugly;->applicationContext:Landroid/content/Context;

    if-nez p0, :cond_1d

    .line 78
    sget-object p0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string p1, "init arg \'context\' should not be null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_67

    .line 79
    monitor-exit v0

    return-void

    .line 83
    :cond_1d
    :try_start_1d
    invoke-static {}, Lcom/tencent/bugly/Bugly;->isDev()Z

    move-result p0

    if-eqz p0, :cond_27

    .line 84
    sget-object p0, Lcom/tencent/bugly/Bugly;->c:[Ljava/lang/String;

    sput-object p0, Lcom/tencent/bugly/Bugly;->b:[Ljava/lang/String;

    .line 89
    :cond_27
    sget-object p0, Lcom/tencent/bugly/Bugly;->b:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v1, :cond_5c

    aget-object v3, p0, v2
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_67

    .line 91
    :try_start_2f
    const-string v4, "BuglyCrashModule"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 92
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->getInstance()Lcom/tencent/bugly/CrashModule;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/a;)V

    goto :goto_59

    .line 93
    :cond_3f
    const-string v4, "BuglyBetaModule"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 95
    const-string v4, "BuglyRqdModule"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 97
    const-string v4, "BuglyFeedbackModule"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_54
    .catchall {:try_start_2f .. :try_end_54} :catchall_55

    .line 102
    :cond_54
    goto :goto_59

    .line 100
    :catchall_55
    move-exception v3

    .line 101
    :try_start_56
    invoke-static {v3}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    .line 89
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 104
    :cond_5c
    sget-boolean p0, Lcom/tencent/bugly/Bugly;->enable:Z

    sput-boolean p0, Lcom/tencent/bugly/b;->a:Z

    .line 105
    sget-object p0, Lcom/tencent/bugly/Bugly;->applicationContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_65
    .catchall {:try_start_56 .. :try_end_65} :catchall_67

    .line 106
    monitor-exit v0

    return-void

    .line 71
    :catchall_67
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isDev()Z
    .registers 3

    .line 145
    sget-object v0, Lcom/tencent/bugly/Bugly;->isDev:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    .line 146
    const-string v0, "false"

    const-string v1, "@"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/Bugly;->isDev:Ljava/lang/Boolean;

    .line 148
    :cond_18
    sget-object v0, Lcom/tencent/bugly/Bugly;->isDev:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
