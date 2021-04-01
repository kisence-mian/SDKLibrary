.class final Lcom/mintegral/msdk/playercommon/b$15;
.super Ljava/lang/Object;
.source "VideoFeedsPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/playercommon/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mintegral/msdk/playercommon/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/playercommon/b;I)V
    .registers 3

    .prologue
    .line 533
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/b$15;->b:Lcom/mintegral/msdk/playercommon/b;

    iput p2, p0, Lcom/mintegral/msdk/playercommon/b$15;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$15;->b:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->p(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 538
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$15;->b:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->p(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/playercommon/b$15;->a:I

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/playercommon/c;->onPlayStarted(I)V

    .line 541
    :cond_13
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$15;->b:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->q(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 542
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$15;->b:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->q(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/playercommon/b$15;->a:I

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/playercommon/c;->onPlayStarted(I)V

    .line 544
    :cond_26
    return-void
.end method
