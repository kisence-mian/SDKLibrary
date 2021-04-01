.class final Lcom/anythink/core/b/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/f;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/c/c$b;

.field final synthetic b:Lcom/anythink/core/b/f;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/f;Lcom/anythink/core/c/c$b;)V
    .registers 3

    .prologue
    .line 440
    iput-object p1, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iput-object p2, p0, Lcom/anythink/core/b/f$2;->a:Lcom/anythink/core/c/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    .line 443
    iget-object v0, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-boolean v0, v0, Lcom/anythink/core/b/f;->h:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-object v0, v0, Lcom/anythink/core/b/f;->k:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/anythink/core/b/f$2;->a:Lcom/anythink/core/c/c$b;

    iget-object v1, v1, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 444
    iget-object v0, p0, Lcom/anythink/core/b/f$2;->a:Lcom/anythink/core/c/c$b;

    invoke-static {v0}, Lcom/anythink/core/b/g/h;->a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/b/a/b;

    move-result-object v7

    .line 446
    if-nez v7, :cond_1d

    .line 487
    :cond_1c
    :goto_1c
    return-void

    .line 450
    :cond_1d
    iget-object v0, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-object v0, v0, Lcom/anythink/core/b/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 454
    const-string v4, ""

    .line 455
    const/4 v0, 0x0

    move v1, v0

    :goto_2b
    iget-object v0, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-object v0, v0, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_78

    .line 456
    if-lez v1, :cond_4a

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 459
    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-object v0, v0, Lcom/anythink/core/b/f;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    iget v0, v0, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 455
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b

    .line 463
    :cond_78
    iget-object v0, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-object v0, v0, Lcom/anythink/core/b/f;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-object v1, v1, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-object v2, v2, Lcom/anythink/core/b/f;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-object v3, v3, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    iget-object v5, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget v5, v5, Lcom/anythink/core/b/f;->r:I

    iget-object v6, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-boolean v6, v6, Lcom/anythink/core/b/f;->p:Z

    invoke-static/range {v0 .. v6}, Lcom/anythink/core/b/g/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/b/c/b;

    move-result-object v1

    .line 465
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-object v2, v2, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/f$2;->a:Lcom/anythink/core/c/c$b;

    iget-object v3, v3, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/o;

    move-result-object v0

    .line 466
    if-eqz v0, :cond_bf

    invoke-virtual {v0}, Lcom/anythink/core/b/c/o;->a()Lcom/anythink/core/b/c/a;

    move-result-object v0

    .line 467
    :goto_aa
    if-eqz v0, :cond_c1

    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_c1

    invoke-virtual {v0}, Lcom/anythink/core/b/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 468
    iget-object v0, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    invoke-static {v0}, Lcom/anythink/core/b/f;->a(Lcom/anythink/core/b/f;)V

    goto/16 :goto_1c

    .line 466
    :cond_bf
    const/4 v0, 0x0

    goto :goto_aa

    .line 472
    :cond_c1
    iget-object v0, p0, Lcom/anythink/core/b/f$2;->a:Lcom/anythink/core/c/c$b;

    iget v0, v0, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v7}, Lcom/anythink/core/b/a/b;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anythink/core/b/g/c;->a(ILjava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-object v0, v0, Lcom/anythink/core/b/f;->k:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/anythink/core/b/f$2;->a:Lcom/anythink/core/c/c$b;

    iget-object v2, v2, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v0, p0, Lcom/anythink/core/b/f$2;->a:Lcom/anythink/core/c/c$b;

    invoke-static {v7, v1, v0}, Lcom/anythink/core/b/g/m;->a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/b/c/b;Lcom/anythink/core/c/c$b;)Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->p()V

    .line 479
    iget-object v1, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-object v1, v1, Lcom/anythink/core/b/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 481
    sget-object v0, Lcom/anythink/core/b/a/d$e;->a:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->h:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v7, v0, v1, v2}, Lcom/anythink/core/b/a/b;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-object v1, p0, Lcom/anythink/core/b/f$2;->a:Lcom/anythink/core/c/c$b;

    iget-object v2, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-object v2, v2, Lcom/anythink/core/b/f;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/f$2;->a:Lcom/anythink/core/c/c$b;

    iget-object v4, p0, Lcom/anythink/core/b/f$2;->b:Lcom/anythink/core/b/f;

    iget-object v4, v4, Lcom/anythink/core/b/f;->t:Lcom/anythink/core/c/c;

    invoke-virtual {v4}, Lcom/anythink/core/c/c;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v7, v1, v2}, Lcom/anythink/core/b/f;->a(Lcom/anythink/core/b/f;Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V

    goto/16 :goto_1c
.end method
