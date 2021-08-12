.class public Lcom/bytedance/tea/crash/d/a;
.super Ljava/lang/Object;
.source "CrashCatchDispatcher.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lcom/bytedance/tea/crash/d/a;


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/bytedance/tea/crash/d/b;

.field private e:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/d/a;->c:Ljava/util/HashSet;

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/tea/crash/d/a;->e:J

    .line 38
    invoke-direct {p0}, Lcom/bytedance/tea/crash/d/a;->c()V

    .line 39
    invoke-direct {p0}, Lcom/bytedance/tea/crash/d/a;->b()V

    .line 40
    return-void
.end method

.method public static a()Lcom/bytedance/tea/crash/d/a;
    .registers 1

    .line 66
    sget-object v0, Lcom/bytedance/tea/crash/d/a;->a:Lcom/bytedance/tea/crash/d/a;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Lcom/bytedance/tea/crash/d/a;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/d/a;-><init>()V

    sput-object v0, Lcom/bytedance/tea/crash/d/a;->a:Lcom/bytedance/tea/crash/d/a;

    .line 69
    :cond_b
    sget-object v0, Lcom/bytedance/tea/crash/d/a;->a:Lcom/bytedance/tea/crash/d/a;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/d/a;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/bytedance/tea/crash/d/a;->c()V

    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .registers 5

    .line 128
    invoke-static {}, Lcom/bytedance/tea/crash/h;->b()Lcom/bytedance/tea/crash/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/b;->d()Lcom/bytedance/tea/crash/f;

    move-result-object v0

    .line 130
    const/4 v1, 0x1

    if-eqz v0, :cond_16

    :try_start_b
    invoke-interface {v0, p2, p1}, Lcom/bytedance/tea/crash/f;->a(Ljava/lang/Throwable;Ljava/lang/Thread;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    if-eqz p1, :cond_12

    goto :goto_16

    :cond_12
    const/4 v1, 0x0

    goto :goto_16

    .line 131
    :catchall_14
    move-exception p1

    .line 132
    return v1

    .line 130
    :cond_16
    :goto_16
    return v1
.end method

.method private b()V
    .registers 2

    .line 45
    :try_start_0
    new-instance v0, Lcom/bytedance/tea/crash/d/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/d/a$1;-><init>(Lcom/bytedance/tea/crash/d/a;)V

    .line 60
    invoke-virtual {v0}, Lcom/bytedance/tea/crash/d/a$1;->start()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    .line 62
    goto :goto_a

    .line 61
    :catchall_9
    move-exception v0

    .line 63
    :goto_a
    return-void
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    .line 139
    invoke-static {}, Lcom/bytedance/tea/crash/h;->b()Lcom/bytedance/tea/crash/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/b;->b()Ljava/util/List;

    move-result-object v0

    .line 140
    sget-object v1, Lcom/bytedance/tea/crash/c;->b:Lcom/bytedance/tea/crash/c;

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/tea/crash/e;

    .line 145
    :try_start_1a
    invoke-static {p2}, Lcom/bytedance/tea/crash/g/m;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3, p1}, Lcom/bytedance/tea/crash/e;->a(Lcom/bytedance/tea/crash/c;Ljava/lang/String;Ljava/lang/Thread;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    .line 148
    goto :goto_26

    .line 146
    :catchall_22
    move-exception v2

    .line 147
    invoke-static {v2}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 149
    :goto_26
    goto :goto_e

    .line 150
    :cond_27
    return-void
.end method

.method private c()V
    .registers 3

    .line 80
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 81
    if-eq v0, p0, :cond_15

    .line 82
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 83
    iget-object v1, p0, Lcom/bytedance/tea/crash/d/a;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v1, :cond_10

    .line 84
    iput-object v0, p0, Lcom/bytedance/tea/crash/d/a;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_15

    .line 86
    :cond_10
    iget-object v1, p0, Lcom/bytedance/tea/crash/d/a;->c:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_15
    :goto_15
    return-void
.end method

.method private c(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/d/a;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_1e

    .line 163
    :try_start_12
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    .line 165
    goto :goto_17

    .line 164
    :catchall_16
    move-exception v1

    .line 166
    :goto_17
    goto :goto_6

    .line 167
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/bytedance/tea/crash/d/a;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1e

    .line 169
    goto :goto_1f

    .line 168
    :catchall_1e
    move-exception p1

    .line 170
    :goto_1f
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/tea/crash/d/b;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/bytedance/tea/crash/d/a;->d:Lcom/bytedance/tea/crash/d/b;

    .line 77
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/tea/crash/d/a;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    .line 94
    return-void

    .line 96
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    :try_start_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/tea/crash/d/a;->e:J

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/bytedance/tea/crash/d/a;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_51

    .line 100
    if-nez v2, :cond_22

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/bytedance/tea/crash/d/a;->c(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 101
    return-void

    .line 103
    :cond_22
    :try_start_22
    sget-object v3, Lcom/bytedance/tea/crash/c;->b:Lcom/bytedance/tea/crash/c;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/bytedance/tea/crash/d/a;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 108
    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/bytedance/tea/crash/d/a;->d:Lcom/bytedance/tea/crash/d/b;

    if-eqz v2, :cond_55

    invoke-interface {v2, p2}, Lcom/bytedance/tea/crash/d/b;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 110
    iget-object v2, p0, Lcom/bytedance/tea/crash/d/a;->d:Lcom/bytedance/tea/crash/d/b;

    invoke-interface {v2, v0, v1, p1, p2}, Lcom/bytedance/tea/crash/d/b;->a(JLjava/lang/Thread;Ljava/lang/Throwable;)V

    .line 111
    const-string v0, "crash_dispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end dispose "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_22 .. :try_end_50} :catchall_51

    goto :goto_55

    .line 113
    :catchall_51
    move-exception v0

    .line 114
    :try_start_52
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->a(Ljava/lang/Throwable;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5a

    .line 116
    :cond_55
    :goto_55
    invoke-direct {p0, p1, p2}, Lcom/bytedance/tea/crash/d/a;->c(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 117
    nop

    .line 118
    return-void

    .line 116
    :catchall_5a
    move-exception v0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/tea/crash/d/a;->c(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    throw v0
.end method
