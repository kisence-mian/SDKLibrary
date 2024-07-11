.class Lcom/kwad/sdk/core/imageloader/KSImageLoader$InnerImageLoadingListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/imageloader/KSImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerImageLoadingListener"
.end annotation


# instance fields
.field adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field loadingListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/KSImageLoader$InnerImageLoadingListener;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object p2, p0, Lcom/kwad/sdk/core/imageloader/KSImageLoader$InnerImageLoadingListener;->loadingListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    return-void
.end method


# virtual methods
.method public onDecode(Ljava/lang/String;Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/KSImageLoader$InnerImageLoadingListener;->loadingListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2, p3}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onDecode(Ljava/lang/String;Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/KSImageLoader$InnerImageLoadingListener;->loadingListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/KSImageLoader$InnerImageLoadingListener;->loadingListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)V

    :cond_7
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;)V
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/KSImageLoader$InnerImageLoadingListener;->loadingListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;)V

    :cond_7
    iget-object p2, p0, Lcom/kwad/sdk/core/imageloader/KSImageLoader$InnerImageLoadingListener;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-eqz p2, :cond_97

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ImageLoader:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_8e

    invoke-virtual {p3}, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_64

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    :cond_64
    const-string v0, ""

    :goto_66
    sget-object v1, Lcom/kwad/sdk/core/imageloader/KSImageLoader$1;->$SwitchMap$com$kwad$sdk$core$imageloader$core$assist$FailReason$FailType:[I

    invoke-virtual {p3}, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason;->getType()Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/kwad/sdk/core/imageloader/core/assist/FailReason$FailType;->ordinal()I

    move-result p3

    aget p3, v1, p3

    packed-switch p3, :pswitch_data_98

    goto :goto_8e

    :pswitch_76
    const-string p3, "DECODING_ERROR"

    goto :goto_8b

    :pswitch_79
    const-string p3, "NETWORK_DENIED"

    goto :goto_8b

    :pswitch_7c
    const-string p3, "OUT_OF_MEMORY"

    goto :goto_8b

    :pswitch_7f
    const-string p3, "IO_ERROR"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8e

    :pswitch_89
    const-string p3, "UNKNOWN"

    :goto_8b
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8e
    :goto_8e
    iget-object p3, p0, Lcom/kwad/sdk/core/imageloader/KSImageLoader$InnerImageLoadingListener;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/kwad/sdk/core/report/e;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    return-void

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_89
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
    .end packed-switch
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/KSImageLoader$InnerImageLoadingListener;->loadingListener:Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    :cond_7
    return-void
.end method
