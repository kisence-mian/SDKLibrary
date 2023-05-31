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

    .prologue
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

    .prologue
    const/4 v1, 0x0

    .line 418
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/g/a$b;->b:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/g/a$b;->a:Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 420
    if-eqz v0, :cond_18

    .line 421
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_16} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_16} :catch_22

    move-result-object v0

    .line 426
    :goto_17
    return-object v0

    :cond_18
    move-object v0, v1

    .line 421
    goto :goto_17

    .line 423
    :catch_1a
    move-exception v0

    .line 424
    const-string v1, "unable to get issues and signature"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 425
    :catch_22
    move-exception v0

    move-object v0, v1

    .line 426
    goto :goto_17
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 432
    if-ne p1, p0, :cond_5

    .line 439
    :cond_4
    :goto_4
    return v0

    .line 435
    :cond_5
    instance-of v2, p1, Lcom/bytedance/sdk/a/b/a/g/a$b;

    if-nez v2, :cond_b

    move v0, v1

    .line 436
    goto :goto_4

    .line 438
    :cond_b
    check-cast p1, Lcom/bytedance/sdk/a/b/a/g/a$b;

    .line 439
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/g/a$b;->a:Ljavax/net/ssl/X509TrustManager;

    iget-object v3, p1, Lcom/bytedance/sdk/a/b/a/g/a$b;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/g/a$b;->b:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lcom/bytedance/sdk/a/b/a/g/a$b;->b:Ljava/lang/reflect/Method;

    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
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
