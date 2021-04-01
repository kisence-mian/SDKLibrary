.class final Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$4;
.super Ljava/lang/Object;
.source "MediaViewPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V
    .registers 2

    .prologue
    .line 553
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$4;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$4;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->onClickPlayButton()V

    .line 557
    return-void
.end method
