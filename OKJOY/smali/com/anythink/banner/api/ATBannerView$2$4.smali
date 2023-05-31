.class final Lcom/anythink/banner/api/ATBannerView$2$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/banner/api/ATBannerView$2;->onBannerClose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/banner/api/ATBannerView$2;


# direct methods
.method constructor <init>(Lcom/anythink/banner/api/ATBannerView$2;)V
    .registers 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$2$4;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$4;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 182
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2$4;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v0, v0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    # getter for: Lcom/anythink/banner/api/ATBannerView;->mListener:Lcom/anythink/banner/api/ATBannerListener;
    invoke-static {v0}, Lcom/anythink/banner/api/ATBannerView;->access$400(Lcom/anythink/banner/api/ATBannerView;)Lcom/anythink/banner/api/ATBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/banner/api/ATBannerView$2$4;->this$1:Lcom/anythink/banner/api/ATBannerView$2;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, v1, Lcom/anythink/banner/api/ATBannerView;->mCustomBannerAd:Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;

    invoke-static {v1}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/banner/api/ATBannerListener;->onBannerClose(Lcom/anythink/core/api/ATAdInfo;)V

    .line 184
    :cond_1f
    return-void
.end method
