.class public Lmobi/oneway/export/c/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lmobi/oneway/export/enums/AdType;

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Lmobi/oneway/export/f/c;

.field protected e:Lmobi/oneway/export/f/e;

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobi/oneway/export/f/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmobi/oneway/export/c/b;->a:Lmobi/oneway/export/enums/AdType;

    iput p3, p0, Lmobi/oneway/export/c/b;->b:I

    iput-object p2, p0, Lmobi/oneway/export/c/b;->c:Ljava/lang/String;

    invoke-static {p3, p1}, Lmobi/oneway/export/f/d;->a(ILmobi/oneway/export/enums/AdType;)Lmobi/oneway/export/f/c;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/c/b;->d:Lmobi/oneway/export/f/c;

    new-instance v0, Lmobi/oneway/export/f/e;

    iget-object v1, p0, Lmobi/oneway/export/c/b;->d:Lmobi/oneway/export/f/c;

    invoke-direct {v0, p1, v1}, Lmobi/oneway/export/f/e;-><init>(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/f/c;)V

    iput-object v0, p0, Lmobi/oneway/export/c/b;->e:Lmobi/oneway/export/f/e;

    invoke-static {p1}, Lmobi/oneway/export/f/d;->a(Lmobi/oneway/export/enums/AdType;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/c/b;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lmobi/oneway/export/c/b;->d:Lmobi/oneway/export/f/c;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmobi/oneway/export/c/b;->d:Lmobi/oneway/export/f/c;

    iget-object v1, p0, Lmobi/oneway/export/c/b;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/c;->b(Ljava/lang/String;Z)V

    :cond_c
    return-void
.end method

.method protected b()V
    .registers 4

    iget-object v0, p0, Lmobi/oneway/export/c/b;->d:Lmobi/oneway/export/f/c;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmobi/oneway/export/c/b;->d:Lmobi/oneway/export/f/c;

    iget-object v1, p0, Lmobi/oneway/export/c/b;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/c;->a(Ljava/lang/String;Z)V

    :cond_c
    return-void
.end method

.method protected c()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lmobi/oneway/export/c/b;->c:Ljava/lang/String;

    invoke-static {v2}, Lmobi/oneway/export/f/d;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lmobi/oneway/export/c/b;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v1, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    :cond_1a
    iget-object v0, p0, Lmobi/oneway/export/c/b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobi/oneway/export/f/d;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmobi/oneway/export/c/b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobi/oneway/export/f/d;->b(Ljava/lang/String;Z)V

    move v0, v1

    :cond_25
    return v0
.end method

.method protected d()Z
    .registers 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lmobi/oneway/export/c/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_b

    :cond_a
    :goto_a
    return v3

    :cond_b
    iget-object v0, p0, Lmobi/oneway/export/c/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    iget-object v5, p0, Lmobi/oneway/export/c/b;->a:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v0, v5}, Lmobi/oneway/export/f/c;->a(Lmobi/oneway/export/enums/AdType;)Z

    move-result v5

    if-eqz v5, :cond_2a

    add-int/lit8 v0, v1, 0x1

    :goto_28
    move v1, v0

    goto :goto_12

    :cond_2a
    iget-object v5, p0, Lmobi/oneway/export/c/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Lmobi/oneway/export/f/c;->a(Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_28

    :cond_31
    if-eq v1, v3, :cond_a

    iget-object v0, p0, Lmobi/oneway/export/c/b;->d:Lmobi/oneway/export/f/c;

    iget-object v1, p0, Lmobi/oneway/export/c/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmobi/oneway/export/f/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lmobi/oneway/export/c/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c;

    invoke-virtual {v0}, Lmobi/oneway/export/f/c;->a()I

    move-result v4

    iget v5, p0, Lmobi/oneway/export/c/b;->b:I

    if-eq v4, v5, :cond_43

    iget-object v4, p0, Lmobi/oneway/export/c/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lmobi/oneway/export/f/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    :goto_5f
    move v3, v2

    goto :goto_a

    :cond_61
    move v2, v3

    goto :goto_5f

    :cond_63
    move v2, v3

    goto :goto_5f
.end method
