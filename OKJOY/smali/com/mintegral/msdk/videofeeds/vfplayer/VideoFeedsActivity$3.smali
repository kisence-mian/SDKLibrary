.class final Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$3;
.super Ljava/lang/Object;
.source "VideoFeedsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)V
    .registers 2

    .prologue
    .line 255
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->finish()V

    .line 260
    return-void
.end method
