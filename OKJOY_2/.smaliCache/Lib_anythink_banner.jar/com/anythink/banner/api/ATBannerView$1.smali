.class final Lcom/anythink/banner/api/ATBannerView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/banner/api/ATBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/banner/api/ATBannerView;


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget v0, v0, Lcom/anythink/banner/api/ATBannerView;->visibility:I

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-boolean v0, v0, Lcom/anythink/banner/api/ATBannerView;->hasTouchWindow:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0}, Lcom/anythink/banner/api/ATBannerView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1c

    .line 78
    :cond_15
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    const/4 v1, 0x1

    # invokes: Lcom/anythink/banner/api/ATBannerView;->loadAd(Z)V
    invoke-static {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;Z)V

    .line 80
    return-void

    .line 76
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$1;->this$0:Lcom/anythink/banner/api/ATBannerView;

    sget-object v1, Lcom/anythink/banner/api/ATBannerView$a;->COUNTDOWN_FINISH:Lcom/anythink/banner/api/ATBannerView$a;

    iput-object v1, v0, Lcom/anythink/banner/api/ATBannerView;->mRefreshStatus:Lcom/anythink/banner/api/ATBannerView$a;

    return-void
.end method
