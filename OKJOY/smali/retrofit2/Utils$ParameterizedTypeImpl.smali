.class final Lretrofit2/Utils$ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParameterizedTypeImpl"
.end annotation


# instance fields
.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;

.field private final typeArguments:[Ljava/lang/reflect/Type;


# direct methods
.method varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 9
    .param p1, "ownerType"    # Ljava/lang/reflect/Type;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "rawType"    # Ljava/lang/reflect/Type;
    .param p3, "typeArguments"    # [Ljava/lang/reflect/Type;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_21

    if-nez p1, :cond_1d

    move v2, v3

    :goto_c
    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    .line 394
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1f

    :goto_15
    if-eq v2, v3, :cond_21

    .line 395
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1d
    move v2, v4

    .line 393
    goto :goto_c

    :cond_1f
    move v3, v4

    .line 394
    goto :goto_15

    .line 398
    :cond_21
    array-length v1, p3

    :goto_22
    if-ge v4, v1, :cond_31

    aget-object v0, p3, v4

    .line 399
    .local v0, "typeArgument":Ljava/lang/reflect/Type;
    const-string v2, "typeArgument == null"

    invoke-static {v0, v2}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 400
    invoke-static {v0}, Lretrofit2/Utils;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    .line 398
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 403
    .end local v0    # "typeArgument":Ljava/lang/reflect/Type;
    :cond_31
    iput-object p1, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 404
    iput-object p2, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 405
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Type;

    iput-object v1, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    .line 406
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 421
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-static {p0, p1}, Lretrofit2/Utils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 425
    iget-object v0, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 426
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_19

    .line 427
    iget-object v0, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_17
    xor-int/2addr v0, v1

    .line 425
    return v0

    .line 427
    :cond_19
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 431
    iget-object v2, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v2}, Lretrofit2/Utils;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    .line 438
    :goto_b
    return-object v2

    .line 432
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 433
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v2}, Lretrofit2/Utils;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lretrofit2/Utils;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_34
    iget-object v2, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v0, v2, :cond_4d

    .line 436
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lretrofit2/Utils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v0

    invoke-static {v3}, Lretrofit2/Utils;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 438
    :cond_4d
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b
.end method
