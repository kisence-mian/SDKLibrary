.class public final Lcom/bytedance/sdk/a/b/g;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/g$a;,
        Lcom/bytedance/sdk/a/b/g$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/bytedance/sdk/a/b/g;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/a/b/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/a/b/a/i/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 130
    new-instance v0, Lcom/bytedance/sdk/a/b/g$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/g$a;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/g$a;->a()Lcom/bytedance/sdk/a/b/g;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/g;->a:Lcom/bytedance/sdk/a/b/g;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Lcom/bytedance/sdk/a/b/a/i/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/a/b/g$b;",
            ">;",
            "Lcom/bytedance/sdk/a/b/a/i/c;",
            ")V"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/g;->b:Ljava/util/Set;

    .line 137
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/g;->c:Lcom/bytedance/sdk/a/b/a/i/c;

    .line 138
    return-void
.end method

.method static a(Ljava/security/cert/X509Certificate;)Lcom/bytedance/sdk/a/a/f;
    .registers 1

    .line 257
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/a/a/f;->a([B)Lcom/bytedance/sdk/a/a/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/f;->c()Lcom/bytedance/sdk/a/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3

    .line 250
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_22

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sha256/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lcom/bytedance/sdk/a/b/g;->b(Ljava/security/cert/X509Certificate;)Lcom/bytedance/sdk/a/a/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 251
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Certificate pinning requires X509 certificates"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static b(Ljava/security/cert/X509Certificate;)Lcom/bytedance/sdk/a/a/f;
    .registers 1

    .line 261
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/a/a/f;->a([B)Lcom/bytedance/sdk/a/a/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/f;->d()Lcom/bytedance/sdk/a/a/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/a/b/a/i/c;)Lcom/bytedance/sdk/a/b/g;
    .registers 4

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/g;->c:Lcom/bytedance/sdk/a/b/a/i/c;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    goto :goto_11

    :cond_a
    new-instance v0, Lcom/bytedance/sdk/a/b/g;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/g;->b:Ljava/util/Set;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/a/b/g;-><init>(Ljava/util/Set;Lcom/bytedance/sdk/a/b/a/i/c;)V

    :goto_11
    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/g$b;",
            ">;"
        }
    .end annotation

    .line 223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/g;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/a/b/g$b;

    .line 225
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/a/b/g$b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 226
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    :cond_27
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_2a
    goto :goto_a

    .line 230
    :cond_2b
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 168
    :cond_b
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/g;->c:Lcom/bytedance/sdk/a/b/a/i/c;

    if-eqz v1, :cond_13

    .line 169
    invoke-virtual {v1, p2, p1}, Lcom/bytedance/sdk/a/b/a/i/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 172
    :cond_13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_85

    .line 173
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 176
    nop

    .line 177
    nop

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v8, v2

    move-object v7, v6

    :goto_2a
    if-ge v8, v5, :cond_82

    .line 180
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bytedance/sdk/a/b/g$b;

    .line 181
    iget-object v10, v9, Lcom/bytedance/sdk/a/b/g$b;->c:Ljava/lang/String;

    const-string v11, "sha256/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4b

    .line 182
    if-nez v6, :cond_42

    invoke-static {v4}, Lcom/bytedance/sdk/a/b/g;->b(Ljava/security/cert/X509Certificate;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v6

    .line 183
    :cond_42
    iget-object v9, v9, Lcom/bytedance/sdk/a/b/g$b;->d:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v9, v6}, Lcom/bytedance/sdk/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    return-void

    .line 184
    :cond_4b
    iget-object v10, v9, Lcom/bytedance/sdk/a/b/g$b;->c:Ljava/lang/String;

    const-string v11, "sha1/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 185
    if-nez v7, :cond_5b

    invoke-static {v4}, Lcom/bytedance/sdk/a/b/g;->a(Ljava/security/cert/X509Certificate;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v7

    .line 186
    :cond_5b
    iget-object v9, v9, Lcom/bytedance/sdk/a/b/g$b;->d:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v9, v7}, Lcom/bytedance/sdk/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    return-void

    .line 179
    :cond_64
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 188
    :cond_67
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported hashAlgorithm: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, v9, Lcom/bytedance/sdk/a/b/g$b;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 172
    :cond_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 194
    :cond_85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    const-string v3, "Certificate pinning failure!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    const-string v3, "\n  Peer certificate chain:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 197
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_9b
    const-string v5, "\n    "

    if-ge v4, v3, :cond_c5

    .line 198
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 199
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6}, Lcom/bytedance/sdk/a/b/g;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 200
    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_9b

    .line 202
    :cond_c5
    const-string p2, "\n  Pinned certificates for "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    :goto_d8
    if-ge v2, p1, :cond_ea

    .line 204
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/a/b/g$b;

    .line 205
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_d8

    .line 207
    :cond_ea
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 142
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 143
    :cond_4
    instance-of v1, p1, Lcom/bytedance/sdk/a/b/g;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/g;->c:Lcom/bytedance/sdk/a/b/a/i/c;

    check-cast p1, Lcom/bytedance/sdk/a/b/g;

    iget-object v2, p1, Lcom/bytedance/sdk/a/b/g;->c:Lcom/bytedance/sdk/a/b/a/i/c;

    .line 144
    invoke-static {v1, v2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/g;->b:Ljava/util/Set;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/g;->b:Ljava/util/Set;

    .line 145
    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 143
    :goto_20
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/g;->c:Lcom/bytedance/sdk/a/b/a/i/c;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 151
    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/g;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    return v0
.end method
