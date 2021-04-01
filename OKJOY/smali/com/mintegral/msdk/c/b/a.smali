.class public final Lcom/mintegral/msdk/c/b/a;
.super Ljava/lang/Object;
.source "ActiveAppUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/c/b/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "ActiveAppUtil"

    iput-object v0, p0, Lcom/mintegral/msdk/c/b/a;->a:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/c/b/a;->c:Z

    .line 170
    new-instance v0, Lcom/mintegral/msdk/c/b/a$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/c/b/a$1;-><init>(Lcom/mintegral/msdk/c/b/a;)V

    iput-object v0, p0, Lcom/mintegral/msdk/c/b/a;->d:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mintegral/msdk/c/b/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/mintegral/msdk/c/b/a;
    .registers 1

    .prologue
    .line 41
    invoke-static {}, Lcom/mintegral/msdk/c/b/a$a;->a()Lcom/mintegral/msdk/c/b/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/c/b/a;)V
    .registers 7

    .prologue
    .line 1124
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_ef

    .line 1127
    iget-object v0, p0, Lcom/mintegral/msdk/c/b/a;->b:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mintegral/msdk/c/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_19

    .line 1128
    :cond_16
    invoke-virtual {p0}, Lcom/mintegral/msdk/c/b/a;->b()V

    .line 1131
    :cond_19
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    const-string v1, "active_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1134
    :try_start_2e
    iget-object v0, p0, Lcom/mintegral/msdk/c/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ef

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/a;

    .line 1135
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1137
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "service"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 1139
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ef

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ef

    .line 1142
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1144
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_86

    .line 1145
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    :cond_86
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_f0

    .line 1148
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1154
    :cond_97
    :goto_97
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "broadcast"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1156
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ef

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ef

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ef

    .line 1159
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1160
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_e3
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_e3} :catch_e5

    goto/16 :goto_34

    .line 1164
    :catch_e5
    move-exception v0

    .line 1165
    const-string v1, "ActiveAppUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    :cond_ef
    return-void

    .line 1150
    :cond_f0
    :try_start_f0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_fb} :catch_e5

    goto :goto_97
.end method


# virtual methods
.method public final b()V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mintegral/msdk/c/b/a;->d:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 50
    iget-object v0, p0, Lcom/mintegral/msdk/c/b/a;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 52
    :cond_a
    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/mintegral/msdk/c/b/a;->c:Z

    return v0
.end method

.method public final declared-synchronized d()V
    .registers 4

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 60
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1c

    .line 63
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->bi()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1e

    .line 64
    invoke-virtual {p0}, Lcom/mintegral/msdk/c/b/a;->b()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_2e

    .line 74
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    .line 66
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->bk()Ljava/util/List;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_31

    .line 68
    :cond_2a
    invoke-virtual {p0}, Lcom/mintegral/msdk/c/b/a;->b()V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2e

    goto :goto_1c

    .line 59
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_31
    :try_start_31
    iput-object v0, p0, Lcom/mintegral/msdk/c/b/a;->b:Ljava/util/List;
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_2e

    goto :goto_1c
.end method

.method public final declared-synchronized e()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x2

    .line 77
    monitor-enter p0

    :try_start_4
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_81

    move-result-object v0

    if-nez v0, :cond_10

    .line 121
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    .line 81
    :cond_10
    :try_start_10
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 82
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->bi()I

    move-result v0

    if-eq v0, v2, :cond_e

    .line 87
    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->bk()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/c/b/a;->b:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/mintegral/msdk/c/b/a;->b:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mintegral/msdk/c/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 92
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    const-string v2, "active_last_time"

    const-wide/16 v4, 0x0

    .line 93
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 92
    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 95
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 96
    cmp-long v4, v2, v6

    if-nez v4, :cond_84

    .line 97
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 98
    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->bj()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 113
    :goto_66
    iget-object v1, p0, Lcom/mintegral/msdk/c/b/a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/c/b/a;->c:Z

    .line 117
    const-string v0, "ActiveAppUtil"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_75} :catch_76
    .catchall {:try_start_10 .. :try_end_75} :catchall_81

    goto :goto_e

    .line 118
    :catch_76
    move-exception v0

    .line 119
    :try_start_77
    const-string v1, "ActiveAppUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_81

    goto :goto_e

    .line 77
    :catchall_81
    move-exception v0

    monitor-exit p0

    throw v0

    .line 100
    :cond_84
    :try_start_84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 101
    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->bj()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    .line 103
    int-to-long v4, v1

    cmp-long v4, v2, v4

    if-lez v4, :cond_9b

    .line 104
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 105
    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_66

    .line 107
    :cond_9b
    const/4 v4, 0x2

    iput v4, v0, Landroid/os/Message;->what:I

    .line 108
    int-to-long v4, v1

    sub-long v2, v4, v2

    long-to-int v2, v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 109
    iput v1, v0, Landroid/os/Message;->arg2:I
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_a6} :catch_76
    .catchall {:try_start_84 .. :try_end_a6} :catchall_81

    goto :goto_66
.end method
