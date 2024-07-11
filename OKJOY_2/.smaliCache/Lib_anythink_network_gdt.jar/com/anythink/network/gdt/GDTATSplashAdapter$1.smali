.class final Lcom/anythink/network/gdt/GDTATSplashAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATSplashAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/network/gdt/GDTATSplashAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATSplashAdapter;Landroid/content/Context;)V
    .registers 3

    .line 61
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter$1;->b:Lcom/anythink/network/gdt/GDTATSplashAdapter;

    iput-object p2, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter$1;->b:Lcom/anythink/network/gdt/GDTATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATSplashAdapter;->d(Lcom/anythink/network/gdt/GDTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 71
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter$1;->b:Lcom/anythink/network/gdt/GDTATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATSplashAdapter;->e(Lcom/anythink/network/gdt/GDTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, "GDT initSDK failed."

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_15
    return-void
.end method

.method public final onSuccess()V
    .registers 7

    .line 64
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter$1;->b:Lcom/anythink/network/gdt/GDTATSplashAdapter;

    new-instance v1, Lcom/qq/e/ads/splash/SplashAD;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter$1;->b:Lcom/anythink/network/gdt/GDTATSplashAdapter;

    invoke-static {v3}, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a(Lcom/anythink/network/gdt/GDTATSplashAdapter;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter$1;->b:Lcom/anythink/network/gdt/GDTATSplashAdapter;

    invoke-static {v4}, Lcom/anythink/network/gdt/GDTATSplashAdapter;->b(Lcom/anythink/network/gdt/GDTATSplashAdapter;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;I)V

    invoke-static {v0, v1}, Lcom/anythink/network/gdt/GDTATSplashAdapter;->a(Lcom/anythink/network/gdt/GDTATSplashAdapter;Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashAD;

    .line 65
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATSplashAdapter$1;->b:Lcom/anythink/network/gdt/GDTATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATSplashAdapter;->c(Lcom/anythink/network/gdt/GDTATSplashAdapter;)Lcom/qq/e/ads/splash/SplashAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/ads/splash/SplashAD;->fetchAdOnly()V

    .line 66
    return-void
.end method
