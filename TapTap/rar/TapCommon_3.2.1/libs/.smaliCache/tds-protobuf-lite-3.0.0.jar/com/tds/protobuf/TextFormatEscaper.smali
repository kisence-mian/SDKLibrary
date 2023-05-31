.class final Lcom/tds/protobuf/TextFormatEscaper;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/TextFormatEscaper$ByteSequence;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static escapeBytes(Lcom/tds/protobuf/ByteString;)Ljava/lang/String;
    .registers 2
    .param p0, "input"    # Lcom/tds/protobuf/ByteString;

    .line 94
    new-instance v0, Lcom/tds/protobuf/TextFormatEscaper$1;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/TextFormatEscaper$1;-><init>(Lcom/tds/protobuf/ByteString;)V

    invoke-static {v0}, Lcom/tds/protobuf/TextFormatEscaper;->escapeBytes(Lcom/tds/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static escapeBytes(Lcom/tds/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;
    .registers 5
    .param p0, "input"    # Lcom/tds/protobuf/TextFormatEscaper$ByteSequence;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/tds/protobuf/TextFormatEscaper$ByteSequence;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 54
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p0}, Lcom/tds/protobuf/TextFormatEscaper$ByteSequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_84

    .line 55
    invoke-interface {p0, v1}, Lcom/tds/protobuf/TextFormatEscaper$ByteSequence;->byteAt(I)B

    move-result v2

    .line 56
    .local v2, "b":B
    sparse-switch v2, :sswitch_data_8a

    .line 71
    const/16 v3, 0x20

    if-lt v2, v3, :cond_60

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_60

    .line 72
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 65
    :sswitch_24
    const-string v3, "\\\\"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 66
    :sswitch_2a
    const-string v3, "\\\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 67
    :sswitch_30
    const-string v3, "\\\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 62
    :sswitch_36
    const-string v3, "\\r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 60
    :sswitch_3c
    const-string v3, "\\f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 64
    :sswitch_42
    const-string v3, "\\v"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 61
    :sswitch_48
    const-string v3, "\\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 63
    :sswitch_4e
    const-string v3, "\\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 59
    :sswitch_54
    const-string v3, "\\b"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 58
    :sswitch_5a
    const-string v3, "\\a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 74
    :cond_60
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    and-int/lit8 v3, v2, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .end local v2    # "b":B
    :goto_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 82
    .end local v1    # "i":I
    :cond_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_8a
    .sparse-switch
        0x7 -> :sswitch_5a
        0x8 -> :sswitch_54
        0x9 -> :sswitch_4e
        0xa -> :sswitch_48
        0xb -> :sswitch_42
        0xc -> :sswitch_3c
        0xd -> :sswitch_36
        0x22 -> :sswitch_30
        0x27 -> :sswitch_2a
        0x5c -> :sswitch_24
    .end sparse-switch
.end method

.method static escapeBytes([B)Ljava/lang/String;
    .registers 2
    .param p0, "input"    # [B

    .line 110
    new-instance v0, Lcom/tds/protobuf/TextFormatEscaper$2;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/TextFormatEscaper$2;-><init>([B)V

    invoke-static {v0}, Lcom/tds/protobuf/TextFormatEscaper;->escapeBytes(Lcom/tds/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "input"    # Ljava/lang/String;

    .line 135
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .line 128
    invoke-static {p0}, Lcom/tds/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/tds/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/protobuf/TextFormatEscaper;->escapeBytes(Lcom/tds/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
