.class final Lcom/anythink/network/toutiao/TTATBannerAdapter$5;
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

    .line 290
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 1

    .line 300
    return-void
.end method

.method public final onRefuse()V
    .registers 1

    .line 305
    return-void
.end method

.method public final onSelected(ILjava/lang/String;)V
    .registers 3

    .line 293
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->z(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 294
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->A(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClose()V

    .line 296
    :cond_11
    return-void
.end method
