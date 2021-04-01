.class public Lcom/kwad/sdk/core/imageloader/core/assist/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private final length:I

.field private final stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    iput p2, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ContentLengthInputStream;->length:I

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ContentLengthInputStream;->length:I

    return v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
