.class final Lcom/anythink/core/common/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/anythink/core/c/c$b;

.field final synthetic b:Lcom/anythink/core/common/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f;[Lcom/anythink/core/c/c$b;)V
    .registers 3

    .line 198
    iput-object p1, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f;

    iput-object p2, p0, Lcom/anythink/core/common/f$2;->a:[Lcom/anythink/core/c/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 201
    iget-object v0, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/common/f;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addDefaultAdSourceToRequestingPool: startLoadDefaultAdSource:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/core/common/f$2;->a:[Lcom/anythink/core/c/c$b;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/f$2;->a:[Lcom/anythink/core/c/c$b;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f;

    iget-boolean v0, v0, Lcom/anythink/core/common/f;->g:Z

    if-nez v0, :cond_95

    iget-object v0, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f;

    iget-object v0, v0, Lcom/anythink/core/common/f;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->a:[Lcom/anythink/core/c/c$b;

    aget-object v1, v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 203
    iget-object v0, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f;

    iget-object v0, v0, Lcom/anythink/core/common/f;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->a:[Lcom/anythink/core/c/c$b;

    aget-object v1, v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f;

    iget-object v0, v0, Lcom/anythink/core/common/f;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->a:[Lcom/anythink/core/c/c$b;

    aget-object v1, v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/common/f;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addDefaultAdSourceToRequestingPool:start to request: waiting size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f;

    iget-object v2, v2, Lcom/anythink/core/common/f;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; requesting size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f;

    iget-object v2, v2, Lcom/anythink/core/common/f;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/anythink/core/common/f$2;->b:Lcom/anythink/core/common/f;

    iget-object v1, p0, Lcom/anythink/core/common/f$2;->a:[Lcom/anythink/core/c/c$b;

    aget-object v1, v1, v3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3, v3}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Lcom/anythink/core/c/c$b;ZZZ)V

    .line 210
    :cond_95
    return-void
.end method
