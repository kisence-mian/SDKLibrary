.class final Lcom/mintegral/msdk/playercommon/b$4;
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
.field final synthetic a:Lcom/mintegral/msdk/playercommon/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/playercommon/b;)V
    .registers 2

    .prologue
    .line 612
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/b$4;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$4;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->p(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 616
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$4;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->p(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/playercommon/c;->onPlayCompleted()V

    .line 618
    :cond_11
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$4;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->q(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 619
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$4;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->q(Lcom/mintegral/msdk/playercommon/b;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/playercommon/c;->onPlayCompleted()V

    .line 621
    :cond_22
    return-void
.end method
