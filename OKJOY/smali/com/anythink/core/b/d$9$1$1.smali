.class final Lcom/anythink/core/b/d$9$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/d$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/anythink/core/b/d$9$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/d$9$1;J)V
    .registers 4

    .prologue
    .line 541
    iput-object p1, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iput-wide p2, p0, Lcom/anythink/core/b/d$9$1$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x0

    .line 546
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-boolean v0, v0, Lcom/anythink/core/b/d$9;->i:Z

    if-eqz v0, :cond_34

    .line 547
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v0, Lcom/anythink/core/b/d$9;->k:Lcom/anythink/core/b/d;

    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v2, v0, Lcom/anythink/core/b/d$9;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v3, v0, Lcom/anythink/core/b/d$9;->h:Lcom/anythink/core/c/c;

    iget-wide v4, p0, Lcom/anythink/core/b/d$9$1$1;->a:J

    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->e:Lcom/anythink/core/b/c/b;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->v()I

    move-result v6

    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v9, v0, Lcom/anythink/core/b/d$9;->j:Ljava/util/List;

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v9}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;Lcom/anythink/core/c/c;JILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 551
    :cond_34
    if-eqz p1, :cond_3c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8b

    .line 552
    :cond_3c
    const-string v0, "4004"

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v1, v1, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->b:Lcom/anythink/core/b/d$a;

    invoke-interface {v1, v0}, Lcom/anythink/core/b/d$a;->a(Lcom/anythink/core/api/AdError;)V

    .line 554
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->e:Lcom/anythink/core/b/c/b;

    invoke-virtual {v0, v10}, Lcom/anythink/core/b/c/b;->a(Z)V

    .line 555
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->e:Lcom/anythink/core/b/c/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 557
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->k:Lcom/anythink/core/b/d;

    iget-object v0, v0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v1, v1, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->e:Lcom/anythink/core/b/c/b;

    invoke-virtual {v0, v11, v1}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 558
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->e:Lcom/anythink/core/b/c/b;

    const-string v1, "After Headbidding fail no adsource."

    invoke-static {v0, v1}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->k:Lcom/anythink/core/b/d;

    iput-boolean v10, v0, Lcom/anythink/core/b/d;->i:Z

    .line 577
    :goto_8a
    return-void

    .line 563
    :cond_8b
    if-eqz p2, :cond_96

    .line 564
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 567
    :cond_96
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->h:Lcom/anythink/core/c/c;

    iget-object v1, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v1, v1, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/c;->a(Ljava/util/List;)V

    .line 569
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->e:Lcom/anythink/core/b/c/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/c/b;->a(Z)V

    .line 570
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->k:Lcom/anythink/core/b/d;

    iget-object v0, v0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v1, v1, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->e:Lcom/anythink/core/b/c/b;

    invoke-virtual {v0, v11, v1}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 572
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->k:Lcom/anythink/core/b/d;

    iget-object v1, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v1, v1, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->h:Lcom/anythink/core/c/c;

    iget-object v2, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v2, v2, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v2, v2, Lcom/anythink/core/b/d$9;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v3, v3, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v3, v3, Lcom/anythink/core/b/d$9;->e:Lcom/anythink/core/b/c/b;

    invoke-virtual {v3}, Lcom/anythink/core/b/c/b;->v()I

    move-result v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/d;Lcom/anythink/core/c/c;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v1, v1, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->b:Lcom/anythink/core/b/d$a;

    if-eqz v1, :cond_101

    .line 574
    iget-object v1, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v1, v1, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v1, v1, Lcom/anythink/core/b/d$9;->b:Lcom/anythink/core/b/d$a;

    iget-object v2, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v2, v2, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v2, v2, Lcom/anythink/core/b/d$9;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v3, v3, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v3, v3, Lcom/anythink/core/b/d$9;->h:Lcom/anythink/core/c/c;

    invoke-interface {v1, v2, v3, v0}, Lcom/anythink/core/b/d$a;->a(Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 576
    :cond_101
    iget-object v0, p0, Lcom/anythink/core/b/d$9$1$1;->b:Lcom/anythink/core/b/d$9$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$9$1;->a:Lcom/anythink/core/b/d$9;

    iget-object v0, v0, Lcom/anythink/core/b/d$9;->k:Lcom/anythink/core/b/d;

    iput-boolean v10, v0, Lcom/anythink/core/b/d;->i:Z

    goto :goto_8a
.end method
