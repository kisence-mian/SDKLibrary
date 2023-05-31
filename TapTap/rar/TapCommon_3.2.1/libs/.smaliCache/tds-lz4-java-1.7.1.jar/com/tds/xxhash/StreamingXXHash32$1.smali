.class Lcom/tds/xxhash/StreamingXXHash32$1;
.super Ljava/lang/Object;
.source "StreamingXXHash32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/xxhash/StreamingXXHash32;->asChecksum()Ljava/util/zip/Checksum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/xxhash/StreamingXXHash32;


# direct methods
.method constructor <init>(Lcom/tds/xxhash/StreamingXXHash32;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/tds/xxhash/StreamingXXHash32$1;->this$0:Lcom/tds/xxhash/StreamingXXHash32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()J
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/tds/xxhash/StreamingXXHash32$1;->this$0:Lcom/tds/xxhash/StreamingXXHash32;

    invoke-virtual {v0}, Lcom/tds/xxhash/StreamingXXHash32;->getValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xfffffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/tds/xxhash/StreamingXXHash32$1;->this$0:Lcom/tds/xxhash/StreamingXXHash32;

    invoke-virtual {v0}, Lcom/tds/xxhash/StreamingXXHash32;->reset()V

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/tds/xxhash/StreamingXXHash32$1;->this$0:Lcom/tds/xxhash/StreamingXXHash32;

    invoke-virtual {v0}, Lcom/tds/xxhash/StreamingXXHash32;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(I)V
    .registers 7
    .param p1, "b"    # I

    .line 114
    iget-object v0, p0, Lcom/tds/xxhash/StreamingXXHash32$1;->this$0:Lcom/tds/xxhash/StreamingXXHash32;

    const/4 v1, 0x1

    new-array v2, v1, [B

    int-to-byte v3, p1

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-virtual {v0, v2, v4, v1}, Lcom/tds/xxhash/StreamingXXHash32;->update([BII)V

    .line 115
    return-void
.end method

.method public update([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 119
    iget-object v0, p0, Lcom/tds/xxhash/StreamingXXHash32$1;->this$0:Lcom/tds/xxhash/StreamingXXHash32;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tds/xxhash/StreamingXXHash32;->update([BII)V

    .line 120
    return-void
.end method
