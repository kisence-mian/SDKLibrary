.class Lcom/tds/common/widgets/image/StrictLineReader$1;
.super Ljava/io/ByteArrayOutputStream;
.source "StrictLineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/widgets/image/StrictLineReader;->readLine()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/widgets/image/StrictLineReader;


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/image/StrictLineReader;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/widgets/image/StrictLineReader;
    .param p2, "x0"    # I

    .line 148
    iput-object p1, p0, Lcom/tds/common/widgets/image/StrictLineReader$1;->this$0:Lcom/tds/common/widgets/image/StrictLineReader;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .line 151
    iget v0, p0, Lcom/tds/common/widgets/image/StrictLineReader$1;->count:I

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/tds/common/widgets/image/StrictLineReader$1;->buf:[B

    iget v1, p0, Lcom/tds/common/widgets/image/StrictLineReader$1;->count:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/tds/common/widgets/image/StrictLineReader$1;->count:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_15
    iget v0, p0, Lcom/tds/common/widgets/image/StrictLineReader$1;->count:I

    .line 153
    .local v0, "length":I
    :goto_17
    :try_start_17
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/tds/common/widgets/image/StrictLineReader$1;->buf:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tds/common/widgets/image/StrictLineReader$1;->this$0:Lcom/tds/common/widgets/image/StrictLineReader;

    # getter for: Lcom/tds/common/widgets/image/StrictLineReader;->charset:Ljava/nio/charset/Charset;
    invoke-static {v4}, Lcom/tds/common/widgets/image/StrictLineReader;->access$000(Lcom/tds/common/widgets/image/StrictLineReader;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_29} :catch_2a

    return-object v1

    .line 154
    :catch_2a
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
