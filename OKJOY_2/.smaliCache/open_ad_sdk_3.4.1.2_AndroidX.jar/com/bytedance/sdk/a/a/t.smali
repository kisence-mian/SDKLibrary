.class public Lcom/bytedance/sdk/a/a/t;
.super Ljava/lang/Object;
.source "Timeout.java"


# static fields
.field public static final c:Lcom/bytedance/sdk/a/a/t;


# instance fields
.field private a:Z

.field private b:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/bytedance/sdk/a/a/t$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/t$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/a/t;->c:Lcom/bytedance/sdk/a/a/t;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method public a(J)Lcom/bytedance/sdk/a/a/t;
    .registers 4

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/a/t;->a:Z

    .line 122
    iput-wide p1, p0, Lcom/bytedance/sdk/a/a/t;->b:J

    .line 123
    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/a/t;
    .registers 6

    .line 84
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_17

    .line 85
    if-eqz p3, :cond_f

    .line 86
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/a/a/t;->d:J

    .line 87
    return-object p0

    .line 85
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_17
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeout < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public b_()J
    .registers 3

    .line 94
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/t;->d:J

    return-wide v0
.end method

.method public c()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/t;->a:Z

    return v0
.end method

.method public c_()J
    .registers 3

    .line 111
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/t;->a:Z

    if-eqz v0, :cond_7

    .line 112
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/t;->b:J

    return-wide v0

    .line 111
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lcom/bytedance/sdk/a/a/t;
    .registers 3

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/a/a/t;->d:J

    .line 140
    return-object p0
.end method

.method public f()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/a/t;->a:Z

    .line 148
    return-object p0
.end method

.method public g()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_21

    .line 162
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/t;->a:Z

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/t;->b:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    goto :goto_20

    .line 163
    :cond_18
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_20
    :goto_20
    return-void

    .line 158
    :cond_21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 159
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
