.class public final Lcom/tencent/bugly/proguard/aa;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/lang/String;

.field private c:J

.field private final d:J

.field private e:Z

.field private f:J


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/String;J)V
    .registers 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/tencent/bugly/proguard/aa;->a:Landroid/os/Handler;

    .line 25
    iput-object p2, p0, Lcom/tencent/bugly/proguard/aa;->b:Ljava/lang/String;

    .line 26
    iput-wide p3, p0, Lcom/tencent/bugly/proguard/aa;->c:J

    iput-wide p3, p0, Lcom/tencent/bugly/proguard/aa;->d:J

    .line 27
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/aa;->e:Z

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 34
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/aa;->e:Z

    if-nez v0, :cond_5

    .line 35
    return-void

    .line 37
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/aa;->e:Z

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/aa;->f:J

    .line 39
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aa;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method

.method public final a(J)V
    .registers 3

    .line 81
    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/aa;->c:J

    .line 82
    return-void
.end method

.method public final b()Z
    .registers 7

    .line 46
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/aa;->e:Z

    if-nez v0, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/aa;->f:J

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/aa;->c:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .registers 5

    .line 53
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/aa;->e:Z

    if-eqz v0, :cond_6

    .line 54
    const/4 v0, 0x0

    return v0

    .line 56
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/aa;->f:J

    sub-long/2addr v0, v2

    .line 57
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/aa;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    .line 58
    const/4 v0, 0x1

    return v0

    .line 60
    :cond_15
    const/4 v0, 0x3

    return v0
.end method

.method public final d()Ljava/lang/Thread;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aa;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()V
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/aa;->d:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/aa;->c:J

    .line 93
    return-void
.end method

.method public final run()V
    .registers 3

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/aa;->e:Z

    .line 77
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/aa;->d:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/aa;->c:J

    .line 78
    return-void
.end method
