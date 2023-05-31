.class public final Lokhttp3/internal/tls/OkHostnameVerifier;
.super Ljava/lang/Object;
.source "OkHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final ALT_DNS_NAME:I = 0x2

.field private static final ALT_IPA_NAME:I = 0x7

.field public static final INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Lokhttp3/internal/tls/OkHostnameVerifier;

    invoke-direct {v0}, Lokhttp3/internal/tls/OkHostnameVerifier;-><init>()V

    sput-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .registers 6
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const/4 v3, 0x7

    invoke-static {p0, v3}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v1

    .line 86
    .local v1, "altIpaNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x2

    invoke-static {p0, v3}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "altDnsNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    return-object v2
.end method

.method private static getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .registers 13
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_5
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v7

    .line 97
    .local v7, "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez v7, :cond_10

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 118
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_f
    :goto_f
    return-object v5

    .line 100
    .restart local v5    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_10
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_14
    :goto_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 101
    .local v6, "subjectAltName":Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 102
    .local v4, "entry":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v4, :cond_14

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_14

    .line 105
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 106
    .local v2, "altNameType":Ljava/lang/Integer;
    if-eqz v2, :cond_14

    .line 109
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p1, :cond_14

    .line 110
    const/4 v9, 0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    .local v1, "altName":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 112
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_46} :catch_47

    goto :goto_14

    .line 117
    .end local v1    # "altName":Ljava/lang/String;
    .end local v2    # "altNameType":Ljava/lang/Integer;
    .end local v4    # "entry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "subjectAltName":Ljava/lang/Object;
    .end local v7    # "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catch_47
    move-exception v3

    .line 118
    .local v3, "e":Ljava/security/cert/CertificateParsingException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_f
.end method

.method private verifyHostname(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 7
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 74
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 75
    const/4 v2, 0x2

    invoke-static {p2, v2}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v1

    .line 76
    .local v1, "altNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    .local v0, "altName":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyHostname(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 78
    const/4 v2, 0x1

    .line 81
    .end local v0    # "altName":Ljava/lang/String;
    :goto_22
    return v2

    :cond_23
    const/4 v2, 0x0

    goto :goto_22
.end method

.method private verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 7
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 63
    const/4 v3, 0x7

    invoke-static {p2, v3}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, "altNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_a
    if-ge v1, v2, :cond_1d

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 66
    const/4 v3, 0x1

    .line 69
    :goto_19
    return v3

    .line 64
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 69
    :cond_1d
    const/4 v3, 0x0

    goto :goto_19
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 56
    invoke-static {p1}, Lokhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 57
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    .line 56
    :goto_a
    return v0

    .line 58
    :cond_b
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyHostname(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    goto :goto_a
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    const/4 v3, 0x0

    .line 48
    :try_start_1
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 49
    .local v0, "certificates":[Ljava/security/cert/Certificate;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, v2}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_d} :catch_f

    move-result v2

    .line 51
    .end local v0    # "certificates":[Ljava/security/cert/Certificate;
    :goto_e
    return v2

    .line 50
    :catch_f
    move-exception v1

    .local v1, "e":Ljavax/net/ssl/SSLException;
    move v2, v3

    .line 51
    goto :goto_e
.end method

.method public verifyHostname(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x2e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, ".."

    .line 133
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 214
    :cond_1d
    :goto_1d
    return v2

    .line 137
    :cond_1e
    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "."

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, ".."

    .line 138
    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 152
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_4f
    const-string v4, "."

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 160
    :cond_68
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 163
    const-string v4, "*"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 165
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1d

    .line 179
    :cond_7b
    const-string v4, "*."

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v4, 0x2a

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v7, :cond_1d

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_1d

    .line 193
    const-string v4, "*."

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 199
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "suffix":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v1, v4, v5

    .line 207
    .local v1, "suffixStartIndexInHostname":I
    if-lez v1, :cond_bb

    add-int/lit8 v4, v1, -0x1

    .line 208
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    if-ne v4, v7, :cond_1d

    :cond_bb
    move v2, v3

    .line 214
    goto/16 :goto_1d
.end method
