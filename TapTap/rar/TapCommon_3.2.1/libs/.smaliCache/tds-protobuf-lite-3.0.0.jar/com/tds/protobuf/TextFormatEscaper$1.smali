.class final Lcom/tds/protobuf/TextFormatEscaper$1;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"

# interfaces
.implements Lcom/tds/protobuf/TextFormatEscaper$ByteSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/protobuf/TextFormatEscaper;->escapeBytes(Lcom/tds/protobuf/ByteString;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$input:Lcom/tds/protobuf/ByteString;


# direct methods
.method constructor <init>(Lcom/tds/protobuf/ByteString;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/tds/protobuf/TextFormatEscaper$1;->val$input:Lcom/tds/protobuf/ByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byteAt(I)B
    .registers 3
    .param p1, "offset"    # I

    .line 101
    iget-object v0, p0, Lcom/tds/protobuf/TextFormatEscaper$1;->val$input:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/ByteString;->byteAt(I)B

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/tds/protobuf/TextFormatEscaper$1;->val$input:Lcom/tds/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    return v0
.end method
