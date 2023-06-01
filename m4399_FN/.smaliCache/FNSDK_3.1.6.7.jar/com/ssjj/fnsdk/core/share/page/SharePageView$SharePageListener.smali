.class public interface abstract Lcom/ssjj/fnsdk/core/share/page/SharePageView$SharePageListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/share/page/SharePageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SharePageListener"
.end annotation


# virtual methods
.method public abstract onBack()V
.end method

.method public abstract onShare(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
