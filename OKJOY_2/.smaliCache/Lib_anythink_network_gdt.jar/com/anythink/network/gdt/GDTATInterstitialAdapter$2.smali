.class final Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .registers 4

    .line 189
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->c:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    iput-object p2, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->c:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->k(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 198
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->c:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->l(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, "GDT initSDK failed."

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_15
    return-void
.end method

.method public final onSuccess()V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->c:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->b:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;Landroid/content/Context;Ljava/util/Map;)V

    .line 193
    return-void
.end method
