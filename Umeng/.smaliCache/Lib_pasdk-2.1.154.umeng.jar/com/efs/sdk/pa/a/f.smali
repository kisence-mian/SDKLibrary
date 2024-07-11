.class final Lcom/efs/sdk/pa/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/pa/a/d;


# instance fields
.field a:Lcom/efs/sdk/pa/PAMsgListener;

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/io/BufferedOutputStream;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;JJ)Lcom/efs/sdk/pa/b;
    .registers 14

    .line 82
    const-string v0, ")"

    const-string v1, "{"

    const-string v2, "("

    const/4 v3, 0x0

    if-nez p0, :cond_a

    .line 83
    return-object v3

    .line 86
    :cond_a
    new-instance v4, Lcom/efs/sdk/pa/b;

    invoke-direct {v4}, Lcom/efs/sdk/pa/b;-><init>()V

    .line 89
    nop

    .line 1142
    :try_start_10
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_b5

    .line 1143
    const-string v6, ""

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2c

    add-int/lit8 v5, v5, 0x2

    :try_start_1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_2c

    .line 1144
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2d

    .line 1147
    :cond_2c
    move-object v5, v6

    .line 2035
    :goto_2d
    iput-object v5, v4, Lcom/efs/sdk/pa/b;->a:Ljava/lang/String;

    .line 90
    nop

    .line 2118
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_34} :catch_b5

    const-string v8, "}"

    if-eqz v5, :cond_5a

    :try_start_38
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 2119
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2120
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2122
    if-eq v1, v7, :cond_59

    if-eq v0, v7, :cond_59

    add-int/lit8 v1, v1, 0x1

    .line 2123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_59

    if-le v0, v1, :cond_59

    .line 2124
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_82

    .line 2126
    :cond_59
    goto :goto_81

    .line 2127
    :cond_5a
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 2128
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2129
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2131
    if-eq v0, v7, :cond_81

    if-eq v1, v7, :cond_81

    add-int/lit8 v0, v0, 0x1

    .line 2132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_81

    if-le v1, v0, :cond_81

    .line 2133
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_82

    .line 2138
    :cond_81
    :goto_81
    move-object v0, v6

    .line 3043
    :goto_82
    iput-object v0, v4, Lcom/efs/sdk/pa/b;->b:Ljava/lang/String;

    .line 91
    nop

    .line 3104
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_aa

    .line 3106
    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 3107
    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 3109
    if-eq v0, v7, :cond_aa

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_aa

    .line 3110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_ab

    .line 3114
    :cond_aa
    nop

    .line 4051
    :goto_ab
    iput-object v6, v4, Lcom/efs/sdk/pa/b;->c:Ljava/lang/String;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_ad} :catch_b5

    .line 95
    nop

    .line 97
    nop

    .line 4059
    iput-wide p1, v4, Lcom/efs/sdk/pa/b;->d:J

    .line 98
    nop

    .line 4067
    iput-wide p3, v4, Lcom/efs/sdk/pa/b;->e:J

    .line 100
    return-object v4

    .line 93
    :catch_b5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    return-object v3
.end method


# virtual methods
.method public final a(Ljava/lang/String;JJ)V
    .registers 6

    .line 65
    invoke-static {p1, p2, p3, p4, p5}, Lcom/efs/sdk/pa/a/f;->b(Ljava/lang/String;JJ)Lcom/efs/sdk/pa/b;

    move-result-object p1

    .line 66
    if-eqz p1, :cond_3e

    .line 67
    iget-boolean p2, p0, Lcom/efs/sdk/pa/a/f;->b:Z

    if-eqz p2, :cond_13

    .line 68
    invoke-virtual {p1}, Lcom/efs/sdk/pa/b;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1021
    const-string p3, "PerformanceAnalyze"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_13
    iget-object p2, p0, Lcom/efs/sdk/pa/a/f;->c:Ljava/lang/String;

    if-eqz p2, :cond_39

    .line 73
    :try_start_17
    iget-object p2, p0, Lcom/efs/sdk/pa/a/f;->d:Ljava/io/BufferedOutputStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/efs/sdk/pa/b;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "\n"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_37} :catch_38

    goto :goto_39

    .line 74
    :catch_38
    move-exception p2

    .line 77
    :cond_39
    :goto_39
    iget-object p2, p0, Lcom/efs/sdk/pa/a/f;->a:Lcom/efs/sdk/pa/PAMsgListener;

    invoke-interface {p2, p1}, Lcom/efs/sdk/pa/PAMsgListener;->msg(Lcom/efs/sdk/pa/b;)V

    .line 79
    :cond_3e
    return-void
.end method
