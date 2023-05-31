.class public final Lcom/bytedance/sdk/a/b/a/c/k;
.super Ljava/lang/Object;
.source "StatusLine.java"


# instance fields
.field public final a:Lcom/bytedance/sdk/a/b/w;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/b/w;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/c/k;->a:Lcom/bytedance/sdk/a/b/w;

    .line 41
    iput p2, p0, Lcom/bytedance/sdk/a/b/a/c/k;->b:I

    .line 42
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/c/k;->c:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/a/c/k;
    .registers 5

    .prologue
    .line 46
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c/k;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->b()Lcom/bytedance/sdk/a/b/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/b/a/c/k;-><init>(Lcom/bytedance/sdk/a/b/w;ILjava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/a/c/k;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/16 v1, 0x9

    .line 56
    const-string v0, "HTTP/1."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_1a

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_33

    .line 58
    :cond_1a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected status line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_33
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 62
    if-nez v0, :cond_5f

    .line 63
    sget-object v0, Lcom/bytedance/sdk/a/b/w;->a:Lcom/bytedance/sdk/a/b/w;

    .line 78
    :goto_3e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x3

    if-ge v2, v3, :cond_a3

    .line 79
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected status line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_5f
    const/4 v2, 0x1

    if-ne v0, v2, :cond_65

    .line 65
    sget-object v0, Lcom/bytedance/sdk/a/b/w;->b:Lcom/bytedance/sdk/a/b/w;

    goto :goto_3e

    .line 67
    :cond_65
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected status line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_7e
    const-string v0, "ICY "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 71
    sget-object v0, Lcom/bytedance/sdk/a/b/w;->a:Lcom/bytedance/sdk/a/b/w;

    .line 72
    const/4 v1, 0x4

    goto :goto_3e

    .line 74
    :cond_8a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected status line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_a3
    add-int/lit8 v2, v1, 0x3

    :try_start_a5
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/NumberFormatException; {:try_start_a5 .. :try_end_ac} :catch_d8

    move-result v3

    .line 90
    const-string v2, ""

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v1, 0x3

    if-le v4, v5, :cond_fe

    .line 92
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_f2

    .line 93
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected status line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :catch_d8
    move-exception v0

    .line 85
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected status line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_f2
    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_f8
    new-instance v2, Lcom/bytedance/sdk/a/b/a/c/k;

    invoke-direct {v2, v0, v3, v1}, Lcom/bytedance/sdk/a/b/a/c/k;-><init>(Lcom/bytedance/sdk/a/b/w;ILjava/lang/String;)V

    return-object v2

    :cond_fe
    move-object v1, v2

    goto :goto_f8
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/k;->a:Lcom/bytedance/sdk/a/b/w;

    sget-object v2, Lcom/bytedance/sdk/a/b/w;->a:Lcom/bytedance/sdk/a/b/w;

    if-ne v0, v2, :cond_2d

    const-string v0, "HTTP/1.0"

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/c/k;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/c/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/c/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_2d
    const-string v0, "HTTP/1.1"

    goto :goto_f
.end method
