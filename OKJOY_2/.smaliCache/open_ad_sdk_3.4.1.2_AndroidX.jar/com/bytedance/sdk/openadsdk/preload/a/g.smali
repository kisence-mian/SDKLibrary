.class public final Lcom/bytedance/sdk/openadsdk/preload/a/g;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

.field private b:Lcom/bytedance/sdk/openadsdk/preload/a/u;

.field private c:Lcom/bytedance/sdk/openadsdk/preload/a/e;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/w;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/w;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

    .line 81
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/u;->a:Lcom/bytedance/sdk/openadsdk/preload/a/u;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->b:Lcom/bytedance/sdk/openadsdk/preload/a/u;

    .line 82
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/d;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->c:Lcom/bytedance/sdk/openadsdk/preload/a/e;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->d:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->e:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->f:Ljava/util/List;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->g:Z

    .line 90
    const/4 v1, 0x2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->i:I

    .line 91
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->j:I

    .line 92
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->k:Z

    .line 93
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->l:Z

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->m:Z

    .line 95
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->n:Z

    .line 96
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->o:Z

    .line 97
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->p:Z

    .line 106
    return-void
.end method

.method private a(Ljava/lang/String;IILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/w;",
            ">;)V"
        }
    .end annotation

    .line 612
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 613
    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/a/a;

    const-class p3, Ljava/util/Date;

    invoke-direct {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 614
    new-instance p3, Lcom/bytedance/sdk/openadsdk/preload/a/a;

    const-class v0, Ljava/sql/Timestamp;

    invoke-direct {p3, v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 615
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/a;

    const-class v1, Ljava/sql/Date;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_41

    .line 616
    :cond_24
    const/4 p1, 0x2

    if-eq p2, p1, :cond_5d

    if-eq p3, p1, :cond_5d

    .line 617
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/a;

    const-class v0, Ljava/util/Date;

    invoke-direct {p1, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/a/a;-><init>(Ljava/lang/Class;II)V

    .line 618
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/a;

    const-class v1, Ljava/sql/Timestamp;

    invoke-direct {v0, v1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/a/a;-><init>(Ljava/lang/Class;II)V

    .line 619
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/a/a;

    const-class v2, Ljava/sql/Date;

    invoke-direct {v1, v2, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/a/a;-><init>(Ljava/lang/Class;II)V

    move-object p2, p1

    move-object p3, v0

    move-object v0, v1

    .line 624
    :goto_41
    const-class p1, Ljava/util/Date;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->a(Ljava/lang/Class;Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/w;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    const-class p1, Ljava/sql/Timestamp;

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->a(Ljava/lang/Class;Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/w;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    const-class p1, Ljava/sql/Date;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->a(Ljava/lang/Class;Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/w;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    return-void

    .line 621
    :cond_5d
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/preload/a/f;
    .registers 22

    .line 588
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v18, v1

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 589
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 590
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 592
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 593
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 594
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 596
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->h:Ljava/lang/String;

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->i:I

    iget v4, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->j:I

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/g;->a(Ljava/lang/String;IILjava/util/List;)V

    .line 598
    new-instance v19, Lcom/bytedance/sdk/openadsdk/preload/a/f;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->c:Lcom/bytedance/sdk/openadsdk/preload/a/e;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->d:Ljava/util/Map;

    iget-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->g:Z

    iget-boolean v6, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->k:Z

    iget-boolean v7, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->o:Z

    iget-boolean v8, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->m:Z

    iget-boolean v9, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->n:Z

    iget-boolean v10, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->p:Z

    iget-boolean v11, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->l:Z

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->b:Lcom/bytedance/sdk/openadsdk/preload/a/u;

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->h:Ljava/lang/String;

    iget v14, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->i:I

    iget v15, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->j:I

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->e:Ljava/util/List;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->f:Ljava/util/List;

    move-object/from16 v17, v1

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lcom/bytedance/sdk/openadsdk/preload/a/f;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/d;Lcom/bytedance/sdk/openadsdk/preload/a/e;Ljava/util/Map;ZZZZZZZLcom/bytedance/sdk/openadsdk/preload/a/u;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/a/g;
    .registers 6

    .line 498
    instance-of v0, p2, Lcom/bytedance/sdk/openadsdk/preload/a/s;

    if-nez v0, :cond_13

    instance-of v1, p2, Lcom/bytedance/sdk/openadsdk/preload/a/k;

    if-nez v1, :cond_13

    instance-of v1, p2, Lcom/bytedance/sdk/openadsdk/preload/a/h;

    if-nez v1, :cond_13

    instance-of v1, p2, Lcom/bytedance/sdk/openadsdk/preload/a/v;

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a;->a(Z)V

    .line 502
    instance-of v1, p2, Lcom/bytedance/sdk/openadsdk/preload/a/h;

    if-eqz v1, :cond_23

    .line 503
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->d:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/preload/a/h;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_23
    if-nez v0, :cond_29

    instance-of v0, p2, Lcom/bytedance/sdk/openadsdk/preload/a/k;

    if-eqz v0, :cond_36

    .line 506
    :cond_29
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->e:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->a(Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/a/w;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_36
    instance-of v0, p2, Lcom/bytedance/sdk/openadsdk/preload/a/v;

    if-eqz v0, :cond_49

    .line 510
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/g;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    move-result-object p1

    check-cast p2, Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->a(Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/w;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_49
    return-object p0
.end method
