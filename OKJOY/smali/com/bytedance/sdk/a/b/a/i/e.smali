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

    .prologue
    .line 39
    new-instance v0, Lcom/bytedance/sdk/a/b/a/i/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/i/e;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/b/a/i/e;->a:Lcom/bytedance/sdk/a/b/a/i/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static a(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .registers 6
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
    .line 103
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    .line 104
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v1

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    return-object v2
.end method

.method private static a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .registers 7
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
    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    :try_start_5
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    .line 115
    if-nez v0, :cond_10

    .line 116
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 136
    :goto_f
    return-object v0

    .line 118
    :cond_10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 119
    check-cast v0, Ljava/util/List;

    .line 120
    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_14

    .line 123
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 124
    if-eqz v1, :cond_14

    .line 127
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_14

    .line 128
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    if-eqz v0, :cond_14

    .line 130
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_44} :catch_45

    goto :goto_14

    .line 135
    :catch_45
    move-exception v0

    .line 136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_4b
    move-object v0, v2

    .line 134
    goto :goto_f
.end method

.method private b(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x7

    invoke-static {p2, v0}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v3

    .line 68
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_b
    if-ge v2, v4, :cond_1f

    .line 69
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 70
    const/4 v0, 0x1

    .line 73
    :goto_1a
    return v0

    .line 68
    :cond_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_1f
    move v0, v1

    .line 73
    goto :goto_1a
.end method

.method private c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 82
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v5

    .line 83
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v3, v2

    move v0, v2

    :goto_13
    if-ge v3, v6, :cond_28

    .line 85
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    .line 99
    :goto_22
    return v0

    .line 83
    :cond_23
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto :goto_13

    .line 90
    :cond_28
    if-nez v0, :cond_40

    .line 91
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/bytedance/sdk/a/b/a/i/d;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/a/b/a/i/d;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string v0, "cn"

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/a/b/a/i/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_40

    .line 95
    invoke-virtual {p0, v4, v0}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_22

    :cond_40
    move v0, v2

    .line 99
    goto :goto_22
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0x2e

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 150
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, ".."

    .line 151
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 232
    :cond_1d
    :goto_1d
    return v0

    .line 155
    :cond_1e
    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, ".."

    .line 156
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 170
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    :cond_4f
    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 178
    :cond_68
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 181
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 183
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1d

    .line 197
    :cond_7b
    const-string v3, "*."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0x2a

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v6, :cond_1d

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_1d

    .line 211
    const-string v3, "*."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 217
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v3, v2

    .line 225
    if-lez v2, :cond_bb

    add-int/lit8 v2, v2, -0x1

    .line 226
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    if-ne v2, v6, :cond_1d

    :cond_bb
    move v0, v1

    .line 232
    goto/16 :goto_1d
.end method

.method public a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 4

    .prologue
    .line 58
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/i/e;->b(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    .line 58
    :goto_a
    return v0

    .line 60
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/a/b/a/i/e;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    goto :goto_a
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 50
    :try_start_1
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 51
    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/a/b/a/i/e;->a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_d} :catch_f

    move-result v0

    .line 53
    :goto_e
    return v0

    .line 52
    :catch_f
    move-exception v0

    move v0, v1

    .line 53
    goto :goto_e
.end method
