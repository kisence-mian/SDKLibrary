.class final Lcom/bytedance/sdk/a/b/a/g/a$b;
.super Ljava/lang/Object;
.source "AndroidPlatform.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/a/i/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Ljavax/net/ssl/X509TrustManager;

.field private final b:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .registers 3

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/g/a$b;->b:Ljava/lang/reflect/Method;

    .line 412
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/g/a$b;->a:Ljavax/net/ssl/X509TrustManager;

    .line 413
    return-void
.end method


# virtual methods
.method public a(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 7

    .line 418
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/g/a$b;->b:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/g/a$b;->a:Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/TrustAnchor;

    .line 420
    if-eqz p1, :cond_17

    .line 421
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_17} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_17} :catch_19

    :cond_17
    nop

    .line 420
    return-object v0

    .line 425
    :catch_19
    move-exception p1

    .line 426
    return-object v0

    .line 423
    :catch_1b
    move-exception p1

    .line 424
    const-string v0, "unable to get issues and signature"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 432
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 433
    return v0

    .line 435
    :cond_4
    instance-of v1, p1, Lcom/bytedance/sdk/a/b/a/g/a$b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 436
    return v2

    .line 438
    :cond_a
    check-cast p1, Lcom/bytedance/sdk/a/b/a/g/a$b;

    .line 439
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/g/a$b;->a:Ljavax/net/ssl/X509TrustManager;

    iget-object v3, p1, Lcom/bytedance/sdk/a/b/a/g/a$b;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/g/a$b;->b:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/g/a$b;->b:Ljava/lang/reflect/Method;

    .line 440
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    .line 439
    :goto_22
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 445
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a$b;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/g/a$b;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
