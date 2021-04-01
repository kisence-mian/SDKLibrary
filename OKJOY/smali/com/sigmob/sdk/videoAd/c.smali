.class Lcom/sigmob/sdk/videoAd/c;
.super Lcom/sigmob/sdk/base/common/a/c;


# instance fields
.field private final a:Lcom/sigmob/sdk/videoAd/k;

.field private final c:Lcom/sigmob/sdk/videoAd/a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoAd/k;Lcom/sigmob/sdk/videoAd/a;Landroid/os/Handler;)V
    .registers 9

    invoke-direct {p0, p3}, Lcom/sigmob/sdk/base/common/a/c;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/k;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/c;->c:Lcom/sigmob/sdk/videoAd/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sigmob/sdk/videoAd/e;

    sget-object v2, Lcom/sigmob/sdk/base/common/k;->b:Lcom/sigmob/sdk/base/common/k;

    sget-object v3, Lcom/sigmob/sdk/base/common/a;->a:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/a;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/e;-><init>(Lcom/sigmob/sdk/base/common/k;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sigmob/sdk/videoAd/e;

    sget-object v2, Lcom/sigmob/sdk/base/common/k;->b:Lcom/sigmob/sdk/base/common/k;

    sget-object v3, Lcom/sigmob/sdk/base/common/a;->e:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/a;->name()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/e;-><init>(Lcom/sigmob/sdk/base/common/k;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sigmob/sdk/videoAd/e;

    sget-object v2, Lcom/sigmob/sdk/base/common/k;->b:Lcom/sigmob/sdk/base/common/k;

    sget-object v3, Lcom/sigmob/sdk/base/common/a;->i:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/a;->name()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/e;-><init>(Lcom/sigmob/sdk/base/common/k;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sigmob/sdk/videoAd/e;

    sget-object v2, Lcom/sigmob/sdk/base/common/k;->b:Lcom/sigmob/sdk/base/common/k;

    sget-object v3, Lcom/sigmob/sdk/base/common/a;->j:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/a;->name()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/e;-><init>(Lcom/sigmob/sdk/base/common/k;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sigmob/sdk/videoAd/e;

    sget-object v2, Lcom/sigmob/sdk/base/common/k;->b:Lcom/sigmob/sdk/base/common/k;

    sget-object v3, Lcom/sigmob/sdk/base/common/a;->k:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/a;->name()Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f59999a    # 0.85f

    invoke-direct {v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/e;-><init>(Lcom/sigmob/sdk/base/common/k;Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/c;->c:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/videoAd/a;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->s()I

    move-result v1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    if-lez v1, :cond_6a

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->w()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/k;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/videoAd/k;->c(Z)V

    :cond_1c
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->x()V

    add-int/lit16 v0, v2, 0x3e8

    if-ge v0, v1, :cond_32

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->p()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->v()V

    :cond_32
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->q()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->r()V

    :cond_3f
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/c;->c:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/sdk/videoAd/a;->a(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/j;

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sigmob/sdk/videoAd/k;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->i()V

    goto :goto_49

    :cond_62
    if-le v2, v1, :cond_6a

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/c;->a:Lcom/sigmob/sdk/videoAd/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->b(Z)V

    :cond_6a
    return-void
.end method
