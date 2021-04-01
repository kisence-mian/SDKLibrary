.class final Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$8;
.super Ljava/lang/Object;
.source "MintegralH5EndCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->excuteTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)V
    .registers 2

    .prologue
    .line 691
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$8;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 694
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$8;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->j(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 695
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$8;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->setCloseVisible(I)V

    .line 697
    :cond_e
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$8;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->k(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Z

    .line 698
    return-void
.end method
