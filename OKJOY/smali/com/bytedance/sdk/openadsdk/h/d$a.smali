.class final Lcom/bytedance/sdk/openadsdk/h/d$a;
.super Ljava/lang/Object;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/d;
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
            "Ljava/util/Map",
            "<",
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Z

    .line 444
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->b:Z

    .line 445
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->c:I

    .line 446
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->d:Ljava/lang/String;

    .line 447
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->e:Ljava/util/Map;

    .line 448
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->f:[Ljava/lang/String;

    .line 449
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 453
    if-ne p0, p1, :cond_5

    const/4 v0, 0x1

    .line 461
    :cond_4
    :goto_4
    return v0

    .line 454
    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 456
    check-cast p1, Lcom/bytedance/sdk/openadsdk/h/d$a;

    .line 458
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Z

    iget-boolean v2, p1, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Z

    if-ne v1, v2, :cond_4

    .line 459
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->b:Z

    iget-boolean v2, p1, Lcom/bytedance/sdk/openadsdk/h/d$a;->b:Z

    if-ne v1, v2, :cond_4

    .line 460
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->c:I

    iget v2, p1, Lcom/bytedance/sdk/openadsdk/h/d$a;->c:I

    if-ne v1, v2, :cond_4

    .line 461
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/h/d$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 466
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Z

    if-eqz v0, :cond_1d

    move v0, v1

    .line 467
    :goto_7
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->b:Z

    if-eqz v3, :cond_1f

    :goto_d
    add-int/2addr v0, v1

    .line 468
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->c:I

    add-int/2addr v0, v1

    .line 469
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    return v0

    :cond_1d
    move v0, v2

    .line 466
    goto :goto_7

    :cond_1f
    move v1, v2

    .line 467
    goto :goto_d
.end method
