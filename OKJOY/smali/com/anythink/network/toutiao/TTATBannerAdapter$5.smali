.class final Lcom/anythink/network/toutiao/TTATBannerAdapter$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/toutiao/TTATInitManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATBannerAdapter;->loadBannerAd(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/banner/unitgroup/api/CustomBannerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/banner/api/ATBannerView;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/anythink/network/toutiao/TTATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;)V
    .registers 5

    .prologue
    .line 239
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;->d:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;->a:Lcom/anythink/banner/api/ATBannerView;

    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 5

    .prologue
    .line 242
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;->d:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;->a:Lcom/anythink/banner/api/ATBannerView;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$5;->c:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;)V

    .line 243
    return-void
.end method
