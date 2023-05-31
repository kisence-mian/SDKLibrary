.class public interface abstract Lcom/mintegral/msdk/out/Adapter;
.super Ljava/lang/Object;
.source "Adapter.java"


# virtual methods
.method public varargs abstract init([Ljava/lang/Object;)Z
.end method

.method public abstract loadAd(Lcom/mintegral/msdk/out/AdapterListener;)Z
.end method

.method public abstract registerView(Lcom/mintegral/msdk/out/Campaign;Landroid/view/View;)V
.end method

.method public abstract registerView(Lcom/mintegral/msdk/out/Campaign;Landroid/view/View;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mintegral/msdk/out/Campaign;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterView(Lcom/mintegral/msdk/out/Campaign;Landroid/view/View;)V
.end method

.method public abstract unregisterView(Lcom/mintegral/msdk/out/Campaign;Landroid/view/View;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mintegral/msdk/out/Campaign;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method
