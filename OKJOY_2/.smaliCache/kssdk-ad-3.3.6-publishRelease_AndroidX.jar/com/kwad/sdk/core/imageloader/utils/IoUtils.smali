.class public final Lcom/kwad/sdk/core/imageloader/utils/IoUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;
    }
.end annotation


# static fields
.field public static final CONTINUE_LOADING_PERCENTAGE:I = 0x4b

.field public static final DEFAULT_BUFFER_SIZE:I = 0x8000

.field public static final DEFAULT_IMAGE_TOTAL_SIZE:I = 0x7d000


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_7

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    :cond_7
    :goto_7
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;)Z
    .registers 4

    const v0, 0x8000

    invoke-static {p0, p1, p2, v0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;I)Z

    move-result p0

    return p0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;I)Z
    .registers 10

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_9

    const v0, 0x7d000

    :cond_9
    new-array v1, p3, [B

    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->shouldStopLoading(Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;II)Z

    move-result v3

    if-eqz v3, :cond_13

    return v2

    :cond_13
    move v3, v2

    :cond_14
    invoke-virtual {p0, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    invoke-virtual {p1, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v3, v4

    invoke-static {p2, v3, v0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->shouldStopLoading(Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;II)Z

    move-result v4

    if-eqz v4, :cond_14

    return v2

    :cond_26
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    const/4 p0, 0x1

    return p0
.end method

.method public static readAndCloseStream(Ljava/io/InputStream;)V
    .registers 5

    const v0, 0x8000

    new-array v1, v0, [B

    :goto_5
    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_13
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    goto :goto_5

    :catchall_e
    move-exception v0

    invoke-static {p0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catch_13
    move-exception v0

    :cond_14
    invoke-static {p0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void
.end method

.method private static shouldStopLoading(Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;II)Z
    .registers 3

    if-eqz p0, :cond_11

    invoke-interface {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;->onBytesCopied(II)Z

    move-result p0

    if-nez p0, :cond_11

    mul-int/lit8 p1, p1, 0x64

    div-int/2addr p1, p2

    const/16 p0, 0x4b

    if-ge p1, p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method
