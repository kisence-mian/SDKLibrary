.class final Lcom/anythink/nativead/api/NativeAd$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/NativeAd$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/nativead/api/NativeAd$4;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/api/NativeAd$4;)V
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd$4$1;->this$1:Lcom/anythink/nativead/api/NativeAd$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$4$1;->this$1:Lcom/anythink/nativead/api/NativeAd$4;

    iget-object v0, v0, Lcom/anythink/nativead/api/NativeAd$4;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # getter for: Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;
    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$400(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/nativead/api/ATNativeEventListener;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 342
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$4$1;->this$1:Lcom/anythink/nativead/api/NativeAd$4;

    iget-object v0, v0, Lcom/anythink/nativead/api/NativeAd$4;->this$0:Lcom/anythink/nativead/api/NativeAd;

    # getter for: Lcom/anythink/nativead/api/NativeAd;->mNativeEventListener:Lcom/anythink/nativead/api/ATNativeEventListener;
    invoke-static {v0}, Lcom/anythink/nativead/api/NativeAd;->access$400(Lcom/anythink/nativead/api/NativeAd;)Lcom/anythink/nativead/api/ATNativeEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$4$1;->this$1:Lcom/anythink/nativead/api/NativeAd$4;

    iget-object v1, v1, Lcom/anythink/nativead/api/NativeAd$4;->val$view:Lcom/anythink/nativead/api/ATNativeAdView;

    iget-object v2, p0, Lcom/anythink/nativead/api/NativeAd$4$1;->this$1:Lcom/anythink/nativead/api/NativeAd$4;

    iget-object v2, v2, Lcom/anythink/nativead/api/NativeAd$4;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v2, v2, Lcom/anythink/nativead/api/NativeAd;->mBaseNativeAd:Lcom/anythink/nativead/unitgroup/a;

    .line 343
    invoke-static {v2}, Lcom/anythink/core/api/ATAdInfo;->fromBaseAd(Lcom/anythink/core/api/BaseAd;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v2

    .line 342
    invoke-interface {v0, v1, v2}, Lcom/anythink/nativead/api/ATNativeEventListener;->onAdImpressed(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V

    .line 345
    :cond_23
    return-void
.end method
