.class public final Lcom/bytedance/sdk/a/b/r$a;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/16 v5, 0x7f

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 345
    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_23
    if-ge v0, v2, :cond_4e

    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 349
    const/16 v4, 0x20

    if-le v3, v4, :cond_2f

    if-lt v3, v5, :cond_4b

    .line 350
    :cond_2f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected char %#04x at %d in header name: %s"

    new-array v5, v8, [Ljava/lang/Object;

    .line 351
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    aput-object p1, v5, v7

    .line 350
    invoke-static {v4, v5}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 347
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 354
    :cond_4e
    if-nez p2, :cond_6f

    .line 355
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value for name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_6f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_74
    if-ge v0, v2, :cond_a6

    .line 357
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 358
    const/16 v4, 0x1f

    if-gt v3, v4, :cond_82

    const/16 v4, 0x9

    if-ne v3, v4, :cond_84

    :cond_82
    if-lt v3, v5, :cond_a3

    .line 359
    :cond_84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected char %#04x at %d in %s value: %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 360
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    aput-object p1, v5, v7

    aput-object p2, v5, v8

    .line 359
    invoke-static {v4, v5}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 356
    :cond_a3
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 363
    :cond_a6
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 281
    const-string v0, ":"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 282
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 283
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    move-result-object v0

    .line 289
    :goto_19
    return-object v0

    .line 284
    :cond_1a
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 287
    const-string v0, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    move-result-object v0

    goto :goto_19

    .line 289
    :cond_2d
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    move-result-object v0

    goto :goto_19
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;
    .registers 4

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/a/b/r$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/bytedance/sdk/a/b/r;
    .registers 2

    .prologue
    .line 378
    new-instance v0, Lcom/bytedance/sdk/a/b/r;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/r;-><init>(Lcom/bytedance/sdk/a/b/r$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;
    .registers 4

    .prologue
    .line 323
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 325
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 327
    add-int/lit8 v1, v1, -0x2

    .line 323
    :cond_24
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_2

    .line 330
    :cond_28
    return-object p0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;
    .registers 5

    .prologue
    .line 317
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/r$a;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;
    .registers 3

    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/a/b/r$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/a/b/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/r$a;

    .line 341
    return-object p0
.end method
