.class public Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;
.super Ljava/lang/Object;


# static fields
.field public static final accountLogin:I = 0x1

.field public static final guestLogin:I = 0x2

.field public static final notLogin:I


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->a:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addAll(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->size()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    return-void
.end method

.method public getAll()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .registers 3

    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_13
    const-string p1, ""

    return-object p1
.end method

.method public getLocation(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
