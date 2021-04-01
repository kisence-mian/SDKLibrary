.class Lcom/qq/gdt/action/a$a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/gdt/action/g/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/a$a$a;->a(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/qq/gdt/action/a$a$a;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/a$a$a;I)V
    .registers 3

    iput-object p1, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    iput p2, p0, Lcom/qq/gdt/action/a$a$a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;ILjava/lang/String;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/a/a;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/qq/gdt/action/h/f;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_f0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/a/a;

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->e()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_6d

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_30
    const/16 v3, 0xc8

    if-ne p4, v3, :cond_7b

    if-lez p2, :cond_7b

    const-string v3, "LogAction failed(errorCode = %d, errorMessage = %s): actionType = %s , actionParams = %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->d()Lorg/json/JSONObject;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    :goto_5a
    const-string v3, "ACTIVATE_APP"

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/qq/gdt/action/a$a$a;->a(Lcom/qq/gdt/action/a$a$a;Z)Z

    goto :goto_f

    :cond_6d
    iget-object v3, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v3}, Lcom/qq/gdt/action/a$a$a;->b(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_7b
    const-string v3, "LogAction failed(scheduled retry %d milliseconds later): actionType = %s , actionParams = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    iget-object v6, v6, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    iget-object v6, v6, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {v6}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qq/gdt/action/b;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->d()Lorg/json/JSONObject;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;)V

    goto :goto_5a

    :cond_af
    invoke-static {v1}, Lcom/qq/gdt/action/h/f;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_f0

    const/16 v0, 0xc8

    if-ne p4, v0, :cond_f1

    if-lez p2, :cond_f1

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/qq/gdt/action/a$a$a;->a(Lcom/qq/gdt/action/a$a$a;Ljava/util/List;I)V

    :cond_c1
    :goto_c1
    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v0}, Lcom/qq/gdt/action/a$a$a;->c(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string v0, "Flush actions(status=%d) failed(http status = %d): code = %d, msg = %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/qq/gdt/action/a$a$a$1;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;)V

    :cond_f0
    return-void

    :cond_f1
    iget v0, p0, Lcom/qq/gdt/action/a$a$a$1;->a:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c1

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/qq/gdt/action/a$a$a;->a(Lcom/qq/gdt/action/a$a$a;Ljava/util/List;I)V

    goto :goto_c1
.end method

.method public a(Ljava/util/List;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/a/a;",
            ">;Z)V"
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/qq/gdt/action/h/f;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_be

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/a/a;

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->e()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_58

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_33
    iget-object v3, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v3, v0, p2}, Lcom/qq/gdt/action/a$a$a;->a(Lcom/qq/gdt/action/a$a$a;Lcom/qq/gdt/action/a/a;Z)V

    invoke-static {v0}, Lcom/qq/gdt/action/GDTAction;->isAutoCollectionAction(Lcom/qq/gdt/action/a/a;)Z

    move-result v3

    if-eqz v3, :cond_73

    const-string v3, "LogAction success: actionType = %s, actionParams = %s"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->d()Lorg/json/JSONObject;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v3, v4}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    :cond_58
    iget-object v3, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v3}, Lcom/qq/gdt/action/a$a$a;->a(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v3}, Lcom/qq/gdt/action/a$a$a;->b(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_73
    const-string v3, "LogAction success: actionType = %s, actionParams = %s"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->d()Lorg/json/JSONObject;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v3, v4}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;)V

    goto :goto_12

    :cond_8b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_be

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v0, v1, v9}, Lcom/qq/gdt/action/a$a$a;->a(Lcom/qq/gdt/action/a$a$a;Ljava/util/List;I)V

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v0}, Lcom/qq/gdt/action/a$a$a;->c(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string v0, "Flushed %d Actions in status(%d)"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    iget v2, p0, Lcom/qq/gdt/action/a$a$a$1;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_be
    return-void
.end method
