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
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;>;"
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

    .line 42
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/o;->a:Z

    sput-boolean v0, Lcom/bytedance/sdk/adnet/core/d;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/bytedance/sdk/adnet/face/a;Lcom/bytedance/sdk/adnet/face/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;>;",
            "Lcom/bytedance/sdk/adnet/face/a;",
            "Lcom/bytedance/sdk/adnet/face/c;",
            ")V"
        }
    .end annotation

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
    new-instance p1, Lcom/bytedance/sdk/adnet/core/d$a;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/adnet/core/d$a;-><init>(Lcom/bytedance/sdk/adnet/core/d;)V

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/d;->g:Lcom/bytedance/sdk/adnet/core/d$a;

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/core/d;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/core/d;->c:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/adnet/core/d;)Lcom/bytedance/sdk/adnet/face/c;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/core/d;->e:Lcom/bytedance/sdk/adnet/face/c;

    return-object p0
.end method

.method private b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 141
    const-string v0, "cache-queue-take"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 146
    const/4 v1, 0x2

    :try_start_a
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 147
    const-string v2, "cache-discard-canceled"

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_a0

    .line 219
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 148
    return-void

    .line 152
    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/d;->d:Lcom/bytedance/sdk/adnet/face/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/adnet/face/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/face/a$a;

    move-result-object v2

    .line 153
    if-nez v2, :cond_3b

    .line 154
    const-string v2, "cache-miss"

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/d;->g:Lcom/bytedance/sdk/adnet/core/d$a;

    invoke-static {v2, p1}, Lcom/bytedance/sdk/adnet/core/d$a;->a(Lcom/bytedance/sdk/adnet/core/d$a;Lcom/bytedance/sdk/adnet/core/Request;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 157
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/d;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_a0

    .line 219
    :cond_37
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 159
    return-void

    .line 163
    :cond_3b
    :try_start_3b
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/face/a$a;->a()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 164
    const-string v3, "cache-hit-expired"

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/adnet/core/Request;->setCacheEntry(Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 166
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/d;->g:Lcom/bytedance/sdk/adnet/core/d$a;

    invoke-static {v2, p1}, Lcom/bytedance/sdk/adnet/core/d$a;->a(Lcom/bytedance/sdk/adnet/core/d$a;Lcom/bytedance/sdk/adnet/core/Request;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 167
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/d;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_a0

    .line 219
    :cond_56
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 169
    return-void

    .line 173
    :cond_5a
    :try_start_5a
    const-string v3, "cache-hit"

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 174
    new-instance v3, Lcom/bytedance/sdk/adnet/core/i;

    iget-object v4, v2, Lcom/bytedance/sdk/adnet/face/a$a;->b:[B

    iget-object v5, v2, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    invoke-direct {v3, v4, v5}, Lcom/bytedance/sdk/adnet/core/i;-><init>([BLjava/util/Map;)V

    .line 175
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v3

    .line 177
    const-string v4, "cache-hit-parsed"

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/face/a$a;->b()Z

    move-result v4

    if-nez v4, :cond_7d

    .line 181
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/d;->e:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v2, p1, v3}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;)V

    goto :goto_b9

    .line 186
    :cond_7d
    const-string v4, "cache-hit-refresh-needed"

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/adnet/core/Request;->setCacheEntry(Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 189
    iput-boolean v0, v3, Lcom/bytedance/sdk/adnet/core/m;->d:Z

    .line 191
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/d;->g:Lcom/bytedance/sdk/adnet/core/d$a;

    invoke-static {v2, p1}, Lcom/bytedance/sdk/adnet/core/d$a;->a(Lcom/bytedance/sdk/adnet/core/d$a;Lcom/bytedance/sdk/adnet/core/Request;)Z

    move-result v2

    if-nez v2, :cond_9a

    .line 194
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/d;->e:Lcom/bytedance/sdk/adnet/face/c;

    new-instance v4, Lcom/bytedance/sdk/adnet/core/d$1;

    invoke-direct {v4, p0, p1}, Lcom/bytedance/sdk/adnet/core/d$1;-><init>(Lcom/bytedance/sdk/adnet/core/d;Lcom/bytedance/sdk/adnet/core/Request;)V

    invoke-interface {v2, p1, v3, v4}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;Ljava/lang/Runnable;)V

    goto :goto_b9

    .line 211
    :cond_9a
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/d;->e:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v2, p1, v3}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;)V
    :try_end_9f
    .catchall {:try_start_5a .. :try_end_9f} :catchall_a0

    goto :goto_b9

    .line 214
    :catchall_a0
    move-exception v2

    .line 215
    :try_start_a1
    const-string v3, "CacheDispatcher Unhandled Throwable %s"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    new-instance v0, Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/adnet/err/VAdError;-><init>(Ljava/lang/Throwable;)V

    .line 217
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/d;->e:Lcom/bytedance/sdk/adnet/face/c;

    invoke-interface {v2, p1, v0}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/err/VAdError;)V
    :try_end_b9
    .catchall {:try_start_a1 .. :try_end_b9} :catchall_be

    .line 219
    :goto_b9
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 220
    nop

    .line 221
    return-void

    .line 219
    :catchall_be
    move-exception v0

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(I)V

    .line 220
    throw v0
.end method

.method public run()V
    .registers 4

    .line 106
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/d;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

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

    .line 124
    :goto_19
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
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/adnet/core/o;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19
.end method
