.class final Lcom/mintegral/msdk/playercommon/d$2;
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
.field final synthetic a:I

.field final synthetic b:Lcom/mintegral/msdk/playercommon/d;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/playercommon/d;I)V
    .registers 3

    .prologue
    .line 565
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d$2;->b:Lcom/mintegral/msdk/playercommon/d;

    iput p2, p0, Lcom/mintegral/msdk/playercommon/d$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 569
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$2;->b:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->m(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 570
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$2;->b:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->m(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/playercommon/d$2;->a:I

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/playercommon/c;->onPlayStarted(I)V

    .line 573
    :cond_13
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$2;->b:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->n(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 574
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$2;->b:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->n(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/playercommon/d$2;->a:I

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/playercommon/c;->onPlayStarted(I)V

    .line 576
    :cond_26
    return-void
.end method
