.class Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlowNetworkImageDownloader"
.end annotation


# instance fields
.field private final wrappedDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;->wrappedDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    return-void
.end method


# virtual methods
.method public getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;->wrappedDownloader:Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lcom/kwad/sdk/core/imageloader/core/ImageLoaderConfiguration$1;->$SwitchMap$com$kwad$sdk$core$imageloader$core$download$ImageDownloader$Scheme:[I

    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/download/ImageDownloader$Scheme;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_19

    const/4 v2, 0x2

    if-eq v1, v2, :cond_19

    :goto_18
    return-object v0

    :cond_19
    new-instance v1, Lcom/kwad/sdk/core/imageloader/core/assist/FlushedInputStream;

    invoke-direct {v1, v0}, Lcom/kwad/sdk/core/imageloader/core/assist/FlushedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_18
.end method
