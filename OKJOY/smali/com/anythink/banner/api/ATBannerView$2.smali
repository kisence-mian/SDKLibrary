.class final Lcom/anythink/banner/api/ATBannerView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/banner/a/c;


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

    .prologue
    .line 51
    iput-object p1, p0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBannerClicked(Z)V
    .registers 4

    .prologue
    .line 161
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/api/ATBannerView$2$3;

    invoke-direct {v1, p0}, Lcom/anythink/banner/api/ATBannerView$2$3;-><init>(Lcom/anythink/banner/api/ATBannerView$2;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public final onBannerClose(Z)V
    .registers 4

    .prologue
    .line 178
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/api/ATBannerView$2$4;

    invoke-direct {v1, p0}, Lcom/anythink/banner/api/ATBannerView$2$4;-><init>(Lcom/anythink/banner/api/ATBannerView$2;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 187
    iget-object v0, p0, Lcom/anythink/banner/api/ATBannerView$2;->this$0:Lcom/anythink/banner/api/ATBannerView;

    const/4 v1, 0x1

    # invokes: Lcom/anythink/banner/api/ATBannerView;->loadAd(Z)V
    invoke-static {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->access$000(Lcom/anythink/banner/api/ATBannerView;Z)V

    .line 188
    return-void
.end method

.method public final onBannerFailed(ZLcom/anythink/core/api/AdError;)V
    .registers 5

    .prologue
    .line 138
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/api/ATBannerView$2$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/banner/api/ATBannerView$2$2;-><init>(Lcom/anythink/banner/api/ATBannerView$2;ZLcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method public final onBannerLoaded(Z)V
    .registers 4

    .prologue
    .line 55
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/banner/api/ATBannerView$2$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/banner/api/ATBannerView$2$1;-><init>(Lcom/anythink/banner/api/ATBannerView$2;Z)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public final onBannerShow(Z)V
    .registers 2

    .prologue
    .line 174
    return-void
.end method
