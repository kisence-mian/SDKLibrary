.class public interface abstract Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onDecode(Ljava/lang/String;Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z
.end method

.method public abstract onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
.end method

.method public abstract onLoadingComplete(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)V
.end method

.method public abstract onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;)V
.end method

.method public abstract onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
.end method
