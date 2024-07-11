.class final Lcom/anythink/core/common/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f;->a(ILjava/util/List;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Z

.field final synthetic e:Lcom/anythink/core/common/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/f;Ljava/util/List;ILjava/util/List;Z)V
    .registers 6

    .line 228
    iput-object p1, p0, Lcom/anythink/core/common/f$3;->e:Lcom/anythink/core/common/f;

    iput-object p2, p0, Lcom/anythink/core/common/f$3;->a:Ljava/util/List;

    iput p3, p0, Lcom/anythink/core/common/f$3;->b:I

    iput-object p4, p0, Lcom/anythink/core/common/f$3;->c:Ljava/util/List;

    iput-boolean p5, p0, Lcom/anythink/core/common/f$3;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 231
    iget-object v0, p0, Lcom/anythink/core/common/f$3;->e:Lcom/anythink/core/common/f;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object v1, p0, Lcom/anythink/core/common/f$3;->e:Lcom/anythink/core/common/f;

    iget-boolean v1, v1, Lcom/anythink/core/common/f;->g:Z

    const/4 v2, 0x0

    if-nez v1, :cond_83

    .line 233
    iget-object v1, p0, Lcom/anythink/core/common/f$3;->e:Lcom/anythink/core/common/f;

    invoke-static {v1}, Lcom/anythink/core/common/f;->c(Lcom/anythink/core/common/f;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    iget-object v3, p0, Lcom/anythink/core/common/f$3;->a:Ljava/util/List;

    iget v4, p0, Lcom/anythink/core/common/f$3;->b:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 236
    iget-object v3, p0, Lcom/anythink/core/common/f$3;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 237
    iget-object v3, p0, Lcom/anythink/core/common/f$3;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    iget-object v3, p0, Lcom/anythink/core/common/f$3;->e:Lcom/anythink/core/common/f;

    invoke-static {v3}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/common/f;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addAdSourceToRequestingPool:start to request: waiting size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/core/common/f$3;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; requesting size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/core/common/f$3;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/c/c$b;

    .line 241
    iget-object v4, p0, Lcom/anythink/core/common/f$3;->e:Lcom/anythink/core/common/f;

    iget-boolean v5, p0, Lcom/anythink/core/common/f$3;->d:Z

    invoke-static {v4, v3, v2, v5, v2}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Lcom/anythink/core/c/c$b;ZZZ)V

    .line 242
    goto :goto_66

    .line 243
    :cond_7a
    goto/16 :goto_11d

    .line 244
    :cond_7c
    iget-object v1, p0, Lcom/anythink/core/common/f$3;->e:Lcom/anythink/core/common/f;

    invoke-static {v1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;)V

    goto/16 :goto_11d

    .line 247
    :cond_83
    iget-object v1, p0, Lcom/anythink/core/common/f$3;->e:Lcom/anythink/core/common/f;

    invoke-static {v1}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/common/f;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addAdSourceToRequestingPool(Has been returned):start to request: waiting size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/core/common/f$3;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; requesting size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/common/f$3;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/anythink/core/common/f$3;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11d

    .line 254
    iget-object v1, p0, Lcom/anythink/core/common/f$3;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/c/c$b;

    .line 256
    iget-object v3, p0, Lcom/anythink/core/common/f$3;->e:Lcom/anythink/core/common/f;

    iget v3, v3, Lcom/anythink/core/common/f;->x:I

    iget-object v4, p0, Lcom/anythink/core/common/f$3;->e:Lcom/anythink/core/common/f;

    iget-object v4, v4, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {v4}, Lcom/anythink/core/c/c;->O()I

    move-result v4

    if-ge v3, v4, :cond_e2

    .line 257
    iget-object v3, p0, Lcom/anythink/core/common/f$3;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    iget-object v3, p0, Lcom/anythink/core/common/f$3;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v3, p0, Lcom/anythink/core/common/f$3;->e:Lcom/anythink/core/common/f;

    iget-boolean v4, p0, Lcom/anythink/core/common/f$3;->d:Z

    const/4 v5, 0x1

    invoke-static {v3, v1, v2, v4, v5}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Lcom/anythink/core/c/c$b;ZZZ)V

    goto :goto_11d

    .line 260
    :cond_e2
    iget-boolean v3, p0, Lcom/anythink/core/common/f$3;->d:Z

    if-eqz v3, :cond_11d

    .line 261
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v3

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/core/common/f$3;->e:Lcom/anythink/core/common/f;

    iget-object v5, v5, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/d/b;

    move-result-object v3

    .line 262
    if-eqz v3, :cond_10c

    iget-wide v4, v1, Lcom/anythink/core/c/c$b;->m:D

    invoke-virtual {v3}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v3

    iget-wide v6, v3, Lcom/anythink/core/c/c$b;->m:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_11d

    .line 263
    :cond_10c
    iget-object v3, p0, Lcom/anythink/core/common/f$3;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 264
    iget-object v3, p0, Lcom/anythink/core/common/f$3;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v3, p0, Lcom/anythink/core/common/f$3;->e:Lcom/anythink/core/common/f;

    iget-boolean v4, p0, Lcom/anythink/core/common/f$3;->d:Z

    invoke-static {v3, v1, v2, v4, v2}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Lcom/anythink/core/c/c$b;ZZZ)V

    .line 272
    :cond_11d
    :goto_11d
    monitor-exit v0

    return-void

    :catchall_11f
    move-exception v1

    monitor-exit v0
    :try_end_121
    .catchall {:try_start_3 .. :try_end_121} :catchall_11f

    throw v1
.end method
