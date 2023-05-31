.class final Lcom/mintegral/msdk/playercommon/b$12;
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

.field final synthetic b:I

.field final synthetic c:Lcom/mintegral/msdk/playercommon/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/playercommon/b;II)V
    .registers 4

    .prologue
    .line 454
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/b$12;->c:Lcom/mintegral/msdk/playercommon/b;

    iput p2, p0, Lcom/mintegral/msdk/playercommon/b$12;->a:I

    iput p3, p0, Lcom/mintegral/msdk/playercommon/b$12;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 458
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$12;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->p(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 459
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$12;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->p(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/playercommon/b$12;->a:I

    iget v2, p0, Lcom/mintegral/msdk/playercommon/b$12;->b:I

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/playercommon/c;->onPlayProgress(II)V

    .line 462
    :cond_15
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$12;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->q(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 463
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$12;->c:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->q(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/playercommon/b$12;->a:I

    iget v2, p0, Lcom/mintegral/msdk/playercommon/b$12;->b:I

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/playercommon/c;->onPlayProgress(II)V

    .line 465
    :cond_2a
    return-void
.end method
