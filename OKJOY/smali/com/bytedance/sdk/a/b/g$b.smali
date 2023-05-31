.class final Lcom/bytedance/sdk/a/b/g$b;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Lcom/bytedance/sdk/a/a/f;


# virtual methods
.method a(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/g$b;->a:Ljava/lang/String;

    const-string v2, "*."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 305
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/g$b;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_33

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/g$b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/g$b;->b:Ljava/lang/String;

    .line 308
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v4, v1

    .line 307
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v1, 0x1

    .line 311
    :cond_33
    :goto_33
    return v1

    :cond_34
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/g$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_33
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 316
    instance-of v0, p1, Lcom/bytedance/sdk/a/b/g$b;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/g$b;->a:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/a/b/g$b;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/g$b;->a:Ljava/lang/String;

    .line 317
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/g$b;->c:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/a/b/g$b;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/g$b;->c:Ljava/lang/String;

    .line 318
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/g$b;->d:Lcom/bytedance/sdk/a/a/f;

    check-cast p1, Lcom/bytedance/sdk/a/b/g$b;

    iget-object v1, p1, Lcom/bytedance/sdk/a/b/g$b;->d:Lcom/bytedance/sdk/a/a/f;

    .line 319
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    .line 316
    :goto_2b
    return v0

    .line 319
    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 324
    .line 325
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/g$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 326
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/g$b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/g$b;->d:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/g$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/g$b;->d:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
