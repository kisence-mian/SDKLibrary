.class final Lcom/tds/protobuf/ByteString$CodedBuilder;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CodedBuilder"
.end annotation


# instance fields
.field private final buffer:[B

.field private final output:Lcom/tds/protobuf/CodedOutputStream;


# direct methods
.method private constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1123
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/tds/protobuf/ByteString$CodedBuilder;->buffer:[B

    .line 1124
    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->newInstance([B)Lcom/tds/protobuf/CodedOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/ByteString$CodedBuilder;->output:Lcom/tds/protobuf/CodedOutputStream;

    .line 1125
    return-void
.end method

.method synthetic constructor <init>(ILcom/tds/protobuf/ByteString$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/tds/protobuf/ByteString$1;

    .line 1118
    invoke-direct {p0, p1}, Lcom/tds/protobuf/ByteString$CodedBuilder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/tds/protobuf/ByteString;
    .registers 3

    .line 1128
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$CodedBuilder;->output:Lcom/tds/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/tds/protobuf/CodedOutputStream;->checkNoSpaceLeft()V

    .line 1133
    new-instance v0, Lcom/tds/protobuf/ByteString$LiteralByteString;

    iget-object v1, p0, Lcom/tds/protobuf/ByteString$CodedBuilder;->buffer:[B

    invoke-direct {v0, v1}, Lcom/tds/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public getCodedOutput()Lcom/tds/protobuf/CodedOutputStream;
    .registers 2

    .line 1137
    iget-object v0, p0, Lcom/tds/protobuf/ByteString$CodedBuilder;->output:Lcom/tds/protobuf/CodedOutputStream;

    return-object v0
.end method
