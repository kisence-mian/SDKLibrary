.class public final Lcom/bytedance/sdk/a/b/a/i/e;
.super Ljava/lang/Object;
.source "OkHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final a:Lcom/bytedance/sdk/a/b/a/i/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/bytedance/sdk/a/b/a/i/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/i/e;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/b/a/i/e;->a:Lcom/bytedance/sdk/a/b/a/i/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static a(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    .line 104
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p0

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    return-object v1
.end method

.method private static a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    :try_start_5
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p0

    .line 115
    if-nez p0, :cond_10

    .line 116
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 118
    :cond_10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 119
    check-cast v1, Ljava/util/List;

    .line 120
    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2a

    .line 121
    goto :goto_14

    .line 123
    :cond_2a
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 124
    if-nez v2, :cond_34

    .line 125
    goto :goto_14

    .line 127
    :cond_34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_46

    .line 128
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    if-eqz v1, :cond_46

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_46} :catch_48

    .line 133
    :cond_46
    goto :goto_14

    .line 134
    :cond_47
    return-object v0

    .line 135
    :catch_48
    move-exception p0

    .line 136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 7

    .line 67
    const/4 v0, 0x7

    invoke-static {p2, v0}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p2

    .line 68
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1e

    .line 69
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 70
    const/4 p1, 0x1

    return p1

    .line 68
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 73
    :cond_1e
    return v1
.end method

.method private c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 9

    .line 80
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 81
    nop

    .line 82
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_14
    if-ge v4, v1, :cond_28

    .line 84
    nop

    .line 85
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 86
    return v2

    .line 83
    :cond_24
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    goto :goto_14

    .line 90
    :cond_28
    if-nez v5, :cond_40

    .line 91
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    .line 93
    new-instance v0, Lcom/bytedance/sdk/a/b/a/i/d;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/a/b/a/i/d;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string p2, "cn"

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/a/b/a/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 94
    if-eqz p2, :cond_40

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 99
    :cond_40
    return v3
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 150
    const/4 v0, 0x0

    if-eqz p1, :cond_ba

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_ba

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ba

    .line 151
    const-string v2, ".."

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto/16 :goto_ba

    .line 155
    :cond_1b
    if-eqz p2, :cond_b9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b9

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b9

    .line 156
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    goto/16 :goto_b9

    .line 170
    :cond_31
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x2e

    if-nez v2, :cond_4a

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    :cond_4a
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 178
    :cond_61
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 181
    const-string v1, "*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_74

    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 197
    :cond_74
    const-string v1, "*."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b8

    const/16 v2, 0x2a

    const/4 v4, 0x1

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_87

    goto :goto_b8

    .line 206
    :cond_87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_92

    .line 208
    return v0

    .line 211
    :cond_92
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 213
    return v0

    .line 217
    :cond_99
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 218
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a4

    .line 220
    return v0

    .line 224
    :cond_a4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v1, p2

    .line 225
    if-lez v1, :cond_b7

    sub-int/2addr v1, v4

    .line 226
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p1

    if-eq p1, v5, :cond_b7

    .line 228
    return v0

    .line 232
    :cond_b7
    return v4

    .line 200
    :cond_b8
    :goto_b8
    return v0

    .line 158
    :cond_b9
    :goto_b9
    return v0

    .line 153
    :cond_ba
    :goto_ba
    return v0
.end method

.method public a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 4

    .line 58
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/i/e;->b(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    goto :goto_f

    .line 60
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/i/e;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    .line 58
    :goto_f
    return p1
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 4

    .line 50
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    .line 51
    aget-object p2, p2, v0

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_d} :catch_e

    return p1

    .line 52
    :catch_e
    move-exception p1

    .line 53
    return v0
.end method
