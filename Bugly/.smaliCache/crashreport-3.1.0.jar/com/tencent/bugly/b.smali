.class public final Lcom/tencent/bugly/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Z

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/a;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Z

.field private static d:Lcom/tencent/bugly/proguard/p;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/b;->a:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/tencent/bugly/b;

    monitor-enter v0

    .line 56
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    .line 57
    monitor-exit v0

    return-void

    .line 55
    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .registers 6

    const-class v0, Lcom/tencent/bugly/b;

    monitor-enter v0

    .line 66
    :try_start_3
    sget-boolean v1, Lcom/tencent/bugly/b;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 67
    const-string p0, "[init] initial Multi-times, ignore this."

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_40

    .line 68
    monitor-exit v0

    return-void

    .line 70
    :cond_11
    if-nez p0, :cond_1c

    .line 71
    :try_start_13
    sget-object p0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string p1, "[init] context of init() is null, check it."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_40

    .line 72
    monitor-exit v0

    return-void

    .line 74
    :cond_1c
    :try_start_1c
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    .line 77
    invoke-static {v1}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/crashreport/common/info/a;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 78
    sput-boolean v2, Lcom/tencent/bugly/b;->a:Z
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_40

    .line 79
    monitor-exit v0

    return-void

    .line 83
    :cond_2a
    :try_start_2a
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v2

    .line 84
    if-nez v2, :cond_39

    .line 85
    sget-object p0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string p1, "[init] meta data of BUGLY_APPID in AndroidManifest.xml should be set."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_40

    .line 87
    monitor-exit v0

    return-void

    .line 89
    :cond_39
    :try_start_39
    iget-boolean v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->u:Z

    invoke-static {p0, v2, v1, p1}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_40

    .line 90
    monitor-exit v0

    return-void

    .line 65
    :catchall_40
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    .registers 24

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-class v3, Lcom/tencent/bugly/b;

    monitor-enter v3

    .line 102
    :try_start_9
    sget-boolean v4, Lcom/tencent/bugly/b;->e:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_17

    .line 103
    const-string v0, "[init] initial Multi-times, ignore this."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_22f

    .line 104
    monitor-exit v3

    return-void

    .line 106
    :cond_17
    if-nez p0, :cond_22

    .line 107
    :try_start_19
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "[init] context is null, check it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_22f

    .line 108
    monitor-exit v3

    return-void

    .line 111
    :cond_22
    if-nez v0, :cond_2d

    .line 112
    :try_start_24
    sget-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    const-string v1, "init arg \'crashReportAppID\' should not be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_22f

    .line 113
    monitor-exit v3

    return-void

    .line 115
    :cond_2d
    const/4 v4, 0x1

    :try_start_2e
    sput-boolean v4, Lcom/tencent/bugly/b;->e:Z

    .line 116
    if-eqz v1, :cond_6e

    .line 118
    sput-boolean v4, Lcom/tencent/bugly/b;->c:Z

    .line 119
    sput-boolean v4, Lcom/tencent/bugly/proguard/x;->b:Z

    .line 120
    const-string v6, "Bugly debug\u6a21\u5f0f\u5f00\u542f\uff0c\u8bf7\u5728\u53d1\u5e03\u65f6\u628aisDebug\u5173\u95ed\u3002 -- Running in debug model for \'isDebug\' is enabled. Please disable it when you release."

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 122
    const-string v6, "--------------------------------------------------------------------------------------------"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 124
    const-string v6, "Bugly debug\u6a21\u5f0f\u5c06\u6709\u4ee5\u4e0b\u884c\u4e3a\u7279\u6027 -- The following list shows the behaviour of debug model: "

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 126
    const-string v6, "[1] \u8f93\u51fa\u8be6\u7ec6\u7684Bugly SDK\u7684Log -- More detailed log of Bugly SDK will be output to logcat;"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 128
    const-string v6, "[2] \u6bcf\u4e00\u6761Crash\u90fd\u4f1a\u88ab\u7acb\u5373\u4e0a\u62a5 -- Every crash caught by Bugly will be uploaded immediately."

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 130
    const-string v6, "[3] \u81ea\u5b9a\u4e49\u65e5\u5fd7\u5c06\u4f1a\u5728Logcat\u4e2d\u8f93\u51fa -- Custom log will be output to logcat."

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 131
    const-string v6, "--------------------------------------------------------------------------------------------"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 133
    const-string v6, "[init] Open debug mode of Bugly."

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 136
    :cond_6e
    const-string v6, "[init] Bugly version: v%s"

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "3.1.0"

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 137
    const-string v6, " crash report start initializing..."

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 138
    const-string v6, "[init] Bugly start initializing..."

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 139
    const-string v6, "[init] Bugly complete version: v%s"

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "3.1.0"

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 141
    invoke-static/range {p0 .. p0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    .line 144
    invoke-static {v6}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v7

    .line 146
    invoke-virtual {v7}, Lcom/tencent/bugly/crashreport/common/info/a;->t()Ljava/lang/String;

    .line 147
    invoke-static {v6}, Lcom/tencent/bugly/proguard/y;->a(Landroid/content/Context;)V

    .line 148
    sget-object v8, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-static {v6, v8}, Lcom/tencent/bugly/proguard/p;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/p;

    move-result-object v8

    sput-object v8, Lcom/tencent/bugly/b;->d:Lcom/tencent/bugly/proguard/p;

    .line 149
    invoke-static {v6}, Lcom/tencent/bugly/proguard/u;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/u;

    .line 150
    sget-object v8, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-static {v6, v8}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v8

    .line 151
    invoke-static {v6}, Lcom/tencent/bugly/proguard/n;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;

    move-result-object v9

    .line 154
    invoke-static {v7}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/crashreport/common/info/a;)Z

    move-result v10

    if-eqz v10, :cond_bf

    .line 155
    sput-boolean v5, Lcom/tencent/bugly/b;->a:Z
    :try_end_bd
    .catchall {:try_start_2e .. :try_end_bd} :catchall_22f

    .line 156
    monitor-exit v3

    return-void

    .line 159
    :cond_bf
    :try_start_bf
    invoke-virtual {v7, v0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Ljava/lang/String;)V

    .line 160
    const-string v10, "[param] Set APP ID:%s"

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v0, v11, v5

    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 162
    if-eqz v2, :cond_1e5

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/16 v13, 0x64

    if-nez v10, :cond_106

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v13, :cond_f7

    invoke-virtual {v0, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v14, "appVersion %s length is over limit %d substring to %s"

    new-array v15, v12, [Ljava/lang/Object;

    aput-object v0, v15, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v4

    aput-object v10, v15, v11

    invoke-static {v14, v15}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v10

    :cond_f7
    iput-object v0, v7, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    const-string v0, "[param] Set App version: %s"

    new-array v10, v4, [Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v5

    invoke-static {v0, v10}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_106
    .catchall {:try_start_bf .. :try_end_106} :catchall_22f

    :cond_106
    :try_start_106
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->isReplaceOldChannel()Z

    move-result v0

    if-eqz v0, :cond_146

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_162

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v13, :cond_132

    invoke-virtual {v0, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v14, "appChannel %s length is over limit %d substring to %s"

    new-array v15, v12, [Ljava/lang/Object;

    aput-object v0, v15, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v4

    aput-object v10, v15, v11

    invoke-static {v14, v15}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v10

    :cond_132
    sget-object v14, Lcom/tencent/bugly/b;->d:Lcom/tencent/bugly/proguard/p;

    const/16 v15, 0x22c

    const-string v16, "app_channel"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;Z)Z

    iput-object v0, v7, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    goto :goto_162

    :cond_146
    sget-object v0, Lcom/tencent/bugly/b;->d:Lcom/tencent/bugly/proguard/p;

    const/16 v10, 0x22c

    const/4 v14, 0x0

    invoke-virtual {v0, v10, v14, v4}, Lcom/tencent/bugly/proguard/p;->a(ILcom/tencent/bugly/proguard/o;Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_162

    const-string v10, "app_channel"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_162

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v10, v7, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    :cond_162
    :goto_162
    const-string v0, "[param] Set App channel: %s"

    new-array v10, v4, [Ljava/lang/Object;

    iget-object v14, v7, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    aput-object v14, v10, v5

    invoke-static {v0, v10}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_16d} :catch_16e
    .catchall {:try_start_106 .. :try_end_16d} :catchall_22f

    goto :goto_176

    :catch_16e
    move-exception v0

    :try_start_16f
    sget-boolean v10, Lcom/tencent/bugly/b;->c:Z

    if-eqz v10, :cond_176

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_176
    :goto_176
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1ab

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v13, :cond_19c

    invoke-virtual {v0, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v14, "appPackageName %s length is over limit %d substring to %s"

    new-array v15, v12, [Ljava/lang/Object;

    aput-object v0, v15, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v4

    aput-object v10, v15, v11

    invoke-static {v14, v15}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v10

    :cond_19c
    iput-object v0, v7, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    const-string v0, "[param] Set App package: %s"

    new-array v10, v4, [Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v5

    invoke-static {v0, v10}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1ab
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v13, :cond_1cd

    invoke-virtual {v0, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v14, "deviceId %s length is over limit %d substring to %s"

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v0, v12, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v4

    aput-object v10, v12, v11

    invoke-static {v14, v12}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v10

    :cond_1cd
    invoke-virtual {v7, v0}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;)V

    const-string v10, "[param] Set device ID: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v10, v4}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1d9
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->isUploadProcess()Z

    move-result v0

    iput-boolean v0, v7, Lcom/tencent/bugly/crashreport/common/info/a;->e:Z

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->isBuglyLogUpload()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/bugly/proguard/y;->a:Z

    .line 164
    :cond_1e5
    invoke-static {v6, v2}, Lcom/tencent/bugly/crashreport/biz/b;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    .line 167
    move v4, v5

    :goto_1e9
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1ef
    .catchall {:try_start_16f .. :try_end_1ef} :catchall_22f

    if-ge v4, v0, :cond_21a

    .line 169
    :try_start_1f1
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/a;

    iget v0, v0, Lcom/tencent/bugly/a;->id:I

    invoke-virtual {v9, v0}, Lcom/tencent/bugly/proguard/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_20c

    .line 170
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/a;

    invoke-virtual {v0, v6, v1, v2}, Lcom/tencent/bugly/a;->init(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_20c
    .catchall {:try_start_1f1 .. :try_end_20c} :catchall_20d

    .line 176
    :cond_20c
    goto :goto_217

    .line 172
    :catchall_20d
    move-exception v0

    .line 173
    :try_start_20e
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v7

    if-nez v7, :cond_217

    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    :cond_217
    :goto_217
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e9

    .line 180
    :cond_21a
    if-eqz v2, :cond_221

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    goto :goto_223

    :cond_221
    const-wide/16 v0, 0x0

    .line 181
    :goto_223
    invoke-virtual {v8, v0, v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(J)V

    .line 183
    const-string v0, "[init] Bugly initialization finished."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_22d
    .catchall {:try_start_20e .. :try_end_22d} :catchall_22f

    .line 184
    monitor-exit v3

    return-void

    .line 101
    :catchall_22f
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static declared-synchronized a(Lcom/tencent/bugly/a;)V
    .registers 3

    const-class v0, Lcom/tencent/bugly/b;

    monitor-enter v0

    .line 280
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 281
    sget-object v1, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 283
    :cond_10
    monitor-exit v0

    return-void

    .line 279
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Lcom/tencent/bugly/crashreport/common/info/a;)Z
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/util/List;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    if-eqz v0, :cond_11

    const-string p0, "bugly"

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 50
    const/4 p0, 0x1

    return p0

    .line 52
    :cond_11
    const/4 p0, 0x0

    return p0
.end method
