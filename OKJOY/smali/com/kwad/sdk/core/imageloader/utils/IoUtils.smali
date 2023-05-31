.class public final Lcom/kwad/sdk/core/imageloader/utils/IoUtils;
.super Ljava/lang/Object;
.source ""


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
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;)Z
    .registers 4

    const v0, 0x8000

    invoke-static {p0, p1, p2, v0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;I)Z

    move-result v0

    return v0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;I)Z
    .registers 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_a

    const v0, 0x7d000

    :cond_a
    new-array v3, p3, [B

    invoke-static {p2, v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->shouldStopLoading(Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;II)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_12
    return v2

    :cond_13
    move v1, v2

    :cond_14
    invoke-virtual {p0, v3, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    invoke-virtual {p1, v3, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v4

    invoke-static {p2, v1, v0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->shouldStopLoading(Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;II)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_12

    :cond_26
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static readAndCloseStream(Ljava/io/InputStream;)V
    .registers 4

    const v0, 0x8000

    new-array v0, v0, [B

    :cond_5
    const/4 v1, 0x0

    const v2, 0x8000

    :try_start_9
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_19
    .catchall {:try_start_9 .. :try_end_c} :catchall_14

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    :goto_10
    invoke-static {p0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_14
    move-exception v0

    invoke-static {p0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catch_19
    move-exception v0

    goto :goto_10
.end method

.method private static shouldStopLoading(Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;II)Z
    .registers 5

    if-eqz p0, :cond_11

    invoke-interface {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;->onBytesCopied(II)Z

    move-result v0

    if-nez v0, :cond_11

    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    const/16 v1, 0x4b

    if-ge v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
