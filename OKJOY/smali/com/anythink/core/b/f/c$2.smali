.class final Lcom/anythink/core/b/f/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/f/c;->b(Lcom/anythink/core/b/c/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/b/c/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/c/d;)V
    .registers 2

    .prologue
    .line 475
    iput-object p1, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 478
    iget-object v0, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/b/a/e;->h()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/anythink/core/b/c/d;->d:Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    iget-object v0, v0, Lcom/anythink/core/b/c/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 480
    iget-object v0, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    iget-object v4, v4, Lcom/anythink/core/b/c/d;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/anythink/core/b/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/anythink/core/b/c/d;->e:Ljava/lang/String;

    .line 483
    :cond_28
    iget-object v0, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/anythink/core/b/c/d;->h:Ljava/lang/String;

    .line 484
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v3

    .line 485
    if-eqz v3, :cond_e1

    .line 487
    invoke-virtual {v3}, Lcom/anythink/core/c/a;->J()Ljava/util/Map;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_8f

    .line 490
    iget-object v4, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    iget-object v4, v4, Lcom/anythink/core/b/c/d;->x:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 491
    iget-object v4, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    iget-object v4, v4, Lcom/anythink/core/b/c/d;->a:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 501
    :goto_66
    if-eqz v0, :cond_8f

    .line 528
    :goto_68
    return-void

    .line 493
    :cond_69
    iget-object v4, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    iget-object v4, v4, Lcom/anythink/core/b/c/d;->a:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 494
    iget-object v4, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    iget-object v4, v4, Lcom/anythink/core/b/c/d;->a:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 495
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e9

    iget-object v4, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    iget-object v4, v4, Lcom/anythink/core/b/c/d;->x:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e9

    move v0, v1

    .line 496
    goto :goto_66

    .line 506
    :cond_8f
    invoke-virtual {v3}, Lcom/anythink/core/c/a;->H()Ljava/util/Map;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_e1

    .line 509
    iget-object v3, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    iget-object v3, v3, Lcom/anythink/core/b/c/d;->x:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 510
    iget-object v1, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    iget-object v1, v1, Lcom/anythink/core/b/c/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 520
    :goto_a7
    if-eqz v0, :cond_e1

    .line 521
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/f/d;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/f/d;->a(Lcom/anythink/core/b/c/h;)V

    goto :goto_68

    .line 512
    :cond_bb
    iget-object v3, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    iget-object v3, v3, Lcom/anythink/core/b/c/d;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 513
    iget-object v3, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    iget-object v3, v3, Lcom/anythink/core/b/c/d;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 514
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e7

    iget-object v3, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    iget-object v3, v3, Lcom/anythink/core/b/c/d;->x:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e7

    move v0, v1

    .line 515
    goto :goto_a7

    .line 527
    :cond_e1
    iget-object v0, p0, Lcom/anythink/core/b/f/c$2;->a:Lcom/anythink/core/b/c/d;

    invoke-static {v0}, Lcom/anythink/core/b/f/b;->a(Lcom/anythink/core/b/c/d;)V

    goto :goto_68

    :cond_e7
    move v0, v2

    goto :goto_a7

    :cond_e9
    move v0, v2

    goto/16 :goto_66
.end method
