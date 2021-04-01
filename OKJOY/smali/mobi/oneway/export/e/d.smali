.class public Lmobi/oneway/export/e/d;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/oneway/export/e/d$a;
    }
.end annotation


# instance fields
.field private a:Lmobi/oneway/export/e/d$a;

.field private b:J

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>(Lmobi/oneway/export/e/d$a;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lmobi/oneway/export/e/d;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/oneway/export/e/d;->d:Z

    iput-object p1, p0, Lmobi/oneway/export/e/d;->a:Lmobi/oneway/export/e/d$a;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_14

    iput-wide p2, p0, Lmobi/oneway/export/e/d;->b:J

    :cond_14
    return-void
.end method

.method static synthetic a(Lmobi/oneway/export/e/d;)Lmobi/oneway/export/e/d$a;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/e/d;->a:Lmobi/oneway/export/e/d$a;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/oneway/export/e/d;->c:J

    :cond_9
    :goto_9
    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/e/b;->d()Z

    move-result v0

    if-nez v0, :cond_38

    iget-boolean v0, p0, Lmobi/oneway/export/e/d;->d:Z

    if-nez v0, :cond_38

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmobi/oneway/export/e/d;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lmobi/oneway/export/e/d;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/oneway/export/e/d;->d:Z

    iget-object v0, p0, Lmobi/oneway/export/e/d;->a:Lmobi/oneway/export/e/d$a;

    if-eqz v0, :cond_9

    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    new-instance v1, Lmobi/oneway/export/e/d$1;

    invoke-direct {v1, p0}, Lmobi/oneway/export/e/d$1;-><init>(Lmobi/oneway/export/e/d;)V

    invoke-virtual {v0, v1}, Lmobi/oneway/export/e/b;->c(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_38
    return-void
.end method
