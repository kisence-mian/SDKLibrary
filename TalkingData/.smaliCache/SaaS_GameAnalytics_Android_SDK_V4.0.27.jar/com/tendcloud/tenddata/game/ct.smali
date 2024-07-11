.class public Lcom/tendcloud/tenddata/game/ct;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/ct;

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 393
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/ct;->a()Lcom/tendcloud/tenddata/game/ct;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->register(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 396
    goto :goto_d

    .line 394
    :catchall_c
    move-exception v0

    .line 398
    :goto_d
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/ct;->a:Lcom/tendcloud/tenddata/game/ct;

    .line 399
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tendcloud/tenddata/game/ct;->b:Z

    .line 400
    sput-boolean v0, Lcom/tendcloud/tenddata/game/ct;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/ct;
    .registers 2

    .line 378
    sget-object v0, Lcom/tendcloud/tenddata/game/ct;->a:Lcom/tendcloud/tenddata/game/ct;

    if-nez v0, :cond_17

    .line 379
    const-class v0, Lcom/tendcloud/tenddata/game/ct;

    monitor-enter v0

    .line 380
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/ct;->a:Lcom/tendcloud/tenddata/game/ct;

    if-nez v1, :cond_12

    .line 381
    new-instance v1, Lcom/tendcloud/tenddata/game/ct;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/ct;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/ct;->a:Lcom/tendcloud/tenddata/game/ct;

    .line 383
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 385
    :cond_17
    :goto_17
    sget-object v0, Lcom/tendcloud/tenddata/game/ct;->a:Lcom/tendcloud/tenddata/game/ct;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 101
    sget-boolean v0, Lcom/tendcloud/tenddata/game/ct;->c:Z

    if-nez v0, :cond_a5

    .line 103
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TalkingData Game Analytics init...\n\tSDK_VERSION is: Android+TD+V4.0.27 gp Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/tendcloud/tenddata/game/ab;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Build_Num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "866"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tApp ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/ab;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tApp Channel is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/ab;->b(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\n\tSDK_OVC is: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "TDOVC+b1b82a6fe1963141a2eab222f90ce9fa+SaaS"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    sget-boolean p2, Lcom/tendcloud/tenddata/game/ab;->b:Z

    if-nez p2, :cond_57

    sget-boolean p2, Lcom/tendcloud/tenddata/game/ar;->a:Z

    if-eqz p2, :cond_5c

    .line 109
    :cond_57
    const-string p2, "TDLog"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_5c
    const-class p1, Lcom/tendcloud/tenddata/TDGAAccount;

    monitor-enter p1
    :try_end_5f
    .catchall {:try_start_4 .. :try_end_5f} :catchall_9c

    .line 116
    :try_start_5f
    sget-object p2, Lcom/tendcloud/tenddata/game/ab;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_75

    .line 117
    sget-object p2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/tendcloud/tenddata/TDGAAccount;->getTDGAccount(Landroid/content/Context;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object p2

    sput-object p2, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 118
    sget-object p2, Lcom/tendcloud/tenddata/game/ab;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    :cond_75
    monitor-exit p1
    :try_end_76
    .catchall {:try_start_5f .. :try_end_76} :catchall_99

    .line 122
    :try_start_76
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->p()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    .line 124
    sget-object p1, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object p2, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    sget-object v1, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-direct {p0, p1, p2, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 129
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 130
    new-instance p2, Lcom/tendcloud/tenddata/game/cu;

    invoke-direct {p2, p0}, Lcom/tendcloud/tenddata/game/cu;-><init>(Lcom/tendcloud/tenddata/game/ct;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    sput-boolean v0, Lcom/tendcloud/tenddata/game/ct;->c:Z
    :try_end_98
    .catchall {:try_start_76 .. :try_end_98} :catchall_9c

    .line 161
    goto :goto_a5

    .line 120
    :catchall_99
    move-exception p2

    :try_start_9a
    monitor-exit p1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    :try_start_9b
    throw p2
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9c

    .line 158
    :catchall_9c
    move-exception p1

    .line 159
    const-string p2, "[SDKInit] Failed to initialize!"

    invoke-static {p2, p1}, Lcom/tendcloud/tenddata/game/ar;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 164
    :cond_a5
    :goto_a5
    return-void
.end method

.method private a(Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .registers 7

    .line 167
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object v0

    invoke-static {p3}, Lcom/tendcloud/tenddata/game/as;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/tendcloud/tenddata/game/du;->setSessionId(Ljava/lang/String;)V

    .line 168
    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3}, Ljava/util/TreeMap;-><init>()V

    .line 169
    const-string v0, "accountId"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "type"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->index()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "gender"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->index()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v0, "age"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 175
    const-string v1, "level"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "gameServer"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {p2}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_77

    .line 178
    const-string p1, "mission"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_77
    const-string p1, "custom"

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Lcom/tendcloud/tenddata/game/du;->setAccount(Lorg/json/JSONObject;)V
    :try_end_8d
    .catchall {:try_start_0 .. :try_end_8d} :catchall_8e

    .line 186
    goto :goto_92

    .line 183
    :catchall_8e
    move-exception p1

    .line 185
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 187
    :goto_92
    return-void
.end method

.method private static a(Lcom/tendcloud/tenddata/game/a;)V
    .registers 7

    .line 212
    const/4 v0, 0x1

    if-nez p0, :cond_e

    .line 213
    :try_start_3
    new-array p0, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "TDFeatures is null..."

    aput-object v1, p0, v0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ar;->eForInternal([Ljava/lang/String;)V

    .line 214
    return-void

    .line 222
    :cond_e
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/as;->d(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_20

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/tendcloud/tenddata/game/as;->b(JLcom/tendcloud/tenddata/game/a;)V

    goto :goto_32

    .line 224
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 225
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/as;->d(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long p0, v1, v3

    if-lez p0, :cond_32

    .line 226
    sput-boolean v0, Lcom/tendcloud/tenddata/game/bq;->c:Z
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_33

    .line 231
    :cond_32
    :goto_32
    goto :goto_37

    .line 228
    :catchall_33
    move-exception p0

    .line 230
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 233
    :goto_37
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 6

    .line 308
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "activity"

    .line 309
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 311
    nop

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 311
    invoke-virtual {v2, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 313
    nop

    .line 314
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 315
    if-eqz v1, :cond_42

    .line 316
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 317
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v4, :cond_41

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_43

    if-eqz v2, :cond_41

    .line 318
    const/4 p0, 0x1

    return p0

    .line 320
    :cond_41
    goto :goto_23

    .line 325
    :cond_42
    goto :goto_47

    .line 322
    :catchall_43
    move-exception p0

    .line 324
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 326
    :goto_47
    return v0
.end method

.method private static b()V
    .registers 5

    .line 201
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/as;->setInitTime(J)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 206
    :cond_11
    goto :goto_13

    .line 204
    :catchall_12
    move-exception v0

    .line 208
    :goto_13
    return-void
.end method

.method private static c()V
    .registers 4

    .line 330
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dl;-><init>()V

    .line 331
    const-string v1, "env"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    .line 332
    const-string v1, "getProp"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    .line 333
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 334
    const-string v2, "sysproperty"

    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dl;->d:Ljava/util/Map;

    .line 336
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->ENV:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 337
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    .line 341
    goto :goto_2d

    .line 338
    :catchall_29
    move-exception v0

    .line 340
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 342
    :goto_2d
    return-void
.end method

.method public static sendInitEventWithTDFeatures(Lcom/tendcloud/tenddata/game/a;)V
    .registers 5

    .line 237
    if-nez p0, :cond_e

    .line 238
    const/4 p0, 0x1

    :try_start_3
    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "TDFeatures is null..."

    aput-object v1, p0, v0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ar;->eForInternal([Ljava/lang/String;)V

    .line 239
    return-void

    .line 241
    :cond_e
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 242
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ab;->a(Lcom/tendcloud/tenddata/game/a;)Z

    move-result v1

    .line 243
    const-string v2, "first"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v2, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/game/dl;-><init>()V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_5e

    .line 248
    :try_start_25
    const-string v3, "app"

    iput-object v3, v2, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    .line 249
    const-string v3, "init"

    iput-object v3, v2, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    .line 250
    iput-object v0, v2, Lcom/tendcloud/tenddata/game/dl;->d:Ljava/util/Map;

    .line 251
    iput-object p0, v2, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 252
    if-eqz v1, :cond_3a

    .line 253
    new-instance v0, Lcom/tendcloud/tenddata/game/cx;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/cx;-><init>(Lcom/tendcloud/tenddata/game/a;)V

    iput-object v0, v2, Lcom/tendcloud/tenddata/game/dl;->f:Lcom/tendcloud/tenddata/game/dt;

    .line 282
    :cond_3a
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_42

    .line 288
    goto :goto_46

    .line 283
    :catchall_42
    move-exception v0

    .line 287
    :try_start_43
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 290
    :goto_46
    new-instance v0, Lcom/tendcloud/tenddata/game/dk;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dk;-><init>()V

    .line 291
    iput-object p0, v0, Lcom/tendcloud/tenddata/game/dk;->a:Lcom/tendcloud/tenddata/game/a;

    .line 292
    sget-object p0, Lcom/tendcloud/tenddata/game/dk$a;->IMMEDIATELY:Lcom/tendcloud/tenddata/game/dk$a;

    iput-object p0, v0, Lcom/tendcloud/tenddata/game/dk;->b:Lcom/tendcloud/tenddata/game/dk$a;

    .line 293
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    .line 295
    if-eqz v1, :cond_5d

    .line 296
    invoke-static {}, Lcom/tendcloud/tenddata/game/ct;->c()V
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_5e

    .line 301
    :cond_5d
    goto :goto_62

    .line 298
    :catchall_5e
    move-exception p0

    .line 300
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 303
    :goto_62
    return-void
.end method


# virtual methods
.method public final onTDEBEventInitEvent(Lcom/tendcloud/tenddata/game/zz$a;)V
    .registers 7

    .line 48
    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "apiType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    .line 49
    return-void

    .line 51
    :cond_14
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v2, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "service"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/a;

    .line 53
    const-string v3, "install"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TRACKING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 54
    new-instance v1, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dl;-><init>()V

    .line 55
    iget-object v3, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 56
    iget-object p1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "domain"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    .line 57
    iput-object v0, v1, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    .line 58
    if-eqz v3, :cond_65

    instance-of p1, v3, Ljava/util/Map;

    if-eqz p1, :cond_65

    .line 59
    check-cast v3, Ljava/util/Map;

    iput-object v3, v1, Lcom/tendcloud/tenddata/game/dl;->d:Ljava/util/Map;

    .line 61
    :cond_65
    iput-object v2, v1, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 62
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    goto :goto_b0

    .line 63
    :cond_6f
    const-string p1, "init"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 64
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/tendcloud/tenddata/game/dd;->a()Lcom/tendcloud/tenddata/game/dd;

    .line 71
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->a()Lcom/tendcloud/tenddata/game/cn;

    .line 72
    invoke-static {}, Lcom/tendcloud/tenddata/game/cs;->a()Lcom/tendcloud/tenddata/game/cs;

    .line 73
    invoke-static {}, Lcom/tendcloud/tenddata/game/co;->a()Lcom/tendcloud/tenddata/game/co;

    .line 74
    invoke-static {}, Lcom/tendcloud/tenddata/game/cp;->a()Lcom/tendcloud/tenddata/game/cp;

    .line 75
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ct;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 76
    invoke-static {}, Lcom/tendcloud/tenddata/game/cl;->a()Lcom/tendcloud/tenddata/game/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/cl;->b()V

    .line 79
    :cond_95
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ct;->a(Lcom/tendcloud/tenddata/game/a;)V

    .line 80
    invoke-static {}, Lcom/tendcloud/tenddata/game/ct;->b()V

    .line 82
    sput-boolean v1, Lcom/tendcloud/tenddata/game/ab;->b:Z

    .line 84
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 85
    invoke-direct {p0, p1, v2}, Lcom/tendcloud/tenddata/game/ct;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 89
    :cond_ac
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ct;->sendInitEventWithTDFeatures(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_af
    .catchall {:try_start_0 .. :try_end_af} :catchall_b2

    goto :goto_b1

    .line 63
    :cond_b0
    :goto_b0
    nop

    .line 96
    :goto_b1
    goto :goto_b6

    .line 93
    :catchall_b2
    move-exception p1

    .line 95
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 98
    :goto_b6
    return-void
.end method
