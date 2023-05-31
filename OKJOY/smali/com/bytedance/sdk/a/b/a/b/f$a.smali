.class public final Lcom/bytedance/sdk/a/b/a/b/f$a;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/ac;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/ac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/b/f$a;->b:I

    .line 234
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/b/f$a;->a:Ljava/util/List;

    .line 235
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    .prologue
    .line 238
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/b/f$a;->b:I

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/f$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public b()Lcom/bytedance/sdk/a/b/ac;
    .registers 4

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/b/f$a;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 243
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 245
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/b/f$a;->a:Ljava/util/List;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/b/f$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bytedance/sdk/a/b/a/b/f$a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/ac;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/ac;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/b/f$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
