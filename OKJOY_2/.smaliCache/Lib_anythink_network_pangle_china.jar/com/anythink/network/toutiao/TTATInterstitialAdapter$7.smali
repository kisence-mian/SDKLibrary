.class final Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/toutiao/TTATInitManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Landroid/content/Context;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 346
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->f:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->b:Ljava/util/Map;

    iput p4, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->c:I

    iput-object p5, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 7

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->f:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->b:Ljava/util/Map;

    iget v3, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->c:I

    iget-object v4, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Landroid/content/Context;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 355
    return-void

    .line 351
    :catchall_10
    move-exception v0

    .line 352
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->f:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->L(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 353
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$7;->f:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->M(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_28
    return-void
.end method
