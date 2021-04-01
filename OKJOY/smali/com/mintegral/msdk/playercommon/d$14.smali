.class final Lcom/mintegral/msdk/playercommon/d$14;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/playercommon/d;->o()V
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
    .line 539
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d$14;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$14;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->m(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 544
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$14;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->m(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/playercommon/c;->OnBufferingEnd()V

    .line 547
    :cond_11
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$14;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->n(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 548
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$14;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->n(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/playercommon/c;->OnBufferingEnd()V

    .line 550
    :cond_22
    return-void
.end method
