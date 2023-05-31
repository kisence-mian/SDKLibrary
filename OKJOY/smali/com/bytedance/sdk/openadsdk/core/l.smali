.class public Lcom/bytedance/sdk/openadsdk/core/l;
.super Ljava/lang/Object;
.source "InitHelper.java"


# static fields
.field public static volatile a:Z

.field public static volatile b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 56
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/l;->a:Z

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/l;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static a()V
    .registers 4

    .prologue
    .line 100
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->e()Z

    move-result v1

    if-nez v1, :cond_b

    .line 113
    :cond_a
    :goto_a
    return-void

    .line 103
    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_a

    .line 108
    :try_start_11
    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/c;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/g/c;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/a;->a(Lcom/bytedance/sdk/adnet/c/b;)V

    .line 109
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/a;->a(Z)V

    .line 110
    move-object v0, v2

    check-cast v0, Landroid/app/Application;

    move-object v1, v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;Landroid/app/Application;Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_28} :catch_29

    goto :goto_a

    .line 111
    :catch_29
    move-exception v1

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 62
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/l;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 63
    const-class v1, Lcom/bytedance/sdk/openadsdk/TTAdManagerFactory;

    monitor-enter v1

    .line 64
    :try_start_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/l;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 65
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/l;->c(Landroid/content/Context;)V

    .line 66
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/l;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    :cond_1c
    monitor-exit v1

    .line 70
    :cond_1d
    return-void

    .line 68
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private static b()V
    .registers 4

    .prologue
    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_7

    .line 137
    :goto_6
    return-void

    .line 124
    :cond_7
    :try_start_7
    const-string v0, "android.content.pm.PackageParser$Package"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 125
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 128
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 129
    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 130
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 131
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 132
    const-string v2, "mHiddenApiWarningShown"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 133
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 134
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_46} :catch_47

    goto :goto_6

    .line 135
    :catch_47
    move-exception v0

    goto :goto_6
.end method

.method static synthetic b(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/l;->d(Landroid/content/Context;)V

    return-void
.end method

.method private static c()V
    .registers 1

    .prologue
    .line 192
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a()Lcom/bytedance/sdk/openadsdk/core/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/b;->b()V

    .line 193
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    const-string v2, "InitHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/bytedance/sdk/openadsdk/core/l;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Z)V

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Landroid/content/Context;)V

    .line 78
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v2

    if-nez v2, :cond_33

    .line 96
    :goto_32
    return-void

    .line 82
    :cond_33
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d;->a(Landroid/content/Context;)V

    .line 84
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/core/l;->a:Z

    if-eqz v2, :cond_67

    .line 85
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/l$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/l$1;-><init>(Landroid/content/Context;)V

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    .line 95
    :goto_48
    const-string v2, "InitHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init over: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 92
    :cond_67
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/l;->d(Landroid/content/Context;)V

    goto :goto_48
.end method

.method private static d(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/l;->e(Landroid/content/Context;)V

    .line 143
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/l;->b()V

    .line 144
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/l;->g(Landroid/content/Context;)V

    .line 145
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->a()Lcom/bytedance/sdk/openadsdk/utils/af;

    .line 147
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->a()V

    .line 148
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;)V

    .line 149
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/l;->f(Landroid/content/Context;)V

    .line 150
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/c/b;->a()V

    .line 151
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->e()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/c/b;->a()V

    .line 152
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->d()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/c/b;->a()V

    .line 153
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a()V

    .line 155
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 157
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->g()Lcom/bytedance/sdk/openadsdk/j/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/bytedance/sdk/openadsdk/j/a;->a(Ljava/lang/String;)V

    .line 159
    :cond_4a
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/s;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/s;

    .line 160
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Landroid/content/Context;)V

    .line 161
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/l;->c()V

    .line 162
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a()V

    .line 163
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a()Lcom/bytedance/sdk/openadsdk/core/g/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/g/a;->b()V

    .line 166
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/l;->a()V

    .line 169
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;->b()V

    .line 171
    const-string v2, "InitHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "do async task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 176
    new-instance v0, Lcom/bytedance/embedapplog/InitConfig;

    const v1, 0x2820a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unionser_slardar_applog"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/embedapplog/InitConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/l;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    if-eqz v1, :cond_35

    .line 178
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/l;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/InitConfig;->setImeiEnable(Z)V

    .line 179
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/l;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 181
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/l;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getDevImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/InitConfig;->setAppImei(Ljava/lang/String;)V

    .line 183
    :cond_2c
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/l;->b:Lcom/bytedance/sdk/openadsdk/TTCustomController;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWifiState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/InitConfig;->setMacEnable(Z)V

    .line 185
    :cond_35
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/embedapplog/InitConfig;->setUriConfig(I)Lcom/bytedance/embedapplog/InitConfig;

    .line 186
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v1

    invoke-static {v1}, Lcom/bytedance/embedapplog/AppLog;->setEnableLog(Z)V

    .line 187
    invoke-static {p0, v0}, Lcom/bytedance/embedapplog/AppLog;->init(Landroid/content/Context;Lcom/bytedance/embedapplog/InitConfig;)V

    .line 188
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Landroid/content/Context;)V

    .line 189
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 196
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d;

    move-result-object v0

    .line 197
    const-string v1, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private static g(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/l$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/l$2;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/tea/crash/g;->a(Landroid/content/Context;Lcom/bytedance/tea/crash/d;ZZ)V

    .line 284
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/l$3;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/l$3;-><init>()V

    invoke-static {v0}, Lcom/bytedance/tea/crash/g;->a(Lcom/bytedance/tea/crash/f;)V

    .line 308
    return-void
.end method
