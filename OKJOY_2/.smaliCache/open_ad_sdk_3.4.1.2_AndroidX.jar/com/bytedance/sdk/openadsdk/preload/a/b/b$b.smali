.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;
.super Ljava/lang/Object;
.source "$Gson$Types.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Ljava/lang/reflect/Type;

.field private final c:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 8

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    instance-of v0, p2, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 465
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    .line 466
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1f

    .line 467
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_1f

    :cond_1d
    move v0, v1

    goto :goto_20

    :cond_1f
    :goto_1f
    move v0, v3

    .line 468
    :goto_20
    if-nez p1, :cond_26

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    move v3, v1

    :cond_26
    :goto_26
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a;->a(Z)V

    .line 471
    :cond_29
    if-nez p1, :cond_2d

    const/4 p1, 0x0

    goto :goto_31

    :cond_2d
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    :goto_31
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->a:Ljava/lang/reflect/Type;

    .line 472
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->b:Ljava/lang/reflect/Type;

    .line 473
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Type;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->c:[Ljava/lang/reflect/Type;

    .line 474
    array-length p1, p1

    :goto_42
    if-ge v1, p1, :cond_5f

    .line 475
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->c:[Ljava/lang/reflect/Type;

    aget-object p2, p2, v1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->c:[Ljava/lang/reflect/Type;

    aget-object p2, p2, v1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->h(Ljava/lang/reflect/Type;)V

    .line 477
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->c:[Ljava/lang/reflect/Type;

    aget-object p3, p2, v1

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p3

    aput-object p3, p2, v1

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 479
    :cond_5f
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 494
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 495
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 494
    :goto_f
    return p1
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .registers 2

    .line 482
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->c:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .registers 2

    .line 490
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .registers 2

    .line 486
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->b:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 499
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->c:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->b:Ljava/lang/reflect/Type;

    .line 500
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->a:Ljava/lang/reflect/Type;

    .line 501
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 499
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 505
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->c:[Ljava/lang/reflect/Type;

    array-length v0, v0

    .line 506
    if-nez v0, :cond_c

    .line 507
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 510
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 511
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->b:Ljava/lang/reflect/Type;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->c:[Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const/4 v2, 0x1

    :goto_32
    if-ge v2, v0, :cond_48

    .line 513
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$b;->c:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 515
    :cond_48
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
