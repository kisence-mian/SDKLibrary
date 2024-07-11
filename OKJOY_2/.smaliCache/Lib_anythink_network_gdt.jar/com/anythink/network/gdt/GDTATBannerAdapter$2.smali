.class final Lcom/anythink/network/gdt/GDTATBannerAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATBannerAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/network/gdt/GDTATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATBannerAdapter;Landroid/content/Context;)V
    .registers 3

    .line 147
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iput-object p2, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->k(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 156
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->l(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, "GDT initSDK failed."

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_15
    return-void
.end method

.method public final onSuccess()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->a(Lcom/anythink/network/gdt/GDTATBannerAdapter;Landroid/app/Activity;)V

    .line 151
    return-void
.end method
