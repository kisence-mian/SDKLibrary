.class final Lcom/tds/protobuf/ByteString$ArraysByteArrayCopier;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Lcom/tds/protobuf/ByteString$ByteArrayCopier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArraysByteArrayCopier"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/protobuf/ByteString$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tds/protobuf/ByteString$1;

    .line 120
    invoke-direct {p0}, Lcom/tds/protobuf/ByteString$ArraysByteArrayCopier;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom([BII)[B
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .line 123
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method
