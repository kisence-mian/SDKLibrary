.class final Lcom/anythink/network/toutiao/TTATBannerAdapter$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V
    .registers 2

    .prologue
    .line 352
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$6;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 1

    .prologue
    .line 362
    return-void
.end method

.method public final onSelected(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 355
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$6;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_f

    .line 356
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$6;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$6;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdClose(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 358
    :cond_f
    return-void
.end method
