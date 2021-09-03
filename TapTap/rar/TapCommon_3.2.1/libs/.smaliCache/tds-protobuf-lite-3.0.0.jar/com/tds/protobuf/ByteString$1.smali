.class Lcom/tds/protobuf/ByteString$1;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Lcom/tds/protobuf/ByteString$ByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/protobuf/ByteString;->iterator()Lcom/tds/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final limit:I

.field private position:I

.field final synthetic this$0:Lcom/tds/protobuf/ByteString;


# direct methods
.method constructor <init>(Lcom/tds/protobuf/ByteString;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/protobuf/ByteString;

    .line 170
    iput-object p1, p0, Lcom/tds/protobuf/ByteString$1;->this$0:Lcom/tds/protobuf/ByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/protobuf/ByteString$1;->position:I

    .line 172
    invoke-virtual {p1}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/tds/protobuf/ByteString$1;->limit:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 176
    iget v0, p0, Lcom/tds/protobuf/ByteString$1;->position:I

    iget v1, p0, Lcom/tds/protobuf/ByteString$1;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public next()Ljava/lang/Byte;
    .registers 2

    .line 182
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$1;->nextByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 170
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString$1;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public nextByte()B
    .registers 4

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$1;->this$0:Lcom/tds/protobuf/ByteString;

    iget v1, p0, Lcom/tds/protobuf/ByteString$1;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tds/protobuf/ByteString$1;->position:I

    invoke-virtual {v0, v1}, Lcom/tds/protobuf/ByteString;->byteAt(I)B

    move-result v0
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 189
    :catch_d
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .registers 2

    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
