.class final Lcom/tds/common/net/TdsHttp$RequestBody$1;
.super Lcom/tds/common/net/TdsHttp$RequestBody;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/net/TdsHttp$RequestBody;->create(Ljava/lang/String;[B)Lcom/tds/common/net/TdsHttp$RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:[B

.field final synthetic val$contentType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    .line 259
    iput-object p1, p0, Lcom/tds/common/net/TdsHttp$RequestBody$1;->val$contentType:Ljava/lang/String;

    iput-object p2, p0, Lcom/tds/common/net/TdsHttp$RequestBody$1;->val$content:[B

    invoke-direct {p0}, Lcom/tds/common/net/TdsHttp$RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$RequestBody$1;->val$content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$RequestBody$1;->val$contentType:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$RequestBody$1;->val$content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 273
    return-void
.end method
