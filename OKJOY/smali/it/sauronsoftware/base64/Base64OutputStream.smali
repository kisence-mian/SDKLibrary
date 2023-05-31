.class public Lit/sauronsoftware/base64/Base64OutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private buffer:I

.field private bytecounter:I

.field private linecounter:I

.field private linelength:I

.field private outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lit/sauronsoftware/base64/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    iput v1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    iput v1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    iput v1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linecounter:I

    iput v1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linelength:I

    iput-object p1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    iput p2, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linelength:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lit/sauronsoftware/base64/Base64OutputStream;->commit()V

    iget-object v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method protected commit()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    if-lez v0, :cond_60

    iget v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linelength:I

    if-lez v0, :cond_1c

    iget v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linecounter:I

    iget v1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linelength:I

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iput v5, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linecounter:I

    :cond_1c
    sget-object v0, Lit/sauronsoftware/base64/Shared;->chars:Ljava/lang/String;

    iget v1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    shl-int/lit8 v1, v1, 0x8

    ushr-int/lit8 v1, v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v0, Lit/sauronsoftware/base64/Shared;->chars:Ljava/lang/String;

    iget v1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    shl-int/lit8 v1, v1, 0xe

    ushr-int/lit8 v1, v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_61

    sget-char v0, Lit/sauronsoftware/base64/Shared;->pad:C

    :goto_3b
    iget v1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    const/4 v4, 0x3

    if-ge v1, v4, :cond_6e

    sget-char v1, Lit/sauronsoftware/base64/Shared;->pad:C

    :goto_42
    iget-object v4, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linecounter:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->linecounter:I

    iput v5, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    iput v5, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    :cond_60
    return-void

    :cond_61
    sget-object v0, Lit/sauronsoftware/base64/Shared;->chars:Ljava/lang/String;

    iget v1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    shl-int/lit8 v1, v1, 0x14

    ushr-int/lit8 v1, v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3b

    :cond_6e
    sget-object v1, Lit/sauronsoftware/base64/Shared;->chars:Ljava/lang/String;

    iget v4, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    shl-int/lit8 v4, v4, 0x1a

    ushr-int/lit8 v4, v4, 0x1a

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_42
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    mul-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x10

    shl-int/2addr v0, v1

    iget v1, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    or-int/2addr v0, v1

    iput v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->buffer:I

    iget v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    iget v0, p0, Lit/sauronsoftware/base64/Base64OutputStream;->bytecounter:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Lit/sauronsoftware/base64/Base64OutputStream;->commit()V

    :cond_1c
    return-void
.end method
