.class final Lcom/efs/sdk/pa/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/pa/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/efs/sdk/pa/a/a;


# direct methods
.method constructor <init>(Lcom/efs/sdk/pa/a/a;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 57
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 1027
    iget-boolean v0, v0, Lcom/efs/sdk/pa/a/a;->f:Z

    .line 57
    if-eqz v0, :cond_7

    .line 58
    return-void

    .line 61
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 2027
    iget-wide v2, v2, Lcom/efs/sdk/pa/a/a;->j:J

    .line 61
    sub-long/2addr v0, v2

    .line 62
    iget-object v2, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 3027
    iget-wide v2, v2, Lcom/efs/sdk/pa/a/a;->k:J

    .line 62
    cmp-long v4, v0, v2

    if-lez v4, :cond_29

    .line 63
    iget-object v2, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 4027
    iget-object v2, v2, Lcom/efs/sdk/pa/a/a;->h:Lcom/efs/sdk/pa/PAANRListener;

    .line 63
    if-eqz v2, :cond_29

    .line 64
    iget-object v2, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 5027
    iget-object v2, v2, Lcom/efs/sdk/pa/a/a;->h:Lcom/efs/sdk/pa/PAANRListener;

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/efs/sdk/pa/PAANRListener;->unexcept(Ljava/lang/Object;)V

    .line 68
    :cond_29
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 6027
    iget-boolean v0, v0, Lcom/efs/sdk/pa/a/a;->a:Z

    .line 68
    if-eqz v0, :cond_46

    .line 69
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 7027
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/efs/sdk/pa/a/a;->i:J

    .line 70
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 8027
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/efs/sdk/pa/a/a;->a:Z

    .line 71
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 9027
    iget-object v0, v0, Lcom/efs/sdk/pa/a/a;->b:Landroid/os/Handler;

    .line 71
    iget-object v1, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 10027
    iget-object v1, v1, Lcom/efs/sdk/pa/a/a;->n:Ljava/lang/Runnable;

    .line 71
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_9c

    .line 74
    :cond_46
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 11027
    iget-wide v1, v0, Lcom/efs/sdk/pa/a/a;->i:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/efs/sdk/pa/a/a;->i:J

    .line 75
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 12027
    iget-boolean v0, v0, Lcom/efs/sdk/pa/a/a;->a:Z

    .line 75
    if-nez v0, :cond_9c

    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 13027
    iget-wide v0, v0, Lcom/efs/sdk/pa/a/a;->i:J

    .line 75
    iget-object v2, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 14027
    iget-wide v2, v2, Lcom/efs/sdk/pa/a/a;->e:J

    .line 75
    cmp-long v4, v0, v2

    if-ltz v4, :cond_9c

    .line 77
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 15027
    iget-wide v0, v0, Lcom/efs/sdk/pa/a/a;->i:J

    .line 77
    iget-object v2, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 16027
    iget-wide v2, v2, Lcom/efs/sdk/pa/a/a;->e:J

    .line 77
    cmp-long v4, v0, v2

    if-nez v4, :cond_9c

    .line 78
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 17027
    nop

    .line 17224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17225
    iget-boolean v2, v0, Lcom/efs/sdk/pa/a/a;->l:Z

    if-eqz v2, :cond_83

    .line 17226
    iget-object v2, v0, Lcom/efs/sdk/pa/a/a;->c:Ljava/lang/Thread;

    invoke-static {v2}, Lcom/efs/sdk/pa/a/a;->a(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_89

    .line 17228
    :cond_83
    invoke-static {v1}, Lcom/efs/sdk/pa/a/a;->a(Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 17233
    :goto_89
    iget-object v2, v0, Lcom/efs/sdk/pa/a/a;->h:Lcom/efs/sdk/pa/PAANRListener;

    if-eqz v2, :cond_9c

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_9c

    .line 17234
    iget-object v0, v0, Lcom/efs/sdk/pa/a/a;->h:Lcom/efs/sdk/pa/PAANRListener;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/efs/sdk/pa/PAANRListener;->anrStack(Ljava/lang/String;)V

    .line 83
    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 18027
    iput-wide v1, v0, Lcom/efs/sdk/pa/a/a;->j:J

    .line 84
    iget-object v0, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 19027
    iget-object v0, v0, Lcom/efs/sdk/pa/a/a;->g:Landroid/os/Handler;

    .line 84
    iget-object v1, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 20027
    iget-object v1, v1, Lcom/efs/sdk/pa/a/a;->m:Ljava/lang/Runnable;

    .line 84
    iget-object v2, p0, Lcom/efs/sdk/pa/a/a$1;->a:Lcom/efs/sdk/pa/a/a;

    .line 21027
    iget-wide v2, v2, Lcom/efs/sdk/pa/a/a;->d:J

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    return-void
.end method
