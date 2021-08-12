.class public Lcom/bytedance/sdk/openadsdk/core/m;
.super Ljava/lang/Object;
.source "InitHelper.java"


# static fields
.field public static volatile a:Z

.field public static volatile b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Z

    .line 62
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/m;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static a()V
    .registers 3

    .line 104
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->d()Z

    move-result v0

    if-nez v0, :cond_b

    .line 105
    return-void

    .line 107
    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    .line 108
    if-nez v0, :cond_12

    .line 109
    return-void

    .line 112
    :cond_12
    :try_start_12
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/c;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/c;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/a;->a(Lcom/bytedance/sdk/adnet/c/b;)V

    .line 113
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/a;->a(Z)V

    .line 114
    move-object v1, v0

    check-cast v1, Landroid/app/Application;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;Landroid/app/Application;Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_28} :catch_29

    .line 116
    goto :goto_2a

    .line 115
    :catch_29
    move-exception v0

    .line 117
    :goto_2a
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .line 65
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_21

    .line 66
    const-class v0, Lcom/bytedance/sdk/openadsdk/TTAdManagerFactory;

    monitor-enter v0

    .line 67
    :try_start_b
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/m;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 68
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/m;->c(Landroid/content/Context;)V

    .line 69
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    :cond_1c
    monitor-exit v0

    goto :goto_21

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw p0

    .line 73
    :cond_21
    :goto_21
    return-void
.end method

.method private static b()V
    .registers 5

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_7

    return-void

    .line 129
    :cond_7
    :try_start_7
    const-string v0, "android.content.pm.PackageParser$Package"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 130
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 133
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 134
    const-string v2, "currentActivityThread"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 136
    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 137
    const-string v3, "mHiddenApiWarningShown"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 139
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_41

    .line 141
    goto :goto_42

    .line 140
    :catchall_41
    move-exception v0

    .line 142
    :goto_42
    return-void
.end method

.method static synthetic b(Landroid/content/Context;)V
    .registers 1

    .line 58
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/m;->d(Landroid/content/Context;)V

    return-void
.end method

.method private static c()V
    .registers 1

    .line 249
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a()Lcom/bytedance/sdk/openadsdk/core/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/b;->b()V

    .line 250
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .registers 7

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/core/m;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InitHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Landroid/content/Context;)V

    .line 81
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 82
    return-void

    .line 85
    :cond_2c
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d;->a(Landroid/content/Context;)V

    .line 87
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/m;->e(Landroid/content/Context;)V

    .line 88
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/core/m;->a:Z

    if-eqz v2, :cond_41

    .line 89
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/m$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/m$1;-><init>(Landroid/content/Context;)V

    const/16 p0, 0xa

    invoke-static {v2, p0}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    goto :goto_44

    .line 96
    :cond_41
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/m;->d(Landroid/content/Context;)V

    .line 99
    :goto_44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init over: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .registers 5

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 148
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/m;->b()V

    .line 149
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/m;->g(Landroid/content/Context;)V

    .line 150
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a()Lcom/bytedance/sdk/openadsdk/utils/ag;

    .line 152
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a()V

    .line 153
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;)V

    .line 154
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/m;->f(Landroid/content/Context;)V

    .line 155
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/c/b;->a()V

    .line 156
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->e()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/c/b;->a()V

    .line 157
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->d()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/c/b;->a()V

    .line 158
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Lcom/bytedance/sdk/openadsdk/g/c/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/g/c/a;->a()V

    .line 160
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 162
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->g()Lcom/bytedance/sdk/openadsdk/k/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/bytedance/sdk/openadsdk/k/a;->a(Ljava/lang/String;)V

    .line 164
    :cond_47
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/s;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/s;

    .line 165
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(Landroid/content/Context;)V

    .line 166
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/m;->c()V

    .line 167
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a()V

    .line 168
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a()Lcom/bytedance/sdk/openadsdk/core/g/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/g/a;->b()V

    .line 171
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/m;->a()V

    .line 176
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do async task: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InitHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .registers 4

    .line 181
    new-instance v0, Lcom/bytedance/embedapplog/InitConfig;

    const v1, 0x2820a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unionser_slardar_applog"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/embedapplog/InitConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-eqz v1, :cond_35

    .line 183
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/InitConfig;->setImeiEnable(Z)V

    .line 184
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 186
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getDevImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/InitConfig;->setAppImei(Ljava/lang/String;)V

    .line 188
    :cond_2c
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/m;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/InitConfig;->setMacEnable(Z)V

    .line 190
    :cond_35
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/m$2;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/m$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/InitConfig;->setSensitiveInfoProvider(Lcom/bytedance/embedapplog/ISensitiveInfoProvider;)V

    .line 210
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/InitConfig;->setUriConfig(I)Lcom/bytedance/embedapplog/InitConfig;

    .line 212
    invoke-static {p0, v0}, Lcom/bytedance/embedapplog/AppLog;->init(Landroid/content/Context;Lcom/bytedance/embedapplog/InitConfig;)V

    .line 213
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/m$3;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/m$3;-><init>()V

    invoke-static {v0}, Lcom/bytedance/embedapplog/AppLog;->addDataObserver(Lcom/bytedance/embedapplog/IDataObserver;)V

    .line 245
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(Landroid/content/Context;)V

    .line 246
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .registers 3

    .line 253
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object p0

    .line 254
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method private static g(Landroid/content/Context;)V
    .registers 4

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/m$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/m$4;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/bytedance/tea/crash/g;->a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;ZZ)V

    .line 341
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/m$5;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/m$5;-><init>()V

    invoke-static {p0}, Lcom/bytedance/tea/crash/g;->a(Lcom/bytedance/tea/crash/f;)V

    .line 367
    return-void
.end method
