.class public final Lokhttp3/CertificatePinner;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/CertificatePinner$Builder;,
        Lokhttp3/CertificatePinner$Pin;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lokhttp3/CertificatePinner;


# instance fields
.field private final certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final pins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lokhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 129
    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v0

    sput-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V
    .registers 3
    .param p2, "certificateChainCleaner"    # Lokhttp3/internal/tls/CertificateChainCleaner;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lokhttp3/CertificatePinner$Pin;",
            ">;",
            "Lokhttp3/internal/tls/CertificateChainCleaner;",
            ")V"
        }
    .end annotation

    .line 134
    .local p1, "pins":Ljava/util/Set;, "Ljava/util/Set<Lokhttp3/CertificatePinner$Pin;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;

    .line 136
    iput-object p2, p0, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 137
    return-void
.end method

.method public static pin(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    .line 243
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_23

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sha256/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lokhttp3/CertificatePinner;->sha256(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 244
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Certificate pinning requires X509 certificates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static sha1(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    .registers 2
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    .line 250
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->sha1()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method static sha256(Ljava/security/cert/X509Certificate;)Lokio/ByteString;
    .registers 2
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    .line 254
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->sha256()Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/util/List;)V
    .registers 15
    .param p1, "hostname"    # Ljava/lang/String;
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

    .line 162
    .local p2, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-virtual {p0, p1}, Lokhttp3/CertificatePinner;->findMatchingPins(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 163
    .local v0, "pins":Ljava/util/List;, "Ljava/util/List<Lokhttp3/CertificatePinner$Pin;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 165
    :cond_b
    iget-object v1, p0, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    if-eqz v1, :cond_13

    .line 166
    invoke-virtual {v1, p2, p1}, Lokhttp3/internal/tls/CertificateChainCleaner;->clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 169
    :cond_13
    const/4 v1, 0x0

    .local v1, "c":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "certsSize":I
    :goto_18
    if-ge v1, v2, :cond_82

    .line 170
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 173
    .local v3, "x509Certificate":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 174
    .local v4, "sha1":Lokio/ByteString;
    const/4 v5, 0x0

    .line 176
    .local v5, "sha256":Lokio/ByteString;
    const/4 v6, 0x0

    .local v6, "p":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "pinsSize":I
    :goto_27
    if-ge v6, v7, :cond_7f

    .line 177
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lokhttp3/CertificatePinner$Pin;

    .line 178
    .local v8, "pin":Lokhttp3/CertificatePinner$Pin;
    iget-object v9, v8, Lokhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    const-string v10, "sha256/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 179
    if-nez v5, :cond_3f

    invoke-static {v3}, Lokhttp3/CertificatePinner;->sha256(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v5

    .line 180
    :cond_3f
    iget-object v9, v8, Lokhttp3/CertificatePinner$Pin;->hash:Lokio/ByteString;

    invoke-virtual {v9, v5}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    return-void

    .line 181
    :cond_48
    iget-object v9, v8, Lokhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    const-string v10, "sha1/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 182
    if-nez v4, :cond_58

    invoke-static {v3}, Lokhttp3/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lokio/ByteString;

    move-result-object v4

    .line 183
    :cond_58
    iget-object v9, v8, Lokhttp3/CertificatePinner$Pin;->hash:Lokio/ByteString;

    invoke-virtual {v9, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    return-void

    .line 176
    .end local v8    # "pin":Lokhttp3/CertificatePinner$Pin;
    :cond_61
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 185
    .restart local v8    # "pin":Lokhttp3/CertificatePinner$Pin;
    :cond_64
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported hashAlgorithm: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lokhttp3/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 169
    .end local v3    # "x509Certificate":Ljava/security/cert/X509Certificate;
    .end local v4    # "sha1":Lokio/ByteString;
    .end local v5    # "sha256":Lokio/ByteString;
    .end local v6    # "p":I
    .end local v7    # "pinsSize":I
    .end local v8    # "pin":Lokhttp3/CertificatePinner$Pin;
    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 191
    .end local v1    # "c":I
    .end local v2    # "certsSize":I
    :cond_82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    const-string v2, "Certificate pinning failure!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    const-string v2, "\n  Peer certificate chain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    .local v1, "message":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "c":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "certsSize":I
    :goto_98
    const-string v4, "\n    "

    if-ge v2, v3, :cond_c2

    .line 195
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 196
    .local v5, "x509Certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Lokhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 197
    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .end local v5    # "x509Certificate":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 199
    .end local v2    # "c":I
    .end local v3    # "certsSize":I
    :cond_c2
    const-string v2, "\n  Pinned certificates for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const/4 v2, 0x0

    .local v2, "p":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "pinsSize":I
    :goto_d6
    if-ge v2, v3, :cond_e8

    .line 201
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/CertificatePinner$Pin;

    .line 202
    .local v5, "pin":Lokhttp3/CertificatePinner$Pin;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .end local v5    # "pin":Lokhttp3/CertificatePinner$Pin;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d6

    .line 204
    .end local v2    # "p":I
    .end local v3    # "pinsSize":I
    :cond_e8
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public varargs check(Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "peerCertificates"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 210
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 211
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 140
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 141
    :cond_4
    instance-of v1, p1, Lokhttp3/CertificatePinner;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    move-object v2, p1

    check-cast v2, Lokhttp3/CertificatePinner;

    iget-object v2, v2, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 142
    invoke-static {v1, v2}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;

    move-object v2, p1

    check-cast v2, Lokhttp3/CertificatePinner;

    iget-object v2, v2, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;

    .line 143
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 141
    :goto_24
    return v0
.end method

.method findMatchingPins(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation

    .line 218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 219
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/CertificatePinner$Pin;>;"
    iget-object v1, p0, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/CertificatePinner$Pin;

    .line 220
    .local v2, "pin":Lokhttp3/CertificatePinner$Pin;
    invoke-virtual {v2, p1}, Lokhttp3/CertificatePinner$Pin;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 221
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 222
    :cond_28
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v2    # "pin":Lokhttp3/CertificatePinner$Pin;
    :cond_2b
    goto :goto_a

    .line 225
    :cond_2c
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 147
    iget-object v0, p0, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 148
    .local v0, "result":I
    :goto_a
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 149
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method withCertificateChainCleaner(Lokhttp3/internal/tls/CertificateChainCleaner;)Lokhttp3/CertificatePinner;
    .registers 4
    .param p1, "certificateChainCleaner"    # Lokhttp3/internal/tls/CertificateChainCleaner;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 231
    iget-object v0, p0, Lokhttp3/CertificatePinner;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    invoke-static {v0, p1}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 232
    move-object v0, p0

    goto :goto_11

    .line 233
    :cond_a
    new-instance v0, Lokhttp3/CertificatePinner;

    iget-object v1, p0, Lokhttp3/CertificatePinner;->pins:Ljava/util/Set;

    invoke-direct {v0, v1, p1}, Lokhttp3/CertificatePinner;-><init>(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V

    .line 231
    :goto_11
    return-object v0
.end method
