.class public final Lcom/bytedance/sdk/a/b/k$a;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:[Ljava/lang/String;

.field c:[Ljava/lang/String;

.field d:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/a/b/k;)V
    .registers 3

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/k;->d:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/k$a;->a:Z

    .line 248
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/k;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/k$a;->b:[Ljava/lang/String;

    .line 249
    iget-object v0, p1, Lcom/bytedance/sdk/a/b/k;->g:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/k$a;->c:[Ljava/lang/String;

    .line 250
    iget-boolean v0, p1, Lcom/bytedance/sdk/a/b/k;->e:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/k$a;->d:Z

    .line 251
    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-boolean p1, p0, Lcom/bytedance/sdk/a/b/k$a;->a:Z

    .line 244
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/bytedance/sdk/a/b/k$a;
    .registers 4

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/k$a;->a:Z

    if-nez v0, :cond_c

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_c
    iput-boolean p1, p0, Lcom/bytedance/sdk/a/b/k$a;->d:Z

    .line 312
    return-object p0
.end method

.method public varargs a([Lcom/bytedance/sdk/a/b/ad;)Lcom/bytedance/sdk/a/b/k$a;
    .registers 5

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/k$a;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_c
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    .line 290
    const/4 v0, 0x0

    :goto_10
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    .line 291
    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/bytedance/sdk/a/b/ad;->f:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 294
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/k$a;->b([Ljava/lang/String;)Lcom/bytedance/sdk/a/b/k$a;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Lcom/bytedance/sdk/a/b/h;)Lcom/bytedance/sdk/a/b/k$a;
    .registers 5

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/k$a;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_c
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    .line 263
    const/4 v0, 0x0

    :goto_10
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    .line 264
    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/bytedance/sdk/a/b/h;->bj:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 266
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/k$a;->a([Ljava/lang/String;)Lcom/bytedance/sdk/a/b/k$a;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/bytedance/sdk/a/b/k$a;
    .registers 4

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/k$a;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_c
    array-length v0, p1

    if-nez v0, :cond_17

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one cipher suite is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_17
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/k$a;->b:[Ljava/lang/String;

    .line 277
    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/a/b/k;
    .registers 2

    .prologue
    .line 316
    new-instance v0, Lcom/bytedance/sdk/a/b/k;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/k;-><init>(Lcom/bytedance/sdk/a/b/k$a;)V

    return-object v0
.end method

.method public varargs b([Ljava/lang/String;)Lcom/bytedance/sdk/a/b/k$a;
    .registers 4

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/k$a;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_c
    array-length v0, p1

    if-nez v0, :cond_17

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one TLS version is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_17
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/k$a;->c:[Ljava/lang/String;

    .line 305
    return-object p0
.end method
