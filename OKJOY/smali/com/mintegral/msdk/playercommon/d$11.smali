.class final Lcom/mintegral/msdk/playercommon/d$11;
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

.field final synthetic b:I

.field final synthetic c:Lcom/mintegral/msdk/playercommon/d;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/playercommon/d;II)V
    .registers 4

    .prologue
    .line 466
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d$11;->c:Lcom/mintegral/msdk/playercommon/d;

    iput p2, p0, Lcom/mintegral/msdk/playercommon/d$11;->a:I

    iput p3, p0, Lcom/mintegral/msdk/playercommon/d$11;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 470
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$11;->c:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->m(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 471
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$11;->c:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->m(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/playercommon/d$11;->a:I

    iget v2, p0, Lcom/mintegral/msdk/playercommon/d$11;->b:I

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/playercommon/c;->onPlayProgress(II)V

    .line 474
    :cond_15
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$11;->c:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->n(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 475
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$11;->c:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->n(Lcom/mintegral/msdk/playercommon/d;)Lcom/mintegral/msdk/playercommon/c;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/playercommon/d$11;->a:I

    iget v2, p0, Lcom/mintegral/msdk/playercommon/d$11;->b:I

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/playercommon/c;->onPlayProgress(II)V

    .line 477
    :cond_2a
    return-void
.end method
