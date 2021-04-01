.class public Lcom/mintegral/msdk/rover/b;
.super Ljava/lang/Object;
.source "RoverController.java"


# static fields
.field private static d:Lcom/mintegral/msdk/rover/b;


# instance fields
.field a:Landroid/content/Context;

.field b:J

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/mintegral/msdk/rover/b;->b:J

    .line 21
    new-instance v0, Lcom/mintegral/msdk/rover/b$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/rover/b$1;-><init>(Lcom/mintegral/msdk/rover/b;)V

    iput-object v0, p0, Lcom/mintegral/msdk/rover/b;->c:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method public static a()Lcom/mintegral/msdk/rover/b;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lcom/mintegral/msdk/rover/b;->d:Lcom/mintegral/msdk/rover/b;

    if-nez v0, :cond_13

    .line 38
    const-class v1, Lcom/mintegral/msdk/rover/b;

    monitor-enter v1

    .line 39
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/rover/b;->d:Lcom/mintegral/msdk/rover/b;

    if-nez v0, :cond_12

    .line 40
    new-instance v0, Lcom/mintegral/msdk/rover/b;

    invoke-direct {v0}, Lcom/mintegral/msdk/rover/b;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/rover/b;->d:Lcom/mintegral/msdk/rover/b;

    .line 42
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 44
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/rover/b;->d:Lcom/mintegral/msdk/rover/b;

    return-object v0

    .line 42
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/rover/b;)V
    .registers 5

    .prologue
    .line 2066
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2067
    iget-object v2, p0, Lcom/mintegral/msdk/rover/b;->a:Landroid/content/Context;

    sget-object v3, Lcom/mintegral/msdk/rover/a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2069
    new-instance v0, Lcom/mintegral/msdk/rover/g;

    iget-object v1, p0, Lcom/mintegral/msdk/rover/b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/rover/g;-><init>(Landroid/content/Context;B)V

    .line 2070
    new-instance v1, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 2071
    new-instance v2, Lcom/mintegral/msdk/rover/b$2;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/rover/b$2;-><init>(Lcom/mintegral/msdk/rover/b;)V

    .line 2091
    sget-object v3, Lcom/mintegral/msdk/rover/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/mintegral/msdk/rover/g;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    .line 18
    return-void
.end method

.method private c()Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 100
    .line 101
    iget-object v1, p0, Lcom/mintegral/msdk/rover/b;->a:Landroid/content/Context;

    if-eqz v1, :cond_43

    .line 104
    :try_start_5
    iget-object v1, p0, Lcom/mintegral/msdk/rover/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/mintegral/msdk/rover/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 106
    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 109
    sub-long v6, v4, v2

    iget-wide v8, p0, Lcom/mintegral/msdk/rover/b;->b:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_25

    .line 110
    const/4 v0, 0x1

    .line 113
    :cond_25
    const-string v1, ""

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currentTime="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",lastUpdateTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_43} :catch_44

    .line 119
    :cond_43
    :goto_43
    return v0

    .line 115
    :catch_44
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mintegral/msdk/rover/b;->a:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public final b()V
    .registers 15

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v12, 0x0

    const/4 v4, 0x0

    .line 52
    iget-object v0, p0, Lcom/mintegral/msdk/rover/b;->a:Landroid/content/Context;

    if-nez v0, :cond_11

    .line 53
    const-string v0, "RoverController"

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_10
    :goto_10
    return-void

    .line 56
    :cond_11
    invoke-direct {p0}, Lcom/mintegral/msdk/rover/b;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1124
    iget-object v0, p0, Lcom/mintegral/msdk/rover/b;->a:Landroid/content/Context;

    sget-object v1, Lcom/mintegral/msdk/rover/a;->f:Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1127
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_68

    .line 1128
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1130
    :goto_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1131
    sget v5, Lcom/mintegral/msdk/rover/a;->e:I

    .line 1132
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 1133
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v8

    .line 1132
    invoke-static {v8}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v8

    .line 1134
    if-eqz v8, :cond_51

    invoke-virtual {v8}, Lcom/mintegral/msdk/c/a;->ac()J

    move-result-wide v10

    cmp-long v9, v10, v12

    if-lez v9, :cond_51

    .line 1135
    invoke-virtual {v8}, Lcom/mintegral/msdk/c/a;->ac()J

    move-result-wide v8

    long-to-int v5, v8

    .line 1137
    :cond_51
    sub-long/2addr v6, v0

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_66

    cmp-long v0, v0, v2

    if-eqz v0, :cond_66

    .line 1138
    const/4 v0, 0x1

    .line 56
    :goto_5c
    if-eqz v0, :cond_10

    .line 58
    iget-object v0, p0, Lcom/mintegral/msdk/rover/b;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_10

    :cond_66
    move v0, v4

    goto :goto_5c

    :cond_68
    move-wide v0, v2

    goto :goto_2d
.end method
