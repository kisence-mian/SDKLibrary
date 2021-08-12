.class final Lcom/anythink/core/common/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/common/d/d;Lcom/anythink/core/common/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/anythink/core/c/c;

.field final synthetic c:Lcom/anythink/core/common/g;

.field final synthetic d:[J

.field final synthetic e:Lcom/anythink/core/common/d;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/d;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/common/g;[J)V
    .registers 6

    .line 588
    iput-object p1, p0, Lcom/anythink/core/common/d$2;->e:Lcom/anythink/core/common/d;

    iput-object p2, p0, Lcom/anythink/core/common/d$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/d$2;->b:Lcom/anythink/core/c/c;

    iput-object p4, p0, Lcom/anythink/core/common/d$2;->c:Lcom/anythink/core/common/g;

    iput-object p5, p0, Lcom/anythink/core/common/d$2;->d:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 12

    .line 630
    const-string v0, "HeadBidding"

    const-string v1, "onFinished: ----------------------------------------------"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/d$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/anythink/core/common/d$2;->e:Lcom/anythink/core/common/d;

    iget-object v0, v0, Lcom/anythink/core/common/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f;

    .line 634
    if-eqz v0, :cond_1f

    .line 635
    invoke-virtual {v0}, Lcom/anythink/core/common/f;->d()V

    .line 637
    :cond_1f
    iget-object v2, p0, Lcom/anythink/core/common/d$2;->e:Lcom/anythink/core/common/d;

    iget-object v4, p0, Lcom/anythink/core/common/d$2;->b:Lcom/anythink/core/c/c;

    iget-object v0, p0, Lcom/anythink/core/common/d$2;->c:Lcom/anythink/core/common/g;

    iget-boolean v5, v0, Lcom/anythink/core/common/g;->d:Z

    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/d$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    iget-object v0, p0, Lcom/anythink/core/common/d$2;->d:[J

    const/4 v1, 0x0

    aget-wide v6, v0, v1

    .line 2057
    nop

    .line 2974
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v9, Lcom/anythink/core/common/d$4;

    move-object v1, v9

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/anythink/core/common/d$4;-><init>(Lcom/anythink/core/common/d;Ljava/lang/String;Lcom/anythink/core/c/c;IJLjava/util/List;)V

    invoke-virtual {v0, v9}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 639
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .line 592
    const-string v0, "HeadBidding"

    const-string v1, "onSuccess: ----------------------------------------------"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/anythink/core/common/d$2;->e:Lcom/anythink/core/common/d;

    iget-object v0, v0, Lcom/anythink/core/common/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f;

    .line 596
    iget-object v1, p0, Lcom/anythink/core/common/d$2;->e:Lcom/anythink/core/common/d;

    iget-object v1, v1, Lcom/anythink/core/common/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/d$2;->e:Lcom/anythink/core/common/d;

    iget-object v2, v2, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v1

    .line 598
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 599
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/c/c$b;

    .line 600
    iget-object v4, v3, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 601
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_41
    goto :goto_2a

    .line 605
    :cond_42
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object p2

    iget-object v1, p0, Lcom/anythink/core/common/d$2;->a:Ljava/lang/String;

    invoke-virtual {p2, v1, p1, v2}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 606
    if-eqz v0, :cond_50

    .line 607
    invoke-virtual {v0, v2}, Lcom/anythink/core/common/f;->a(Ljava/util/List;)V

    .line 610
    :cond_50
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/anythink/core/common/d$2;->e:Lcom/anythink/core/common/d;

    iget-object v0, v0, Lcom/anythink/core/common/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/d$2;->e:Lcom/anythink/core/common/d;

    iget-object v1, v1, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 616
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 617
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/c/c$b;

    .line 618
    iget-object v3, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 619
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_30
    invoke-static {}, Lcom/anythink/core/common/b;->a()Lcom/anythink/core/common/b;

    move-result-object v3

    iget-object v2, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1069
    iget-object v3, v3, Lcom/anythink/core/common/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    goto :goto_19

    .line 623
    :cond_44
    const-string p2, "HeadBidding"

    const-string v0, "onFailed: ----------------------------------------------"

    invoke-static {p2, v0}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/core/common/d$2;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, p1, v1}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 626
    return-void
.end method
