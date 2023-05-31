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
            "Ljava/util/Set",
            "<",
            "Lcom/bytedance/sdk/a/b/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/a/b/a/i/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
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
            "Ljava/util/Set",
            "<",
            "Lcom/bytedance/sdk/a/b/g$b;",
            ">;",
            "Lcom/bytedance/sdk/a/b/a/i/c;",
            ")V"
        }
    .end annotation

    .prologue
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
    .registers 2

    .prologue
    .line 257
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a([B)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->c()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 250
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_c

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Certificate pinning requires X509 certificates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sha256/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lcom/bytedance/sdk/a/b/g;->b(Ljava/security/cert/X509Certificate;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/security/cert/X509Certificate;)Lcom/bytedance/sdk/a/a/f;
    .registers 2

    .prologue
    .line 261
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a([B)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/f;->d()Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lcom/bytedance/sdk/a/b/a/i/c;)Lcom/bytedance/sdk/a/b/g;
    .registers 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/g;->c:Lcom/bytedance/sdk/a/b/a/i/c;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Lcom/bytedance/sdk/a/b/g;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/g;->b:Ljava/util/Set;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/a/b/g;-><init>(Ljava/util/Set;Lcom/bytedance/sdk/a/b/a/i/c;)V

    move-object p0, v0

    goto :goto_8
.end method

.method a(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/g$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/g;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/g$b;

    .line 225
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/g$b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 226
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    :cond_27
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 230
    :cond_2b
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 165
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 166
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 186
    :cond_c
    :goto_c
    return-void

    .line 168
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/g;->c:Lcom/bytedance/sdk/a/b/a/i/c;

    if-eqz v0, :cond_17

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/g;->c:Lcom/bytedance/sdk/a/b/a/i/c;

    invoke-virtual {v0, p2, p1}, Lcom/bytedance/sdk/a/b/a/i/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 172
    :cond_17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    move v7, v4

    :goto_1c
    if-ge v7, v9, :cond_8b

    .line 173
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 179
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    move v5, v4

    move-object v2, v6

    move-object v3, v6

    :goto_2b
    if-ge v5, v10, :cond_87

    .line 180
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/a/b/g$b;

    .line 181
    iget-object v11, v1, Lcom/bytedance/sdk/a/b/g$b;->c:Ljava/lang/String;

    const-string v12, "sha256/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_53

    .line 182
    if-nez v2, :cond_43

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/g;->b(Ljava/security/cert/X509Certificate;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v2

    .line 183
    :cond_43
    iget-object v1, v1, Lcom/bytedance/sdk/a/b/g$b;->d:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_4b
    move-object v1, v2

    move-object v2, v3

    .line 179
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_2b

    .line 184
    :cond_53
    iget-object v11, v1, Lcom/bytedance/sdk/a/b/g$b;->c:Ljava/lang/String;

    const-string v12, "sha1/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6c

    .line 185
    if-nez v3, :cond_63

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/g;->a(Ljava/security/cert/X509Certificate;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v3

    .line 186
    :cond_63
    iget-object v1, v1, Lcom/bytedance/sdk/a/b/g$b;->d:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    goto :goto_c

    .line 188
    :cond_6c
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported hashAlgorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/g$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 172
    :cond_87
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1c

    .line 194
    :cond_8b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate pinning failure!"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Peer certificate chain:"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 197
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v4

    :goto_a1
    if-ge v1, v3, :cond_cc

    .line 198
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 199
    const-string v5, "\n    "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/g;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    .line 200
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a1

    .line 202
    :cond_cc
    const-string v0, "\n  Pinned certificates for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    move v1, v4

    :goto_e0
    if-ge v1, v3, :cond_f5

    .line 204
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/g$b;

    .line 205
    const-string v4, "\n    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e0

    .line 207
    :cond_f5
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 142
    if-ne p1, p0, :cond_4

    .line 143
    :goto_3
    return v1

    :cond_4
    instance-of v0, p1, Lcom/bytedance/sdk/a/b/g;

    if-eqz v0, :cond_24

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/g;->c:Lcom/bytedance/sdk/a/b/a/i/c;

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/a/b/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/g;->c:Lcom/bytedance/sdk/a/b/a/i/c;

    .line 144
    invoke-static {v2, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/g;->b:Ljava/util/Set;

    check-cast p1, Lcom/bytedance/sdk/a/b/g;

    iget-object v2, p1, Lcom/bytedance/sdk/a/b/g;->b:Ljava/util/Set;

    .line 145
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    :goto_22
    move v1, v0

    .line 143
    goto :goto_3

    .line 145
    :cond_24
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/g;->c:Lcom/bytedance/sdk/a/b/a/i/c;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/g;->c:Lcom/bytedance/sdk/a/b/a/i/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 151
    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/g;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    return v0

    .line 150
    :cond_14
    const/4 v0, 0x0

    goto :goto_a
.end method
