.class Lcom/sigmob/sdk/videoAd/c;
.super Lcom/sigmob/sdk/common/b/b;


# instance fields
.field private final a:Lcom/sigmob/sdk/videoAd/h;

.field private final c:Lcom/sigmob/sdk/videoAd/a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoAd/h;Lcom/sigmob/sdk/videoAd/a;Landroid/os/Handler;)V
    .registers 7

    invoke-direct {p0, p3}, Lcom/sigmob/sdk/common/b/b;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/h;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/c;->c:Lcom/sigmob/sdk/videoAd/a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Lcom/sigmob/sdk/videoAd/e;

    sget-object v0, Lcom/sigmob/sdk/base/common/e$a;->b:Lcom/sigmob/sdk/base/common/e$a;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->a:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p3, v0, v1, v2}, Lcom/sigmob/sdk/videoAd/e;-><init>(Lcom/sigmob/sdk/base/common/e$a;Ljava/lang/String;F)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/sigmob/sdk/videoAd/e;

    sget-object v0, Lcom/sigmob/sdk/base/common/e$a;->b:Lcom/sigmob/sdk/base/common/e$a;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->e:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->name()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {p3, v0, v1, v2}, Lcom/sigmob/sdk/videoAd/e;-><init>(Lcom/sigmob/sdk/base/common/e$a;Ljava/lang/String;F)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/sigmob/sdk/videoAd/e;

    sget-object v0, Lcom/sigmob/sdk/base/common/e$a;->b:Lcom/sigmob/sdk/base/common/e$a;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->i:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->name()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {p3, v0, v1, v2}, Lcom/sigmob/sdk/videoAd/e;-><init>(Lcom/sigmob/sdk/base/common/e$a;Ljava/lang/String;F)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/sigmob/sdk/videoAd/e;

    sget-object v0, Lcom/sigmob/sdk/base/common/e$a;->b:Lcom/sigmob/sdk/base/common/e$a;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->j:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->name()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {p3, v0, v1, v2}, Lcom/sigmob/sdk/videoAd/e;-><init>(Lcom/sigmob/sdk/base/common/e$a;Ljava/lang/String;F)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/sigmob/sdk/videoAd/e;

    sget-object v0, Lcom/sigmob/sdk/base/common/e$a;->b:Lcom/sigmob/sdk/base/common/e$a;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->k:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/a;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x3f59999a    # 0.85f

    invoke-direct {p3, v0, v1, v2}, Lcom/sigmob/sdk/videoAd/e;-><init>(Lcom/sigmob/sdk/base/common/e$a;Ljava/lang/String;F)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/videoAd/a;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v1

    if-lez v0, :cond_6a

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/h;->u()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/h;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/videoAd/h;->b(Z)V

    :cond_1c
    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/h;->v()V

    add-int/lit16 v2, v1, 0x3e8

    if-ge v2, v0, :cond_32

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/h;->n()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/h;->t()V

    :cond_32
    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/h;->o()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/h;->p()V

    :cond_3f
    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/c;->c:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v2, v1, v0}, Lcom/sigmob/sdk/videoAd/a;->a(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/common/e;

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/e;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sigmob/sdk/videoAd/h;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/e;->h()V

    goto :goto_49

    :cond_62
    if-le v1, v0, :cond_6a

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/h;->a(Z)V

    :cond_6a
    return-void
.end method
