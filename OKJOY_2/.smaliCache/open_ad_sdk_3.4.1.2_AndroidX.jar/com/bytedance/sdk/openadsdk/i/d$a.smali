.class final Lcom/bytedance/sdk/openadsdk/i/d$a;
.super Ljava/lang/Object;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Z

.field final b:Z

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final f:[Ljava/lang/String;


# direct methods
.method constructor <init>(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/i/d$a;->a:Z

    .line 445
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/i/d$a;->b:Z

    .line 446
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/i/d$a;->c:I

    .line 447
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/i/d$a;->d:Ljava/lang/String;

    .line 448
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/i/d$a;->e:Ljava/util/Map;

    .line 449
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/i/d$a;->f:[Ljava/lang/String;

    .line 450
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 454
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 455
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_32

    .line 457
    :cond_12
    check-cast p1, Lcom/bytedance/sdk/openadsdk/i/d$a;

    .line 459
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/i/d$a;->a:Z

    iget-boolean v2, p1, Lcom/bytedance/sdk/openadsdk/i/d$a;->a:Z

    if-eq v1, v2, :cond_1b

    return v0

    .line 460
    :cond_1b
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/i/d$a;->b:Z

    iget-boolean v2, p1, Lcom/bytedance/sdk/openadsdk/i/d$a;->b:Z

    if-eq v1, v2, :cond_22

    return v0

    .line 461
    :cond_22
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/i/d$a;->c:I

    iget v2, p1, Lcom/bytedance/sdk/openadsdk/i/d$a;->c:I

    if-eq v1, v2, :cond_29

    return v0

    .line 462
    :cond_29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/d$a;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/i/d$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 455
    :cond_32
    :goto_32
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 467
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/i/d$a;->a:Z

    .line 468
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/i/d$a;->b:Z

    add-int/2addr v0, v1

    .line 469
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/i/d$a;->c:I

    add-int/2addr v0, v1

    .line 470
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/d$a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 471
    return v0
.end method
