.class final Lcom/anythink/network/gdt/GDTATAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/network/gdt/GDTATAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V
    .registers 3

    .line 271
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iput-object p2, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .registers 4

    .line 279
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATAdapter;->m(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 280
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATAdapter;->n(Lcom/anythink/network/gdt/GDTATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, "GDT initSDK failed."

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_15
    return-void
.end method

.method public final onSuccess()V
    .registers 3

    .line 274
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter$3;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/anythink/network/gdt/GDTATAdapter;->a(Lcom/anythink/network/gdt/GDTATAdapter;Landroid/content/Context;)V

    .line 275
    return-void
.end method
