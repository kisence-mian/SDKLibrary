.class public final Lcom/bytedance/sdk/a/b/a;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final a:Lcom/bytedance/sdk/a/b/s;

.field final b:Lcom/bytedance/sdk/a/b/o;

.field final c:Ljavax/net/SocketFactory;

.field final d:Lcom/bytedance/sdk/a/b/b;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/w;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/k;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Ljava/net/Proxy;

.field final i:Ljavax/net/ssl/SSLSocketFactory;

.field final j:Ljavax/net/ssl/HostnameVerifier;

.field final k:Lcom/bytedance/sdk/a/b/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/bytedance/sdk/a/b/o;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/bytedance/sdk/a/b/g;Lcom/bytedance/sdk/a/b/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/bytedance/sdk/a/b/o;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/bytedance/sdk/a/b/g;",
            "Lcom/bytedance/sdk/a/b/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/w;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/k;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/bytedance/sdk/a/b/s$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/s$a;-><init>()V

    if-eqz p5, :cond_d

    const-string v1, "https"

    goto :goto_f

    :cond_d
    const-string v1, "http"

    .line 58
    :goto_f
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/s$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/s$a;->d(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/a/b/s$a;->a(I)Lcom/bytedance/sdk/a/b/s$a;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/s$a;->c()Lcom/bytedance/sdk/a/b/s;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a;->a:Lcom/bytedance/sdk/a/b/s;

    .line 63
    if-eqz p3, :cond_72

    .line 64
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a;->b:Lcom/bytedance/sdk/a/b/o;

    .line 66
    if-eqz p4, :cond_6a

    .line 67
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a;->c:Ljavax/net/SocketFactory;

    .line 69
    if-eqz p8, :cond_62

    .line 72
    iput-object p8, p0, Lcom/bytedance/sdk/a/b/a;->d:Lcom/bytedance/sdk/a/b/b;

    .line 74
    if-eqz p10, :cond_5a

    .line 75
    invoke-static {p10}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a;->e:Ljava/util/List;

    .line 77
    if-eqz p11, :cond_52

    .line 78
    invoke-static {p11}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a;->f:Ljava/util/List;

    .line 80
    if-eqz p12, :cond_4a

    .line 81
    iput-object p12, p0, Lcom/bytedance/sdk/a/b/a;->g:Ljava/net/ProxySelector;

    .line 83
    iput-object p9, p0, Lcom/bytedance/sdk/a/b/a;->h:Ljava/net/Proxy;

    .line 84
    iput-object p5, p0, Lcom/bytedance/sdk/a/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 85
    iput-object p6, p0, Lcom/bytedance/sdk/a/b/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 86
    iput-object p7, p0, Lcom/bytedance/sdk/a/b/a;->k:Lcom/bytedance/sdk/a/b/g;

    .line 87
    return-void

    .line 80
    :cond_4a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxySelector == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_52
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connectionSpecs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_5a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "protocols == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_62
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxyAuthenticator == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_6a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "socketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_72
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/a/b/s;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->a:Lcom/bytedance/sdk/a/b/s;

    return-object v0
.end method

.method a(Lcom/bytedance/sdk/a/b/a;)Z
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->b:Lcom/bytedance/sdk/a/b/o;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a;->b:Lcom/bytedance/sdk/a/b/o;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->d:Lcom/bytedance/sdk/a/b/b;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a;->d:Lcom/bytedance/sdk/a/b/b;

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a;->e:Ljava/util/List;

    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->f:Ljava/util/List;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a;->f:Ljava/util/List;

    .line 194
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->g:Ljava/net/ProxySelector;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a;->g:Ljava/net/ProxySelector;

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->h:Ljava/net/Proxy;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a;->h:Ljava/net/Proxy;

    .line 196
    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 197
    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 198
    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->k:Lcom/bytedance/sdk/a/b/g;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a;->k:Lcom/bytedance/sdk/a/b/g;

    .line 199
    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 200
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result p1

    if-ne v0, p1, :cond_6e

    const/4 p1, 0x1

    goto :goto_6f

    :cond_6e
    const/4 p1, 0x0

    .line 191
    :goto_6f
    return p1
.end method

.method public b()Lcom/bytedance/sdk/a/b/o;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->b:Lcom/bytedance/sdk/a/b/o;

    return-object v0
.end method

.method public c()Ljavax/net/SocketFactory;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->c:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/a/b/b;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->d:Lcom/bytedance/sdk/a/b/b;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/w;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 169
    instance-of v0, p1, Lcom/bytedance/sdk/a/b/a;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->a:Lcom/bytedance/sdk/a/b/s;

    check-cast p1, Lcom/bytedance/sdk/a/b/a;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/a;->a:Lcom/bytedance/sdk/a/b/s;

    .line 170
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 171
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/a;->a(Lcom/bytedance/sdk/a/b/a;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 169
    :goto_19
    return p1
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/k;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/net/ProxySelector;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public h()Ljava/net/Proxy;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->h:Ljava/net/Proxy;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 176
    nop

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->a:Lcom/bytedance/sdk/a/b/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/s;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 178
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->b:Lcom/bytedance/sdk/a/b/o;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 179
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->d:Lcom/bytedance/sdk/a/b/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 180
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 181
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 182
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 183
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->h:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_44

    :cond_43
    move v0, v2

    :goto_44
    add-int/2addr v1, v0

    .line 184
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_51

    :cond_50
    move v0, v2

    :goto_51
    add-int/2addr v1, v0

    .line 185
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5e

    :cond_5d
    move v0, v2

    :goto_5e
    add-int/2addr v1, v0

    .line 186
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->k:Lcom/bytedance/sdk/a/b/g;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/g;->hashCode()I

    move-result v2

    :cond_69
    add-int/2addr v1, v2

    .line 187
    return v1
.end method

.method public i()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public k()Lcom/bytedance/sdk/a/b/g;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a;->k:Lcom/bytedance/sdk/a/b/g;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    const-string v1, "Address{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a;->a:Lcom/bytedance/sdk/a/b/s;

    .line 207
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/s;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a;->a:Lcom/bytedance/sdk/a/b/s;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/s;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a;->h:Ljava/net/Proxy;

    if-eqz v1, :cond_35

    .line 210
    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a;->h:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 212
    :cond_35
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    :goto_40
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
