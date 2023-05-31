.class final Lcom/tds/common/net/TdsHttp$RequestBody$2;
.super Lcom/tds/common/net/TdsHttp$RequestBody;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/net/TdsHttp$RequestBody;->create(Ljava/lang/String;Ljava/io/File;)Lcom/tds/common/net/TdsHttp$RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentType:Ljava/lang/String;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    .line 279
    iput-object p1, p0, Lcom/tds/common/net/TdsHttp$RequestBody$2;->val$contentType:Ljava/lang/String;

    iput-object p2, p0, Lcom/tds/common/net/TdsHttp$RequestBody$2;->val$file:Ljava/io/File;

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

    .line 287
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$RequestBody$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$RequestBody$2;->val$contentType:Ljava/lang/String;

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

    .line 292
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$RequestBody$2;->val$file:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/tds/common/io/IoUtil;->copy(Ljava/io/File;Ljava/io/OutputStream;)V

    .line 293
    return-void
.end method
