.class final Lcom/anythink/core/common/f/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f/c;->b(Lcom/anythink/core/common/d/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d/g;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/d/g;)V
    .registers 2

    .line 603
    iput-object p1, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 606
    iget-object v0, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    iget-object v0, v0, Lcom/anythink/core/common/d/g;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 607
    iget-object v0, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->d:Ljava/lang/String;

    .line 610
    :cond_16
    iget-object v0, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    iget-object v0, v0, Lcom/anythink/core/common/d/g;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 611
    iget-object v0, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    iget-object v2, v2, Lcom/anythink/core/common/d/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->e:Ljava/lang/String;

    .line 614
    :cond_30
    iget-object v0, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/g;->h:Ljava/lang/String;

    .line 615
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_f0

    .line 618
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->T()Ljava/util/Map;

    move-result-object v1

    .line 619
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_9c

    .line 620
    nop

    .line 621
    iget-object v4, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    iget-object v4, v4, Lcom/anythink/core/common/d/g;->x:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 622
    iget-object v4, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    iget-object v4, v4, Lcom/anythink/core/common/d/g;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_99

    .line 624
    :cond_72
    iget-object v4, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    iget-object v4, v4, Lcom/anythink/core/common/d/g;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 625
    iget-object v4, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    iget-object v4, v4, Lcom/anythink/core/common/d/g;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 626
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_98

    iget-object v4, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    iget-object v4, v4, Lcom/anythink/core/common/d/g;->x:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 627
    move v1, v2

    goto :goto_99

    .line 632
    :cond_98
    move v1, v3

    :goto_99
    if-eqz v1, :cond_9c

    .line 633
    return-void

    .line 637
    :cond_9c
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->R()Ljava/util/Map;

    move-result-object v0

    .line 638
    if-eqz v0, :cond_f0

    .line 639
    nop

    .line 640
    iget-object v1, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    iget-object v1, v1, Lcom/anythink/core/common/d/g;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 641
    iget-object v1, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    iget-object v1, v1, Lcom/anythink/core/common/d/g;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_dc

    .line 643
    :cond_b6
    iget-object v1, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    iget-object v1, v1, Lcom/anythink/core/common/d/g;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 644
    iget-object v1, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    iget-object v1, v1, Lcom/anythink/core/common/d/g;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 645
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_db

    iget-object v1, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    iget-object v1, v1, Lcom/anythink/core/common/d/g;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 646
    goto :goto_dc

    .line 651
    :cond_db
    move v2, v3

    :goto_dc
    if-eqz v2, :cond_f0

    .line 652
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/f/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/d;->a(Lcom/anythink/core/common/d/o;)V

    .line 653
    return-void

    .line 658
    :cond_f0
    invoke-static {}, Lcom/anythink/core/common/f/b;->a()Lcom/anythink/core/common/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f/c$2;->a:Lcom/anythink/core/common/d/g;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/common/d/g;)V

    .line 659
    return-void
.end method
