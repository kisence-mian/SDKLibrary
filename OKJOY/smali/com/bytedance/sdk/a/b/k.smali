.class public final Lcom/bytedance/sdk/a/b/k;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/k$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/bytedance/sdk/a/b/k;

.field public static final b:Lcom/bytedance/sdk/a/b/k;

.field public static final c:Lcom/bytedance/sdk/a/b/k;

.field private static final h:[Lcom/bytedance/sdk/a/b/h;


# instance fields
.field final d:Z

.field final e:Z

.field final f:[Ljava/lang/String;

.field final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/bytedance/sdk/a/b/h;

    sget-object v1, Lcom/bytedance/sdk/a/b/h;->aX:Lcom/bytedance/sdk/a/b/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/sdk/a/b/h;->bb:Lcom/bytedance/sdk/a/b/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/sdk/a/b/h;->aY:Lcom/bytedance/sdk/a/b/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/sdk/a/b/h;->bc:Lcom/bytedance/sdk/a/b/h;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bytedance/sdk/a/b/h;->bi:Lcom/bytedance/sdk/a/b/h;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/bytedance/sdk/a/b/h;->bh:Lcom/bytedance/sdk/a/b/h;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bytedance/sdk/a/b/h;->ay:Lcom/bytedance/sdk/a/b/h;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bytedance/sdk/a/b/h;->aI:Lcom/bytedance/sdk/a/b/h;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/bytedance/sdk/a/b/h;->az:Lcom/bytedance/sdk/a/b/h;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/bytedance/sdk/a/b/h;->aJ:Lcom/bytedance/sdk/a/b/h;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/bytedance/sdk/a/b/h;->ag:Lcom/bytedance/sdk/a/b/h;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/bytedance/sdk/a/b/h;->ah:Lcom/bytedance/sdk/a/b/h;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/bytedance/sdk/a/b/h;->E:Lcom/bytedance/sdk/a/b/h;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/bytedance/sdk/a/b/h;->I:Lcom/bytedance/sdk/a/b/h;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/bytedance/sdk/a/b/h;->i:Lcom/bytedance/sdk/a/b/h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/sdk/a/b/k;->h:[Lcom/bytedance/sdk/a/b/h;

    .line 67
    new-instance v0, Lcom/bytedance/sdk/a/b/k$a;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/a/b/k$a;-><init>(Z)V

    sget-object v1, Lcom/bytedance/sdk/a/b/k;->h:[Lcom/bytedance/sdk/a/b/h;

    .line 68
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/k$a;->a([Lcom/bytedance/sdk/a/b/h;)Lcom/bytedance/sdk/a/b/k$a;

    move-result-object v0

    new-array v1, v7, [Lcom/bytedance/sdk/a/b/ad;

    sget-object v2, Lcom/bytedance/sdk/a/b/ad;->a:Lcom/bytedance/sdk/a/b/ad;

    aput-object v2, v1, v4

    sget-object v2, Lcom/bytedance/sdk/a/b/ad;->b:Lcom/bytedance/sdk/a/b/ad;

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/sdk/a/b/ad;->c:Lcom/bytedance/sdk/a/b/ad;

    aput-object v2, v1, v5

    sget-object v2, Lcom/bytedance/sdk/a/b/ad;->d:Lcom/bytedance/sdk/a/b/ad;

    aput-object v2, v1, v6

    .line 69
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/k$a;->a([Lcom/bytedance/sdk/a/b/ad;)Lcom/bytedance/sdk/a/b/k$a;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/a/b/k$a;->a(Z)Lcom/bytedance/sdk/a/b/k$a;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/k$a;->a()Lcom/bytedance/sdk/a/b/k;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/k;->a:Lcom/bytedance/sdk/a/b/k;

    .line 76
    new-instance v0, Lcom/bytedance/sdk/a/b/k$a;

    sget-object v1, Lcom/bytedance/sdk/a/b/k;->a:Lcom/bytedance/sdk/a/b/k;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/b/k$a;-><init>(Lcom/bytedance/sdk/a/b/k;)V

    new-array v1, v3, [Lcom/bytedance/sdk/a/b/ad;

    sget-object v2, Lcom/bytedance/sdk/a/b/ad;->d:Lcom/bytedance/sdk/a/b/ad;

    aput-object v2, v1, v4

    .line 77
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/k$a;->a([Lcom/bytedance/sdk/a/b/ad;)Lcom/bytedance/sdk/a/b/k$a;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/a/b/k$a;->a(Z)Lcom/bytedance/sdk/a/b/k$a;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/k$a;->a()Lcom/bytedance/sdk/a/b/k;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/k;->b:Lcom/bytedance/sdk/a/b/k;

    .line 84
    new-instance v0, Lcom/bytedance/sdk/a/b/k$a;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/a/b/k$a;-><init>(Z)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/k$a;->a()Lcom/bytedance/sdk/a/b/k;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/k;->c:Lcom/bytedance/sdk/a/b/k;

    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/b/k$a;)V
    .registers 3

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/k$a;->a:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/k;->d:Z

    .line 93
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/k$a;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/k;->f:[Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/k$a;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/k;->g:[Ljava/lang/String;

    .line 95
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/k$a;->d:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/k;->e:Z

    .line 96
    return-void
.end method

.method private b(Ljavax/net/ssl/SSLSocket;Z)Lcom/bytedance/sdk/a/b/k;
    .registers 8

    .prologue
    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/k;->f:[Ljava/lang/String;

    if-eqz v0, :cond_49

    sget-object v0, Lcom/bytedance/sdk/a/b/h;->a:Ljava/util/Comparator;

    .line 142
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/k;->f:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_10
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/k;->g:[Ljava/lang/String;

    if-eqz v1, :cond_4e

    sget-object v1, Lcom/bytedance/sdk/a/b/a/c;->h:Ljava/util/Comparator;

    .line 145
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/k;->g:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 150
    :goto_20
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    .line 151
    sget-object v3, Lcom/bytedance/sdk/a/b/h;->a:Ljava/util/Comparator;

    const-string v4, "TLS_FALLBACK_SCSV"

    invoke-static {v3, v2, v4}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 153
    if-eqz p2, :cond_37

    const/4 v4, -0x1

    if-eq v3, v4, :cond_37

    .line 154
    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcom/bytedance/sdk/a/b/a/c;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_37
    new-instance v2, Lcom/bytedance/sdk/a/b/k$a;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/a/b/k$a;-><init>(Lcom/bytedance/sdk/a/b/k;)V

    .line 159
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/a/b/k$a;->a([Ljava/lang/String;)Lcom/bytedance/sdk/a/b/k$a;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/k$a;->b([Ljava/lang/String;)Lcom/bytedance/sdk/a/b/k$a;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/k$a;->a()Lcom/bytedance/sdk/a/b/k;

    move-result-object v0

    .line 158
    return-object v0

    .line 143
    :cond_49
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 146
    :cond_4e
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    goto :goto_20
.end method


# virtual methods
.method a(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 5

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/a/b/k;->b(Ljavax/net/ssl/SSLSocket;Z)Lcom/bytedance/sdk/a/b/k;

    move-result-object v0

    .line 128
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/k;->g:[Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 129
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/k;->g:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 131
    :cond_d
    iget-object v1, v0, Lcom/bytedance/sdk/a/b/k;->f:[Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 132
    iget-object v0, v0, Lcom/bytedance/sdk/a/b/k;->f:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 134
    :cond_16
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/k;->d:Z

    return v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 176
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/k;->d:Z

    if-nez v1, :cond_6

    .line 190
    :cond_5
    :goto_5
    return v0

    .line 180
    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/k;->g:[Ljava/lang/String;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/bytedance/sdk/a/b/a/c;->h:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/k;->g:[Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/a/b/a/c;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 185
    :cond_18
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/k;->f:[Ljava/lang/String;

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/bytedance/sdk/a/b/h;->a:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/k;->f:[Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/a/b/a/c;->b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    :cond_2a
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/k;->f:[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/k;->f:[Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/h;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/k;->g:[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/k;->g:[Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/ad;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/k;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 195
    instance-of v2, p1, Lcom/bytedance/sdk/a/b/k;

    if-nez v2, :cond_7

    .line 207
    :cond_6
    :goto_6
    return v0

    .line 196
    :cond_7
    if-ne p1, p0, :cond_b

    move v0, v1

    goto :goto_6

    .line 198
    :cond_b
    check-cast p1, Lcom/bytedance/sdk/a/b/k;

    .line 199
    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/k;->d:Z

    iget-boolean v3, p1, Lcom/bytedance/sdk/a/b/k;->d:Z

    if-ne v2, v3, :cond_6

    .line 201
    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/k;->d:Z

    if-eqz v2, :cond_31

    .line 202
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/k;->f:[Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/sdk/a/b/k;->f:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 203
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/k;->g:[Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/sdk/a/b/k;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 204
    iget-boolean v2, p0, Lcom/bytedance/sdk/a/b/k;->e:Z

    iget-boolean v3, p1, Lcom/bytedance/sdk/a/b/k;->e:Z

    if-ne v2, v3, :cond_6

    :cond_31
    move v0, v1

    .line 207
    goto :goto_6
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 212
    const/16 v0, 0x11

    .line 213
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/k;->d:Z

    if-eqz v1, :cond_1f

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/k;->f:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 215
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/k;->g:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/k;->e:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_1e
    add-int/2addr v0, v1

    .line 218
    :cond_1f
    return v0

    .line 216
    :cond_20
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/k;->d:Z

    if-nez v0, :cond_7

    .line 224
    const-string v0, "ConnectionSpec()"

    .line 229
    :goto_6
    return-object v0

    .line 227
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/k;->f:[Ljava/lang/String;

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/k;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_13
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/k;->g:[Ljava/lang/String;

    if-eqz v1, :cond_52

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/k;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    :goto_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", tlsVersions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/k;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 227
    :cond_4f
    const-string v0, "[all enabled]"

    goto :goto_13

    .line 228
    :cond_52
    const-string v1, "[all enabled]"

    goto :goto_1f
.end method
