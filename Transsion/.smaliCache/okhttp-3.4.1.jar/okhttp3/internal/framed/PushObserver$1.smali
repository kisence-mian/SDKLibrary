.class final Lokhttp3/internal/framed/PushObserver$1;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lokhttp3/internal/framed/PushObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/PushObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(ILokio/BufferedSource;IZ)Z
    .registers 7
    .param p1, "streamId"    # I
    .param p2, "source"    # Lokio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public onHeaders(ILjava/util/List;Z)Z
    .registers 5
    .param p1, "streamId"    # I
    .param p3, "last"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;Z)Z"
        }
    .end annotation

    .line 83
    .local p2, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onRequest(ILjava/util/List;)Z
    .registers 4
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/framed/Header;",
            ">;)Z"
        }
    .end annotation

    .line 79
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onReset(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 3
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lokhttp3/internal/framed/ErrorCode;

    .line 93
    return-void
.end method
