.class abstract Lcom/tds/protobuf/ByteString$LeafByteString;
.super Lcom/tds/protobuf/ByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LeafByteString"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 812
    invoke-direct {p0}, Lcom/tds/protobuf/ByteString;-><init>()V

    return-void
.end method


# virtual methods
.method abstract equalsRange(Lcom/tds/protobuf/ByteString;II)Z
.end method

.method protected final getTreeDepth()I
    .registers 2

    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method protected final isBalanced()Z
    .registers 2

    .line 820
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 812
    invoke-super {p0}, Lcom/tds/protobuf/ByteString;->iterator()Lcom/tds/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method
