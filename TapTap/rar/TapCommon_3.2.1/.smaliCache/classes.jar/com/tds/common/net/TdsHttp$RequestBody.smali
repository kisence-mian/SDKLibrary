.class public abstract Lcom/tds/common/net/TdsHttp$RequestBody;
.super Ljava/lang/Object;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RequestBody"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/io/File;)Lcom/tds/common/net/TdsHttp$RequestBody;
    .registers 3
    .param p0, "contentType"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .line 278
    # invokes: Lcom/tds/common/net/TdsHttp;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1}, Lcom/tds/common/net/TdsHttp;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v0, Lcom/tds/common/net/TdsHttp$RequestBody$2;

    invoke-direct {v0, p0, p1}, Lcom/tds/common/net/TdsHttp$RequestBody$2;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$RequestBody;
    .registers 3
    .param p0, "contentType"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tds/common/net/TdsHttp$RequestBody;->create(Ljava/lang/String;[B)Lcom/tds/common/net/TdsHttp$RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;[B)Lcom/tds/common/net/TdsHttp$RequestBody;
    .registers 3
    .param p0, "contentType"    # Ljava/lang/String;
    .param p1, "content"    # [B

    .line 259
    new-instance v0, Lcom/tds/common/net/TdsHttp$RequestBody$1;

    invoke-direct {v0, p0, p1}, Lcom/tds/common/net/TdsHttp$RequestBody$1;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static createJsonBody(Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$RequestBody;
    .registers 2
    .param p0, "content"    # Ljava/lang/String;

    .line 247
    const-string v0, "application/json"

    invoke-static {v0, p0}, Lcom/tds/common/net/TdsHttp$RequestBody;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public static createProtoBuffBody([B)Lcom/tds/common/net/TdsHttp$RequestBody;
    .registers 2
    .param p0, "bytes"    # [B

    .line 251
    const-string v0, "application/x-protobuf"

    invoke-static {v0, p0}, Lcom/tds/common/net/TdsHttp$RequestBody;->create(Ljava/lang/String;[B)Lcom/tds/common/net/TdsHttp$RequestBody;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Ljava/lang/String;
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
