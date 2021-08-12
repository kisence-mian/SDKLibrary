.class public Lcom/bytedance/sdk/a/b/v;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/v$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/w;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final A:I

.field final B:I

.field final C:I

.field final c:Lcom/bytedance/sdk/a/b/n;

.field final d:Ljava/net/Proxy;

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

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/t;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/t;",
            ">;"
        }
    .end annotation
.end field

.field final i:Lcom/bytedance/sdk/a/b/p$a;

.field final j:Ljava/net/ProxySelector;

.field final k:Lcom/bytedance/sdk/a/b/m;

.field final l:Lcom/bytedance/sdk/a/b/c;

.field final m:Lcom/bytedance/sdk/a/b/a/a/e;

.field final n:Ljavax/net/SocketFactory;

.field final o:Ljavax/net/ssl/SSLSocketFactory;

.field final p:Lcom/bytedance/sdk/a/b/a/i/c;

.field final q:Ljavax/net/ssl/HostnameVerifier;

.field final r:Lcom/bytedance/sdk/a/b/g;

.field final s:Lcom/bytedance/sdk/a/b/b;

.field final t:Lcom/bytedance/sdk/a/b/b;

.field final u:Lcom/bytedance/sdk/a/b/j;

.field final v:Lcom/bytedance/sdk/a/b/o;

.field final w:Z

.field final x:Z

.field final y:Z

.field final z:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 126
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/bytedance/sdk/a/b/w;

    sget-object v2, Lcom/bytedance/sdk/a/b/w;->d:Lcom/bytedance/sdk/a/b/w;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/sdk/a/b/w;->b:Lcom/bytedance/sdk/a/b/w;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/a/b/v;->a:Ljava/util/List;

    .line 129
    new-array v0, v0, [Lcom/bytedance/sdk/a/b/k;

    sget-object v1, Lcom/bytedance/sdk/a/b/k;->a:Lcom/bytedance/sdk/a/b/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/sdk/a/b/k;->c:Lcom/bytedance/sdk/a/b/k;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/v;->b:Ljava/util/List;

    .line 133
    new-instance v0, Lcom/bytedance/sdk/a/b/v$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/v$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    .line 208
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 239
    new-instance v0, Lcom/bytedance/sdk/a/b/v$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/v$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/v;-><init>(Lcom/bytedance/sdk/a/b/v$a;)V

    .line 240
    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/b/v$a;)V
    .registers 6

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/v$a;->a:Lcom/bytedance/sdk/a/b/n;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/v;->c:Lcom/bytedance/sdk/a/b/n;

    .line 244
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/v$a;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/v;->d:Ljava/net/Proxy;

    .line 245
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/v$a;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/v;->e:Ljava/util/List;

    .line 246
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/v$a;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/v;->f:Ljava/util/List;

    .line 247
    iget-object v1, p1, Lcom/bytedance/sdk/a/b/v$a;->e:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/v;->g:Ljava/util/List;

    .line 248
    iget-object v1, p1, Lcom/bytedance/sdk/a/b/v$a;->f:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/v;->h:Ljava/util/List;

    .line 249
    iget-object v1, p1, Lcom/bytedance/sdk/a/b/v$a;->g:Lcom/bytedance/sdk/a/b/p$a;

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/v;->i:Lcom/bytedance/sdk/a/b/p$a;

    .line 250
    iget-object v1, p1, Lcom/bytedance/sdk/a/b/v$a;->h:Ljava/net/ProxySelector;

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/v;->j:Ljava/net/ProxySelector;

    .line 251
    iget-object v1, p1, Lcom/bytedance/sdk/a/b/v$a;->i:Lcom/bytedance/sdk/a/b/m;

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/v;->k:Lcom/bytedance/sdk/a/b/m;

    .line 252
    iget-object v1, p1, Lcom/bytedance/sdk/a/b/v$a;->j:Lcom/bytedance/sdk/a/b/c;

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/v;->l:Lcom/bytedance/sdk/a/b/c;

    .line 253
    iget-object v1, p1, Lcom/bytedance/sdk/a/b/v$a;->k:Lcom/bytedance/sdk/a/b/a/a/e;

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/v;->m:Lcom/bytedance/sdk/a/b/a/a/e;

    .line 254
    iget-object v1, p1, Lcom/bytedance/sdk/a/b/v$a;->l:Ljavax/net/SocketFactory;

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/v;->n:Ljavax/net/SocketFactory;

    .line 256
    nop

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/a/b/k;

    .line 258
    if-nez v2, :cond_59

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/k;->a()Z

    move-result v2

    if-eqz v2, :cond_57

    goto :goto_59

    :cond_57
    move v2, v1

    goto :goto_5a

    :cond_59
    :goto_59
    const/4 v2, 0x1

    .line 259
    :goto_5a
    goto :goto_42

    .line 261
    :cond_5b
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/v$a;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_73

    if-nez v2, :cond_62

    goto :goto_73

    .line 265
    :cond_62
    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/v;->z()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 266
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/a/b/v;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/v;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 267
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/i/c;->a(Ljavax/net/ssl/X509TrustManager;)Lcom/bytedance/sdk/a/b/a/i/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/v;->p:Lcom/bytedance/sdk/a/b/a/i/c;

    goto :goto_7b

    .line 262
    :cond_73
    :goto_73
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/v$a;->m:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/v;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 263
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/v$a;->n:Lcom/bytedance/sdk/a/b/a/i/c;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/v;->p:Lcom/bytedance/sdk/a/b/a/i/c;

    .line 270
    :goto_7b
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/v$a;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/v;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 271
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/v$a;->p:Lcom/bytedance/sdk/a/b/g;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/v;->p:Lcom/bytedance/sdk/a/b/a/i/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/g;->a(Lcom/bytedance/sdk/a/b/a/i/c;)Lcom/bytedance/sdk/a/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/v;->r:Lcom/bytedance/sdk/a/b/g;

    .line 273
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/v$a;->q:Lcom/bytedance/sdk/a/b/b;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/v;->s:Lcom/bytedance/sdk/a/b/b;

    .line 274
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/v$a;->r:Lcom/bytedance/sdk/a/b/b;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/v;->t:Lcom/bytedance/sdk/a/b/b;

    .line 275
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/v$a;->s:Lcom/bytedance/sdk/a/b/j;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/v;->u:Lcom/bytedance/sdk/a/b/j;

    .line 276
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/v$a;->t:Lcom/bytedance/sdk/a/b/o;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/v;->v:Lcom/bytedance/sdk/a/b/o;

    .line 277
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/v$a;->u:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/v;->w:Z

    .line 278
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/v$a;->v:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/v;->x:Z

    .line 279
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/v$a;->w:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/v;->y:Z

    .line 280
    iget v0, p1, Lcom/bytedance/sdk/a/b/v$a;->x:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/v;->z:I

    .line 281
    iget v0, p1, Lcom/bytedance/sdk/a/b/v$a;->y:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/v;->A:I

    .line 282
    iget v0, p1, Lcom/bytedance/sdk/a/b/v$a;->z:I

    iput v0, p0, Lcom/bytedance/sdk/a/b/v;->B:I

    .line 283
    iget p1, p1, Lcom/bytedance/sdk/a/b/v$a;->A:I

    iput p1, p0, Lcom/bytedance/sdk/a/b/v;->C:I

    .line 285
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/v;->g:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e2

    .line 288
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/v;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c7

    .line 291
    return-void

    .line 289
    :cond_c7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/v;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_e2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/v;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 5

    .line 311
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 312
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 313
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1
    :try_end_14
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_14} :catch_15

    return-object p1

    .line 314
    :catch_15
    move-exception p1

    .line 315
    const-string v0, "No System TLS"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method private z()Ljavax/net/ssl/X509TrustManager;
    .registers 5

    .line 296
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 297
    const/4 v1, 0x0

    check-cast v1, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 298
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 299
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_22

    .line 303
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    .line 300
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 301
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3f
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_3f} :catch_3f

    .line 304
    :catch_3f
    move-exception v0

    .line 305
    const-string v1, "No System TLS"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 323
    iget v0, p0, Lcom/bytedance/sdk/a/b/v;->z:I

    return v0
.end method

.method public a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/e;
    .registers 3

    .line 450
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/a/b/x;->a(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/y;Z)Lcom/bytedance/sdk/a/b/x;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .registers 2

    .line 330
    iget v0, p0, Lcom/bytedance/sdk/a/b/v;->A:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 337
    iget v0, p0, Lcom/bytedance/sdk/a/b/v;->B:I

    return v0
.end method

.method public d()Ljava/net/Proxy;
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->d:Ljava/net/Proxy;

    return-object v0
.end method

.method public e()Ljava/net/ProxySelector;
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->j:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/a/b/m;
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->k:Lcom/bytedance/sdk/a/b/m;

    return-object v0
.end method

.method g()Lcom/bytedance/sdk/a/b/a/a/e;
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->l:Lcom/bytedance/sdk/a/b/c;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/c;->a:Lcom/bytedance/sdk/a/b/a/a/e;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->m:Lcom/bytedance/sdk/a/b/a/a/e;

    :goto_9
    return-object v0
.end method

.method public h()Lcom/bytedance/sdk/a/b/o;
    .registers 2

    .line 368
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->v:Lcom/bytedance/sdk/a/b/o;

    return-object v0
.end method

.method public i()Ljavax/net/SocketFactory;
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->n:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->o:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->q:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public l()Lcom/bytedance/sdk/a/b/g;
    .registers 2

    .line 384
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->r:Lcom/bytedance/sdk/a/b/g;

    return-object v0
.end method

.method public m()Lcom/bytedance/sdk/a/b/b;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->t:Lcom/bytedance/sdk/a/b/b;

    return-object v0
.end method

.method public n()Lcom/bytedance/sdk/a/b/b;
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->s:Lcom/bytedance/sdk/a/b/b;

    return-object v0
.end method

.method public o()Lcom/bytedance/sdk/a/b/j;
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->u:Lcom/bytedance/sdk/a/b/j;

    return-object v0
.end method

.method public p()Z
    .registers 2

    .line 400
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/v;->w:Z

    return v0
.end method

.method public q()Z
    .registers 2

    .line 404
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/v;->x:Z

    return v0
.end method

.method public r()Z
    .registers 2

    .line 408
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/v;->y:Z

    return v0
.end method

.method public s()Lcom/bytedance/sdk/a/b/n;
    .registers 2

    .line 412
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->c:Lcom/bytedance/sdk/a/b/n;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/w;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->e:Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/k;",
            ">;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->f:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/t;",
            ">;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->g:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/t;",
            ">;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->h:Ljava/util/List;

    return-object v0
.end method

.method public x()Lcom/bytedance/sdk/a/b/p$a;
    .registers 2

    .line 442
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/v;->i:Lcom/bytedance/sdk/a/b/p$a;

    return-object v0
.end method

.method public y()Lcom/bytedance/sdk/a/b/v$a;
    .registers 2

    .line 464
    new-instance v0, Lcom/bytedance/sdk/a/b/v$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/v$a;-><init>(Lcom/bytedance/sdk/a/b/v;)V

    return-object v0
.end method
