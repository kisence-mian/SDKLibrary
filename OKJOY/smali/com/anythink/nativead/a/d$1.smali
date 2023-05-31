.class final Lcom/anythink/nativead/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/nativead/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/nativead/a/d;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/a/d;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/anythink/nativead/a/d$1;->a:Lcom/anythink/nativead/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdFailed(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/anythink/nativead/a/d$1;->a:Lcom/anythink/nativead/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/nativead/a/d;->a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V

    .line 48
    return-void
.end method

.method public final onNativeAdLoaded(Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    if-eqz p1, :cond_2c

    if-eqz p2, :cond_2c

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2c

    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 35
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    .line 37
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 38
    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->x()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNetworkType(I)V

    goto :goto_18

    .line 42
    :cond_2c
    iget-object v0, p0, Lcom/anythink/nativead/a/d$1;->a:Lcom/anythink/nativead/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/nativead/a/d;->a(Lcom/anythink/core/b/a/b;Ljava/util/List;)V

    .line 43
    return-void
.end method
