.class final Lcom/mintegral/msdk/video/module/MintegralContainerView$1;
.super Ljava/lang/Object;
.source "MintegralContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/module/MintegralContainerView;->preLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/MintegralContainerView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/MintegralContainerView;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView$1;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView$1;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralContainerView$1;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v1, v1, Lcom/mintegral/msdk/video/module/MintegralContainerView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideo_end_type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->a(Lcom/mintegral/msdk/video/module/MintegralContainerView;Ljava/lang/Integer;)V

    .line 124
    return-void
.end method
