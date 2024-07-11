.class final Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;Landroid/content/Context;)V
    .registers 3

    .line 69
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->b:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    iput-object p2, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->b:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 78
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->b:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->b(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, "GTD initSDK failed."

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_15
    return-void
.end method

.method public final onSuccess()V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->b:Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;->a(Lcom/anythink/network/gdt/GDTATRewardedVideoAdapter;Landroid/content/Context;)V

    .line 73
    return-void
.end method
