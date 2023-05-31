.class Lcom/tencent/smtt/sdk/bt;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/smtt/sdk/bt;

.field private static e:Ljava/nio/channels/FileLock;


# instance fields
.field private b:Lcom/tencent/smtt/sdk/bu;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/sdk/bt;->e:Ljava/nio/channels/FileLock;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/smtt/sdk/bt;
    .registers 2

    sget-object v0, Lcom/tencent/smtt/sdk/bt;->a:Lcom/tencent/smtt/sdk/bt;

    if-nez v0, :cond_13

    const-class v1, Lcom/tencent/smtt/sdk/bt;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tencent/smtt/sdk/bt;->a:Lcom/tencent/smtt/sdk/bt;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tencent/smtt/sdk/bt;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/bt;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/bt;->a:Lcom/tencent/smtt/sdk/bt;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/tencent/smtt/sdk/bt;->a:Lcom/tencent/smtt/sdk/bt;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Z)Lcom/tencent/smtt/sdk/bu;
    .registers 3

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bt;->b:Lcom/tencent/smtt/sdk/bu;

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    goto :goto_4
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 11

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    const-string v1, "X5CoreEngine"

    const-string v3, "init #1"

    invoke-static {v1, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/smtt/sdk/o;->a(Z)Lcom/tencent/smtt/sdk/o;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v1, v4}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;ZZ)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/bh;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/o;->b()Z

    move-result v1

    if-eqz v1, :cond_13c

    if-eqz v5, :cond_13c

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/bt;->d:Z

    if-nez v1, :cond_144

    new-instance v1, Lcom/tencent/smtt/sdk/bu;

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/bh;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/tencent/smtt/sdk/bu;-><init>(Lcom/tencent/smtt/export/external/DexLoader;)V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/bt;->b:Lcom/tencent/smtt/sdk/bu;
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_139

    :try_start_33
    iget-object v1, p0, Lcom/tencent/smtt/sdk/bt;->b:Lcom/tencent/smtt/sdk/bu;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/bu;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/bt;->c:Z

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/bt;->c:Z

    if-nez v1, :cond_44

    const-string v1, "can not use X5 by x5corewizard return false"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_33 .. :try_end_44} :catch_116
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_44} :catch_11d
    .catchall {:try_start_33 .. :try_end_44} :catchall_139

    :cond_44
    move-object v1, v2

    :goto_45
    :try_start_45
    iget-boolean v6, p0, Lcom/tencent/smtt/sdk/bt;->c:Z

    if-eqz v6, :cond_59

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, p1, v7, v8}, Lcom/tencent/smtt/sdk/CookieManager;->a(Landroid/content/Context;ZZ)V

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/CookieManager;->a()V

    :cond_59
    :goto_59
    const-string v6, "X5CoreEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "init  mCanUseX5 is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/tencent/smtt/sdk/bt;->c:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/tencent/smtt/sdk/bt;->c:Z

    if-nez v6, :cond_1b1

    const-string v6, "X5CoreEngine"

    const-string v7, "mCanUseX5 is false --> report"

    invoke-static {v6, v7}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/o;->b()Z
    :try_end_7d
    .catchall {:try_start_45 .. :try_end_7d} :catchall_139

    move-result v6

    if-eqz v6, :cond_16e

    if-eqz v5, :cond_16e

    if-nez v1, :cond_16e

    :try_start_84
    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/bh;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v1

    if-eqz v1, :cond_98

    const-string v2, "com.tencent.tbs.tbsshell.TBSShell"

    const-string v3, "getLoadFailureDetails"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_98
    instance-of v1, v2, Ljava/lang/Throwable;

    if-eqz v1, :cond_ce

    move-object v0, v2

    check-cast v0, Ljava/lang/Throwable;

    move-object v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; cause: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; th: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ce
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_e4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "failure detail:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_e4} :catch_147
    .catchall {:try_start_84 .. :try_end_e4} :catchall_139

    :cond_e4
    :goto_e4
    :try_start_e4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isPreloadX5Disabled:-10000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14c

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x198

    new-instance v3, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "X5CoreEngine::init, mCanUseX5=false, available true, details: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    :cond_111
    :goto_111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/bt;->d:Z
    :try_end_114
    .catchall {:try_start_e4 .. :try_end_114} :catchall_139

    monitor-exit p0

    return-void

    :catch_116
    move-exception v1

    const/4 v1, 0x1

    :try_start_118
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/bt;->c:Z

    move-object v1, v2

    goto/16 :goto_45

    :catch_11d
    move-exception v1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/tencent/smtt/sdk/bt;->c:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "can not use x5 by throwable "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_137
    .catchall {:try_start_118 .. :try_end_137} :catchall_139

    goto/16 :goto_45

    :catchall_139
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_13c
    const/4 v1, 0x0

    :try_start_13d
    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/bt;->c:Z

    const-string v1, "can not use X5 by !tbs available"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_144
    move-object v1, v2

    goto/16 :goto_59

    :catch_147
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e4

    :cond_14c
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x197

    new-instance v3, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "X5CoreEngine::init, mCanUseX5=false, available true, details: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto :goto_111

    :cond_16e
    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/o;->b()Z

    move-result v2

    if-eqz v2, :cond_192

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v2

    const/16 v3, 0x199

    new-instance v4, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mCanUseX5=false, available true, reason: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3, v4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto :goto_111

    :cond_192
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v2

    const/16 v3, 0x19a

    new-instance v4, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mCanUseX5=false, available false, reason: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3, v4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto/16 :goto_111

    :cond_1b1
    const-string v1, "X5CoreEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init  sTbsCoreLoadFileLock is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/smtt/sdk/bt;->e:Ljava/nio/channels/FileLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/smtt/sdk/bt;->e:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_111

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/bt;->b(Landroid/content/Context;)Ljava/nio/channels/FileLock;
    :try_end_1ce
    .catchall {:try_start_13d .. :try_end_1ce} :catchall_139

    goto/16 :goto_111
.end method

.method public b(Landroid/content/Context;)Ljava/nio/channels/FileLock;
    .registers 5

    const-string v0, "X5CoreEngine"

    const-string v1, "tryTbsCoreLoadFileLock ##"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/bt;->e:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/tencent/smtt/sdk/bt;->e:Ljava/nio/channels/FileLock;

    :goto_d
    return-object v0

    :cond_e
    const-class v1, Lcom/tencent/smtt/sdk/bt;

    monitor-enter v1

    :try_start_11
    sget-object v0, Lcom/tencent/smtt/sdk/bt;->e:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_24

    invoke-static {p1}, Lcom/tencent/smtt/utils/k;->e(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/bt;->e:Ljava/nio/channels/FileLock;

    if-nez v0, :cond_28

    const-string v0, "X5CoreEngine"

    const-string v2, "init -- sTbsCoreLoadFileLock failed!"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    :goto_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_30

    sget-object v0, Lcom/tencent/smtt/sdk/bt;->e:Ljava/nio/channels/FileLock;

    goto :goto_d

    :cond_28
    :try_start_28
    const-string v0, "X5CoreEngine"

    const-string v2, "init -- sTbsCoreLoadFileLock succeeded!"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public b()Z
    .registers 2

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/bt;->c:Z

    goto :goto_5
.end method

.method public c()Lcom/tencent/smtt/sdk/bu;
    .registers 2

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/tencent/smtt/sdk/bt;->b:Lcom/tencent/smtt/sdk/bu;

    goto :goto_5
.end method

.method d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/bt;->d:Z

    return v0
.end method
