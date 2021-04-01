.class final Lcom/mintegral/msdk/playercommon/d$9;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/playercommon/d;->m()V
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
    .line 420
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d$9;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$9;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->l(Lcom/mintegral/msdk/playercommon/d;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 425
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$9;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->l(Lcom/mintegral/msdk/playercommon/d;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :cond_12
    return-void
.end method
