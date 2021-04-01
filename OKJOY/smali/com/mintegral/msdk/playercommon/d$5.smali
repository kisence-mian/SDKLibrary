.class final Lcom/mintegral/msdk/playercommon/d$5;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/playercommon/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/playercommon/d;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/playercommon/d;)V
    .registers 2

    .prologue
    .line 644
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d$5;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$5;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->m(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 648
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$5;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->m(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/playercommon/c;->onPlayCompleted()V

    .line 650
    :cond_11
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$5;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->n(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 651
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$5;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->n(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/playercommon/c;->onPlayCompleted()V

    .line 653
    :cond_22
    return-void
.end method
