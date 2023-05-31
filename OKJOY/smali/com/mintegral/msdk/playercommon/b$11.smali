.class final Lcom/mintegral/msdk/playercommon/b$11;
.super Ljava/lang/Object;
.source "VideoFeedsPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/playercommon/b;->q()V
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
    .line 428
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/b$11;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 432
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$11;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->o(Lcom/mintegral/msdk/playercommon/b;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 433
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$11;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->o(Lcom/mintegral/msdk/playercommon/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :cond_13
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$11;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->n(Lcom/mintegral/msdk/playercommon/b;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 437
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$11;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->n(Lcom/mintegral/msdk/playercommon/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 439
    :cond_24
    return-void
.end method
