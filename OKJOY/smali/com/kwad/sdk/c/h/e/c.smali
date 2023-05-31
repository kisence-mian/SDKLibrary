.class public abstract Lcom/kwad/sdk/c/h/e/c;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field protected a:Lcom/kwad/sdk/c/h/e/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private b:Ljava/util/Timer;

.field private c:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/c/h/e/d;)V
    .registers 3
    .param p2    # Lcom/kwad/sdk/c/h/e/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/kwad/sdk/c/h/e/c;->a:Lcom/kwad/sdk/c/h/e/d;

    return-void
.end method


# virtual methods
.method protected abstract a(I)V
.end method

.method protected b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->b:Ljava/util/Timer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/kwad/sdk/c/h/e/c;->b:Ljava/util/Timer;

    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->c:Ljava/util/TimerTask;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/kwad/sdk/c/h/e/c;->c:Ljava/util/TimerTask;

    :cond_13
    return-void
.end method

.method protected abstract c()V
.end method

.method protected d()V
    .registers 7

    invoke-virtual {p0}, Lcom/kwad/sdk/c/h/e/c;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->b:Ljava/util/Timer;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->b:Ljava/util/Timer;

    :cond_e
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->c:Ljava/util/TimerTask;

    if-nez v0, :cond_19

    new-instance v0, Lcom/kwad/sdk/c/h/e/c$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/c/h/e/c$a;-><init>(Lcom/kwad/sdk/c/h/e/c;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->c:Ljava/util/TimerTask;

    :cond_19
    iget-object v0, p0, Lcom/kwad/sdk/c/h/e/c;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/kwad/sdk/c/h/e/c;->c:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method protected abstract e()V
.end method
