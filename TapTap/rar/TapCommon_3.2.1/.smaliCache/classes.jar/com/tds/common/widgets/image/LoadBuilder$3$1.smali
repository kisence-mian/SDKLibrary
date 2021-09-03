.class Lcom/tds/common/widgets/image/LoadBuilder$3$1;
.super Ljava/lang/Object;
.source "LoadBuilder.java"

# interfaces
.implements Lcom/tds/common/widgets/image/DiskCache$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/widgets/image/LoadBuilder$3;->loadAndCacheFromNet()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tds/common/widgets/image/LoadBuilder$3;

.field final synthetic val$finalResponse:Lcom/tds/common/net/TdsHttp$Response;


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/image/LoadBuilder$3;Lcom/tds/common/net/TdsHttp$Response;)V
    .registers 3
    .param p1, "this$1"    # Lcom/tds/common/widgets/image/LoadBuilder$3;

    .line 368
    iput-object p1, p0, Lcom/tds/common/widgets/image/LoadBuilder$3$1;->this$1:Lcom/tds/common/widgets/image/LoadBuilder$3;

    iput-object p2, p0, Lcom/tds/common/widgets/image/LoadBuilder$3$1;->val$finalResponse:Lcom/tds/common/net/TdsHttp$Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder$3$1;->val$finalResponse:Lcom/tds/common/net/TdsHttp$Response;

    invoke-virtual {v0}, Lcom/tds/common/net/TdsHttp$Response;->body()Lcom/tds/common/net/TdsHttp$ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/net/TdsHttp$ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tds/common/io/IoUtil;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    .line 372
    const/4 v0, 0x1

    return v0
.end method
