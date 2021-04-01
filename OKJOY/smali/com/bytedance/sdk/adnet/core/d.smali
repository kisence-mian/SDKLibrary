.class Lcom/bytedance/sdk/adnet/core/d;
.super Ljava/lang/Thread;
.source "CacheDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/d$a;
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/bytedance/sdk/adnet/face/a;

.field private final e:Lcom/bytedance/sdk/adnet/face/c;

.field private volatile f:Z

.field private final g:Lcom/bytedance/sdk/adnet/core/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/p;->a:Z

    sput-boolean v0, Lcom/bytedance/sdk/adnet/core/d;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;>;",
            "Lcom/bytedance/sdk/adnet/face/a;",
            "Lcom/bytedance/sdk/adnet/face/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/d;->f:Z

    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/d;->b:Ljava/util/concurrent/BlockingQueue;

    .line 89
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/d;->c:Ljava/util/concurrent/BlockingQueue;

    .line 90
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/core/d;->d:Lcom/bytedance/sdk/adnet/face/a;

    .line 91
    iput-object p4, p0, Lcom/bytedance/sdk/adnet/core/d;->e:Lcom/bytedance/sdk/adnet/face/c;

    .line 92
    new-instance v0, Lcom/bytedance/sdk/adnet/core/d$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/adnet/core/d$a;-><init>(Lcom/bytedance/sdk/adnet/core/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/d;->g:Lcom/bytedance/sdk/adnet/core/d$a;

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/core/d;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d;->c:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/adnet/core/d;)Lcom/bytedance/sdk/adnet/face/c;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d;->e:Lcom/bytedance/sdk/adnet/face/c;

    return-object v0
.end method

.method private b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Request;

    .line 136
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/core/d;->a(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 137
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/d;->f:Z

    .line 101
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/d;->interrupt()V

    .line 102
    return-void
.end method

.method a(Lcom/bytedance/sdk/adnet/core/Request;)V
    .registers 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x2

    .line 141
    const-string v0, "cache-queue-take"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 146
    :try_start_a
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 147
    const-string v0, "cache-discard-canceled"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_15} :catch_9e
    .catchall {:try_start_a .. :try_end_15} :catchall_c3

    .line 219
    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 221
    :goto_18
    return-void

    .line 152
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d;->d:Lcom/bytedance/sdk/adnet/face/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/adnet/face/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v0

    .line 153
    if-nez v0, :cond_3b

    .line 154
    const-string v0, "cache-miss"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d;->g:Lcom/bytedance/sdk/adnet/core/d$a;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/core/d$a;->a(Lcom/bytedance/sdk/adnet/core/d$a;Lcom/bytedance/sdk/adnet/core/Request;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_37} :catch_9e
    .catchall {:try_start_19 .. :try_end_37} :catchall_c3

    .line 219
    :cond_37
    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    goto :goto_18

    .line 163
    :cond_3b
    :try_start_3b
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/face/a$a;->a()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 164
    const-string v1, "cache-hit-expired"

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->setCacheEntry(Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d;->g:Lcom/bytedance/sdk/adnet/core/d$a;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/core/d$a;->a(Lcom/bytedance/sdk/adnet/core/d$a;Lcom/bytedance/sdk/adnet/core/Request;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_56} :catch_9e
    .catchall {:try_start_3b .. :try_end_56} :catchall_c3

    .line 219
    :cond_56
    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    goto :goto_18

    .line 173
    :cond_5a
    :try_start_5a
    const-string v1, "cache-hit"

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 174
    new-instance v1, Lcom/bytedance/sdk/adnet/core/j;

    iget-object v2, v0, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    iget-object v3, v0, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/adnet/core/j;-><init>([BLjava/util/Map;)V

    .line 175
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/core/j;)Lcom/bytedance/sdk/adnet/core/n;

    move-result-object v1

    .line 177
    const-string v2, "cache-hit-parsed"

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/face/a$a;->b()Z

    move-result v2

    if-nez v2, :cond_80

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d;->e:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/n;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_7c} :catch_9e
    .catchall {:try_start_5a .. :try_end_7c} :catchall_c3

    .line 219
    :goto_7c
    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    goto :goto_18

    .line 186
    :cond_80
    :try_start_80
    const-string v2, "cache-hit-refresh-needed"

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->setCacheEntry(Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/bytedance/sdk/adnet/core/n;->d:Z

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d;->g:Lcom/bytedance/sdk/adnet/core/d$a;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/core/d$a;->a(Lcom/bytedance/sdk/adnet/core/d$a;Lcom/bytedance/sdk/adnet/core/Request;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 194
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d;->e:Lcom/bytedance/sdk/adnet/face/c;

    new-instance v2, Lcom/bytedance/sdk/adnet/core/d$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/adnet/core/d$1;-><init>(Lcom/bytedance/sdk/adnet/core/d;Lcom/bytedance/sdk/adnet/core/Request;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/n;Ljava/lang/Runnable;)V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_9d} :catch_9e
    .catchall {:try_start_80 .. :try_end_9d} :catchall_c3

    goto :goto_7c

    .line 214
    :catch_9e
    move-exception v0

    .line 215
    :try_start_9f
    const-string v1, "CacheDispatcher Unhandled Throwable %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    new-instance v1, Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/Throwable;)V

    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d;->e:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V
    :try_end_b8
    .catchall {:try_start_9f .. :try_end_b8} :catchall_c3

    .line 219
    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    goto/16 :goto_18

    .line 211
    :cond_bd
    :try_start_bd
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d;->e:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/n;)V
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_c2} :catch_9e
    .catchall {:try_start_bd .. :try_end_c2} :catchall_c3

    goto :goto_7c

    .line 219
    :catchall_c3
    move-exception v0

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 220
    throw v0
.end method

.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 106
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/d;->a:Z

    if-eqz v0, :cond_c

    const-string v0, "start new dispatcher"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_c
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d;->d:Lcom/bytedance/sdk/adnet/face/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/adnet/face/a;->a()V

    .line 114
    :goto_16
    :try_start_16
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/core/d;->b()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_16

    .line 115
    :catch_1a
    move-exception v0

    .line 117
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/d;->f:Z

    if-eqz v0, :cond_27

    .line 118
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 119
    return-void

    .line 121
    :cond_27
    const-string v0, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/p;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method
