.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/b$c;
.super Ljava/lang/Object;
.source "$Gson$Types.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/WildcardType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 6

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a;->a(Z)V

    .line 559
    array-length v0, p1

    if-ne v0, v1, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a;->a(Z)V

    .line 561
    array-length v0, p2

    if-ne v0, v1, :cond_3c

    .line 562
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->h(Ljava/lang/reflect/Type;)V

    .line 564
    aget-object p1, p1, v2

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a;->a(Z)V

    .line 565
    aget-object p1, p2, v2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$c;->b:Ljava/lang/reflect/Type;

    .line 566
    const-class p1, Ljava/lang/Object;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$c;->a:Ljava/lang/reflect/Type;

    goto :goto_51

    .line 569
    :cond_3c
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    aget-object p2, p1, v2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->h(Ljava/lang/reflect/Type;)V

    .line 571
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$c;->b:Ljava/lang/reflect/Type;

    .line 572
    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$c;->a:Ljava/lang/reflect/Type;

    .line 574
    :goto_51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 585
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 586
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 585
    :goto_f
    return p1
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .registers 4

    .line 581
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$c;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_d

    :cond_b
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->a:[Ljava/lang/reflect/Type;

    :goto_d
    return-object v1
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .registers 4

    .line 577
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$c;->a:Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 591
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$c;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    goto :goto_c

    :cond_b
    const/4 v0, 0x1

    :goto_c
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$c;->a:Ljava/lang/reflect/Type;

    .line 592
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    .line 591
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 596
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$c;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_1e

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$c;->b:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 598
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$c;->a:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_27

    .line 599
    const-string v0, "?"

    return-object v0

    .line 601
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$c;->a:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
