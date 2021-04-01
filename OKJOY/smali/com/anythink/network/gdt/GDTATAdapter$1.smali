.class final Lcom/anythink/network/gdt/GDTATAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADUnifiedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATAdapter;->a(Landroid/content/Context;)V
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

    .prologue
    .line 152
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iput-object p2, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADLoaded(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/e/ads/nativ/NativeUnifiedADData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    if-eqz p1, :cond_41

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_41

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 158
    new-instance v3, Lcom/anythink/network/gdt/GDTATNativeAd;

    iget-object v4, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v5, v5, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v6, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-static {v6}, Lcom/anythink/network/gdt/GDTATAdapter;->a(Lcom/anythink/network/gdt/GDTATAdapter;)Ljava/util/Map;

    invoke-direct {v3, v4, v0, v5}, Lcom/anythink/network/gdt/GDTATNativeAd;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;)V

    .line 159
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 162
    :cond_31
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    if-eqz v0, :cond_40

    .line 163
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-interface {v0, v2, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdLoaded(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Ljava/util/List;)V

    .line 169
    :cond_40
    :goto_40
    return-void

    .line 166
    :cond_41
    const-string v0, "4001"

    const-string v1, ""

    const-string v2, "Ad list is empty"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v1, v1, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_40
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .registers 5

    .prologue
    .line 173
    const-string v0, "4001"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    iget-object v1, v1, Lcom/anythink/network/gdt/GDTATAdapter;->d:Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATAdapter$1;->b:Lcom/anythink/network/gdt/GDTATAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;->onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V

    .line 175
    return-void
.end method
