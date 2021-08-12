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
    .registers 4

    .line 46
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c/k;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->b()Lcom/bytedance/sdk/a/b/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/aa;->e()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/sdk/a/b/a/c/k;-><init>(Lcom/bytedance/sdk/a/b/w;ILjava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/a/c/k;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const-string v0, "HTTP/1."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x4

    const/16 v3, 0x9

    const-string v4, "Unexpected status line: "

    if-eqz v0, :cond_5e

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_47

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_47

    .line 60
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 61
    nop

    .line 62
    if-nez v0, :cond_2a

    .line 63
    sget-object v0, Lcom/bytedance/sdk/a/b/w;->a:Lcom/bytedance/sdk/a/b/w;

    goto :goto_2f

    .line 64
    :cond_2a
    const/4 v5, 0x1

    if-ne v0, v5, :cond_30

    .line 65
    sget-object v0, Lcom/bytedance/sdk/a/b/w;->b:Lcom/bytedance/sdk/a/b/w;

    .line 69
    :goto_2f
    goto :goto_69

    .line 67
    :cond_30
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_47
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_5e
    const-string v0, "ICY "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 71
    sget-object v0, Lcom/bytedance/sdk/a/b/w;->a:Lcom/bytedance/sdk/a/b/w;

    .line 72
    move v3, v2

    .line 78
    :goto_69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v3, 0x3

    if-lt v5, v6, :cond_c4

    .line 83
    :try_start_71
    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_79} :catch_ac

    .line 86
    nop

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_a4

    .line 92
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_8d

    .line 95
    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a6

    .line 93
    :cond_8d
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_a4
    const-string p0, ""

    .line 98
    :goto_a6
    new-instance v1, Lcom/bytedance/sdk/a/b/a/c/k;

    invoke-direct {v1, v0, v5, p0}, Lcom/bytedance/sdk/a/b/a/c/k;-><init>(Lcom/bytedance/sdk/a/b/w;ILjava/lang/String;)V

    return-object v1

    .line 84
    :catch_ac
    move-exception v0

    .line 85
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_c4
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_db
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/c/k;->a:Lcom/bytedance/sdk/a/b/w;

    sget-object v2, Lcom/bytedance/sdk/a/b/w;->a:Lcom/bytedance/sdk/a/b/w;

    if-ne v1, v2, :cond_e

    const-string v1, "HTTP/1.0"

    goto :goto_10

    :cond_e
    const-string v1, "HTTP/1.1"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/a/b/a/c/k;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/c/k;->c:Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/c/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
