.class final Lcom/anythink/nativead/api/NativeAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/unitgroup/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/b/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/nativead/api/NativeAd;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/api/NativeAd;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/anythink/nativead/api/NativeAd$1;->this$0:Lcom/anythink/nativead/api/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$1;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$1;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, v1, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/NativeAd;->handleClick(Lcom/anythink/nativead/api/ATNativeAdView;)V

    .line 60
    return-void
.end method

.method public final onAdDislikeButtonClick()V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$1;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$1;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, v1, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/NativeAd;->handleAdDislikeButtonClick(Lcom/anythink/nativead/api/ATNativeAdView;)V

    .line 55
    return-void
.end method

.method public final onAdVideoEnd()V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$1;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$1;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, v1, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/NativeAd;->handleVideoEnd(Lcom/anythink/nativead/api/ATNativeAdView;)V

    .line 70
    return-void
.end method

.method public final onAdVideoProgress(I)V
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$1;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$1;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, v1, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/nativead/api/NativeAd;->handleVideoProgress(Lcom/anythink/nativead/api/ATNativeAdView;I)V

    .line 75
    return-void
.end method

.method public final onAdVideoStart()V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/anythink/nativead/api/NativeAd$1;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, p0, Lcom/anythink/nativead/api/NativeAd$1;->this$0:Lcom/anythink/nativead/api/NativeAd;

    iget-object v1, v1, Lcom/anythink/nativead/api/NativeAd;->mNativeView:Lcom/anythink/nativead/api/ATNativeAdView;

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/NativeAd;->handleVideoStart(Lcom/anythink/nativead/api/ATNativeAdView;)V

    .line 65
    return-void
.end method
