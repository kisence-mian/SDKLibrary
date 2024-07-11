.class public abstract Lcom/anythink/core/common/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/anythink/core/common/g;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field protected b:Landroid/content/Context;

.field protected c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/lang/String;

.field protected e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f;",
            ">;"
        }
    .end annotation
.end field

.field protected f:I

.field protected g:Z

.field protected h:Ljava/lang/String;

.field protected i:Lcom/anythink/core/common/e;

.field j:D

.field k:Ljava/lang/String;

.field private l:J

.field private m:J

.field private n:Z

.field private o:J

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/d;->a:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/common/d;->f:I

    .line 74
    const-string v1, ""

    iput-object v1, p0, Lcom/anythink/core/common/d;->h:Ljava/lang/String;

    .line 82
    iput-boolean v0, p0, Lcom/anythink/core/common/d;->p:Z

    .line 1023
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/anythink/core/common/d;->j:D

    .line 1024
    iput-object v1, p0, Lcom/anythink/core/common/d;->k:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/core/common/d;->c:Ljava/lang/ref/WeakReference;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/d;->b:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    .line 90
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/core/common/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_46

    .line 93
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/core/common/d;->b:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/b/g;->a(Landroid/content/Context;)V

    .line 95
    :cond_46
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/d;J)J
    .registers 3

    .line 57
    iput-wide p1, p0, Lcom/anythink/core/common/d;->m:J

    return-wide p1
.end method

.method private a(Lcom/anythink/core/c/c;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/c/c;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation

    .line 912
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 914
    new-instance v1, Lcom/anythink/core/common/d/d;

    invoke-direct {v1}, Lcom/anythink/core/common/d/d;-><init>()V

    .line 915
    iget-object v2, p0, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/d;->q(Ljava/lang/String;)V

    .line 916
    invoke-virtual {v1, p2}, Lcom/anythink/core/common/d/d;->r(Ljava/lang/String;)V

    .line 917
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->y()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/anythink/core/common/d/d;->s(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->v()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/anythink/core/common/d/d;->p(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v1, p3}, Lcom/anythink/core/common/d/d;->n(I)V

    .line 920
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->p()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/anythink/core/common/d/d;->s(I)V

    .line 921
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->F()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/anythink/core/common/d/d;->p(I)V

    .line 923
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 924
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 925
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_4c
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/c/c$b;

    .line 926
    nop

    .line 9988
    iget-wide v3, v2, Lcom/anythink/core/c/c$b;->m:D

    .line 926
    nop

    .line 927
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 928
    if-nez v5, :cond_74

    .line 929
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 930
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    :cond_74
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    goto :goto_4c

    .line 935
    :cond_78
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_80
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 936
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 937
    goto :goto_80

    .line 940
    :cond_90
    iget-object p4, p0, Lcom/anythink/core/common/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request UnitGroup\'s Number:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->B()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const/4 p4, 0x0

    .line 942
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_134

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 943
    invoke-virtual {p3, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 944
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_132

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/c/c$b;

    .line 946
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->B()I

    move-result v5

    div-int v5, p4, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 10056
    iput v5, v4, Lcom/anythink/core/c/c$b;->A:I

    .line 947
    iget-object v5, p0, Lcom/anythink/core/common/d;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "UnitGroupInfo requestLevel:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " || layer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 11052
    iget v8, v4, Lcom/anythink/core/c/c$b;->A:I

    .line 947
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    :try_start_100
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 952
    const-string v7, "sortpriority"

    invoke-virtual {v5, v7, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 953
    const-string v7, "sorttype"

    iget v8, v4, Lcom/anythink/core/c/c$b;->n:I

    if-ne v8, v6, :cond_113

    iget v8, v4, Lcom/anythink/core/c/c$b;->q:I

    goto :goto_114

    :cond_113
    move v8, v6

    :goto_114
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 954
    const-string v7, "unit_id"

    .line 11956
    iget-object v8, v4, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    .line 954
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 955
    const-string v7, "bidresult"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 956
    const-string v6, "bidprice"

    .line 11988
    iget-wide v7, v4, Lcom/anythink/core/c/c$b;->m:D

    .line 956
    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 957
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_12d} :catch_12e

    .line 960
    goto :goto_12f

    .line 958
    :catch_12e
    move-exception v4

    .line 961
    :goto_12f
    add-int/lit8 p4, p4, 0x1

    .line 962
    goto :goto_c7

    .line 963
    :cond_132
    goto/16 :goto_b1

    .line 965
    :cond_134
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/d/d;->n(Ljava/lang/String;)V

    .line 967
    iget-object p1, p0, Lcom/anythink/core/common/d;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object p1

    const/16 p3, 0xf

    invoke-virtual {p1, p3, v1}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 969
    return-object p2
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/common/d/d;Lcom/anythink/core/common/g;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c;",
            "Lcom/anythink/core/common/d/d;",
            "TT;)V"
        }
    .end annotation

    .line 475
    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 476
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->J()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->d()Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->K()Ljava/lang/String;

    move-result-object v4

    .line 479
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->b()Ljava/lang/String;

    move-result-object v5

    .line 476
    invoke-static {v1, v3, v4, v5}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 482
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v1

    invoke-virtual {v1, v0, v10, v11, v2}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 492
    nop

    .line 2657
    :try_start_34
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->P()Z

    move-result v1
    :try_end_38
    .catch Lcom/anythink/core/common/c; {:try_start_34 .. :try_end_38} :catch_24a
    .catchall {:try_start_34 .. :try_end_38} :catchall_243

    const/4 v4, 0x5

    const-string v15, ""

    if-eqz v1, :cond_22c

    .line 493
    nop

    .line 2668
    if-eqz v2, :cond_46

    :try_start_40
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4e

    :cond_46
    if-eqz v3, :cond_212

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_212

    .line 495
    :cond_4e
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;)Lcom/anythink/core/common/d/x;

    move-result-object v7

    .line 496
    nop

    .line 2680
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->C()J

    move-result-wide v4

    .line 2681
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->D()J

    move-result-wide v16

    .line 2683
    const/4 v8, 0x0

    if-eqz v7, :cond_65

    iget v1, v7, Lcom/anythink/core/common/d/x;->d:I

    goto :goto_66

    :cond_65
    move v1, v8

    .line 2684
    :goto_66
    if-eqz v7, :cond_6b

    iget v6, v7, Lcom/anythink/core/common/d/x;->c:I

    goto :goto_6c

    :cond_6b
    move v6, v8

    .line 2688
    :goto_6c
    const-wide/16 v18, -0x1

    cmp-long v20, v4, v18

    if-eqz v20, :cond_7a

    move-object/from16 v21, v15

    int-to-long v14, v6

    cmp-long v4, v14, v4

    if-gez v4, :cond_88

    goto :goto_7c

    :cond_7a
    move-object/from16 v21, v15

    :goto_7c
    cmp-long v4, v16, v18

    if-eqz v4, :cond_a7

    int-to-long v4, v1

    cmp-long v1, v4, v16

    if-gez v1, :cond_88

    move-object/from16 v14, v21

    goto :goto_a9

    .line 2690
    :cond_88
    iget-object v0, v9, Lcom/anythink/core/common/d;->a:Ljava/lang/String;

    const-string v1, "placement capping error"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Lcom/anythink/core/common/c; {:try_start_40 .. :try_end_8f} :catch_24a
    .catchall {:try_start_40 .. :try_end_8f} :catchall_243

    .line 2692
    const/4 v1, 0x1

    :try_start_90
    invoke-virtual {v12, v1}, Lcom/anythink/core/common/d/d;->q(I)V
    :try_end_93
    .catch Lcom/anythink/core/common/c; {:try_start_90 .. :try_end_93} :catch_a3
    .catchall {:try_start_90 .. :try_end_93} :catchall_243

    .line 2694
    :try_start_93
    new-instance v0, Lcom/anythink/core/common/c;

    const-string v1, "2003"

    move-object/from16 v14, v21

    invoke-static {v1, v14, v14}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    const-string v2, "Capping."

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0

    .line 507
    :catch_a3
    move-exception v0

    move-object v15, v13

    goto/16 :goto_24d

    .line 2688
    :cond_a7
    move-object/from16 v14, v21

    .line 497
    :goto_a9
    nop

    .line 2702
    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;Lcom/anythink/core/c/c;)Z

    move-result v1

    if-nez v1, :cond_1f8

    .line 499
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 500
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 501
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_c6
    .catch Lcom/anythink/core/common/c; {:try_start_93 .. :try_end_c6} :catch_24a
    .catchall {:try_start_93 .. :try_end_c6} :catchall_243

    .line 503
    move-object/from16 v1, p0

    move-object v4, v6

    move-object/from16 v16, v5

    move-object v13, v6

    move-object v6, v15

    move-object/from16 v8, p5

    :try_start_cf
    invoke-direct/range {v1 .. v8}, Lcom/anythink/core/common/d;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/anythink/core/common/d/x;Lcom/anythink/core/common/d/d;)V
    :try_end_d2
    .catch Lcom/anythink/core/common/c; {:try_start_cf .. :try_end_d2} :catch_1f4
    .catchall {:try_start_cf .. :try_end_d2} :catchall_1f0

    .line 514
    nop

    .line 516
    move-object/from16 v7, v16

    invoke-static {v13, v7, v0}, Lcom/anythink/core/common/d;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p5 .. p5}, Lcom/anythink/core/common/d/d;->w()I

    move-result v1

    invoke-direct {v9, v11, v10, v1, v13}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/c/c;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 523
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 524
    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 525
    invoke-interface {v1, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 527
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v2

    invoke-virtual {v2, v0, v10, v11, v1}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 529
    nop

    .line 531
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_102

    .line 532
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v1

    invoke-virtual {v1, v0, v10}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/4 v13, 0x1

    goto :goto_103

    .line 531
    :cond_102
    const/4 v13, 0x0

    .line 537
    :goto_103
    if-eqz v13, :cond_11f

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11f

    .line 538
    const-string v0, "4005"

    invoke-static {v0, v14, v14}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 539
    const/4 v1, 0x6

    invoke-virtual {v12, v1}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 541
    move-object/from16 v15, p6

    const/4 v1, 0x1

    invoke-direct {v9, v1, v12, v0, v15}, Lcom/anythink/core/common/d;->a(ZLcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/g;)V

    .line 542
    const/4 v14, 0x0

    iput-boolean v14, v9, Lcom/anythink/core/common/d;->g:Z

    .line 543
    return-void

    .line 537
    :cond_11f
    move-object/from16 v15, p6

    const/4 v14, 0x0

    .line 546
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    move-result-object v1

    iget-object v2, v9, Lcom/anythink/core/common/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, v11}, Lcom/anythink/core/a/b;->b(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/c/c;)V

    .line 547
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/anythink/core/common/d/d;->b(Z)V

    .line 548
    iget-object v1, v9, Lcom/anythink/core/common/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v12}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 551
    invoke-virtual {v9, v15}, Lcom/anythink/core/common/d;->b(Lcom/anythink/core/common/g;)Lcom/anythink/core/common/f;

    move-result-object v1

    .line 552
    iput-object v10, v9, Lcom/anythink/core/common/d;->h:Ljava/lang/String;

    .line 553
    iget-object v2, v9, Lcom/anythink/core/common/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v8

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/core/common/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;Z)V

    .line 557
    iput-boolean v14, v9, Lcom/anythink/core/common/d;->g:Z

    .line 562
    if-nez v13, :cond_1ef

    .line 564
    const/4 v1, 0x1

    :try_start_155
    new-array v6, v1, [J

    .line 565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aput-wide v1, v6, v14

    .line 570
    new-instance v1, Lcom/anythink/core/common/d/a;

    invoke-direct {v1}, Lcom/anythink/core/common/d/a;-><init>()V

    .line 571
    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/anythink/core/common/d/a;->a:Landroid/content/Context;

    .line 572
    iput-object v10, v1, Lcom/anythink/core/common/d/a;->b:Ljava/lang/String;

    .line 573
    iput-object v0, v1, Lcom/anythink/core/common/d/a;->c:Ljava/lang/String;

    .line 574
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->y()I

    move-result v2

    iput v2, v1, Lcom/anythink/core/common/d/a;->d:I

    .line 575
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->h()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/d/a;->i:J

    .line 576
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->i()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/d/a;->e:J

    .line 577
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->a()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/d/a;->f:J

    .line 578
    invoke-static {}, Lcom/anythink/core/common/a/b;->a()Lcom/anythink/core/common/a/b;

    .line 3034
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v2

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v2

    .line 3035
    invoke-virtual {v2}, Lcom/anythink/core/c/a;->a()Lcom/anythink/core/common/d/m;

    move-result-object v2

    .line 3036
    if-eqz v2, :cond_1b3

    invoke-virtual {v2}, Lcom/anythink/core/common/d/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ae

    goto :goto_1b3

    .line 3040
    :cond_1ae
    invoke-virtual {v2}, Lcom/anythink/core/common/d/m;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b5

    .line 3037
    :cond_1b3
    :goto_1b3
    const-string v2, "https://adx.anythinktech.com/bid"

    .line 578
    :goto_1b5
    iput-object v2, v1, Lcom/anythink/core/common/d/a;->j:Ljava/lang/String;

    .line 579
    iput-object v7, v1, Lcom/anythink/core/common/d/a;->g:Ljava/util/List;

    .line 580
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 582
    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 584
    iput-object v2, v1, Lcom/anythink/core/common/d/a;->h:Ljava/util/List;

    .line 586
    new-instance v7, Lcom/anythink/core/b/b;

    invoke-direct {v7, v1}, Lcom/anythink/core/b/b;-><init>(Lcom/anythink/core/common/d/a;)V

    .line 587
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v1

    invoke-interface {v7, v1}, Lcom/anythink/core/common/h$b;->a(Z)V

    .line 588
    new-instance v8, Lcom/anythink/core/common/d$2;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/anythink/core/common/d$2;-><init>(Lcom/anythink/core/common/d;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/common/g;[J)V

    invoke-interface {v7, v8}, Lcom/anythink/core/common/h$b;->a(Lcom/anythink/core/common/h$a;)V
    :try_end_1e0
    .catchall {:try_start_155 .. :try_end_1e0} :catchall_1e1

    .line 647
    return-void

    .line 642
    :catchall_1e1
    move-exception v0

    .line 643
    iget-object v0, v9, Lcom/anythink/core/common/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f;

    .line 644
    if-eqz v0, :cond_1ef

    .line 645
    invoke-virtual {v0}, Lcom/anythink/core/common/f;->d()V

    .line 651
    :cond_1ef
    return-void

    .line 511
    :catchall_1f0
    move-exception v0

    move-object/from16 v15, p6

    goto :goto_245

    .line 507
    :catch_1f4
    move-exception v0

    move-object/from16 v15, p6

    goto :goto_24c

    .line 2703
    :cond_1f8
    move-object v15, v13

    :try_start_1f9
    iget-object v0, v9, Lcom/anythink/core/common/d;->a:Ljava/lang/String;

    const-string v1, "placement pacing error"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    const/4 v0, 0x2

    invoke-virtual {v12, v0}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 2706
    new-instance v0, Lcom/anythink/core/common/c;

    const-string v1, "2004"

    invoke-static {v1, v14, v14}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    const-string v2, "Pacing."

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0

    .line 2668
    :cond_212
    move-object v14, v15

    move-object v15, v13

    .line 2669
    iget-object v0, v9, Lcom/anythink/core/common/d;->a:Ljava/lang/String;

    const-string v1, "unitgroup list is null"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    invoke-virtual {v12, v4}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 2672
    new-instance v0, Lcom/anythink/core/common/c;

    const-string v1, "4004"

    invoke-static {v1, v14, v14}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    const-string v2, "No Adsource."

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0

    .line 2658
    :cond_22c
    move-object v14, v15

    move-object v15, v13

    invoke-virtual {v12, v4}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 2660
    new-instance v0, Lcom/anythink/core/common/c;

    const-string v1, "4003"

    invoke-static {v1, v14, v14}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    const-string v2, "Strategy is close."

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0
    :try_end_23f
    .catch Lcom/anythink/core/common/c; {:try_start_1f9 .. :try_end_23f} :catch_241
    .catchall {:try_start_1f9 .. :try_end_23f} :catchall_23f

    .line 511
    :catchall_23f
    move-exception v0

    goto :goto_245

    .line 507
    :catch_241
    move-exception v0

    goto :goto_24c

    .line 511
    :catchall_243
    move-exception v0

    move-object v15, v13

    .line 512
    :goto_245
    const/4 v1, 0x1

    invoke-direct {v9, v1, v12, v0, v15}, Lcom/anythink/core/common/d;->a(ZLcom/anythink/core/common/d/d;Ljava/lang/Throwable;Lcom/anythink/core/common/g;)V

    .line 513
    return-void

    .line 507
    :catch_24a
    move-exception v0

    move-object v15, v13

    :goto_24c
    const/4 v1, 0x1

    .line 509
    :goto_24d
    invoke-direct {v9, v1, v12, v0, v15}, Lcom/anythink/core/common/d;->a(ZLcom/anythink/core/common/d/d;Ljava/lang/Throwable;Lcom/anythink/core/common/g;)V

    .line 510
    return-void
.end method

.method private a(Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/String;D)V
    .registers 13

    .line 1034
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v7, Lcom/anythink/core/common/d$5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/anythink/core/common/d$5;-><init>(Lcom/anythink/core/common/d;Lcom/anythink/core/api/ATBaseAdAdapter;DLjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 1074
    return-void
.end method

.method private a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/common/d/d;)V
    .registers 11

    .line 1092
    new-instance v7, Lcom/anythink/core/common/e;

    invoke-virtual {p1}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v3

    move-object v0, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/anythink/core/common/e;-><init>(JJLcom/anythink/core/c/c$b;Lcom/anythink/core/common/d/d;)V

    .line 1093
    iput-object v7, p0, Lcom/anythink/core/common/d;->i:Lcom/anythink/core/common/e;

    .line 1094
    invoke-virtual {v7}, Lcom/anythink/core/common/e;->start()Landroid/os/CountDownTimer;

    .line 1095
    return-void
.end method

.method private static a(Lcom/anythink/core/c/c;Lcom/anythink/core/common/d/d;)V
    .registers 3

    .line 657
    invoke-virtual {p0}, Lcom/anythink/core/c/c;->P()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 662
    return-void

    .line 658
    :cond_7
    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 660
    new-instance p0, Lcom/anythink/core/common/c;

    const-string p1, "4003"

    const-string v0, ""

    invoke-static {p1, v0, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    const-string v0, "Strategy is close."

    invoke-direct {p0, p1, v0}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/anythink/core/c/c;Lcom/anythink/core/common/d/x;Lcom/anythink/core/common/d/d;)V
    .registers 11

    .line 680
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->C()J

    move-result-wide v0

    .line 681
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->D()J

    move-result-wide v2

    .line 683
    const/4 p1, 0x0

    if-eqz p2, :cond_e

    iget v4, p2, Lcom/anythink/core/common/d/x;->d:I

    goto :goto_f

    :cond_e
    move v4, p1

    .line 684
    :goto_f
    if-eqz p2, :cond_13

    iget p1, p2, Lcom/anythink/core/common/d/x;->c:I

    .line 688
    :cond_13
    const-wide/16 v5, -0x1

    cmp-long p2, v0, v5

    if-eqz p2, :cond_1e

    int-to-long p1, p1

    cmp-long p1, p1, v0

    if-gez p1, :cond_28

    :cond_1e
    cmp-long p1, v2, v5

    if-eqz p1, :cond_43

    int-to-long p1, v4

    cmp-long p1, p1, v2

    if-gez p1, :cond_28

    goto :goto_43

    .line 690
    :cond_28
    iget-object p1, p0, Lcom/anythink/core/common/d;->a:Ljava/lang/String;

    const-string p2, "placement capping error"

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 694
    new-instance p1, Lcom/anythink/core/common/c;

    const-string p2, "2003"

    const-string p3, ""

    invoke-static {p2, p3, p3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p2

    const-string p3, "Capping."

    invoke-direct {p1, p2, p3}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p1

    .line 696
    :cond_43
    :goto_43
    return-void
.end method

.method private a(Lcom/anythink/core/c/c;Ljava/lang/String;ILjava/util/List;J)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/c/c;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;J)V"
        }
    .end annotation

    .line 974
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v9, Lcom/anythink/core/common/d$4;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move-wide v6, p5

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/anythink/core/common/d$4;-><init>(Lcom/anythink/core/common/d;Ljava/lang/String;Lcom/anythink/core/c/c;IJLjava/util/List;)V

    invoke-virtual {v0, v9}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 1019
    return-void
.end method

.method private a(Lcom/anythink/core/c/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 398
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 399
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->J()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->d()Ljava/lang/String;

    move-result-object v2

    .line 401
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->K()Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->b()Ljava/lang/String;

    move-result-object v4

    .line 399
    invoke-static {v1, v2, v3, v4}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 404
    if-eqz v1, :cond_27

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    .line 405
    :goto_28
    if-lez v2, :cond_c5

    .line 406
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/c/c$b;

    .line 408
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v4

    invoke-virtual {v4, p3, v3}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Lcom/anythink/core/common/d/ab;

    move-result-object v4

    .line 409
    const/4 v5, 0x0

    if-eqz v4, :cond_4a

    invoke-virtual {v4}, Lcom/anythink/core/common/d/ab;->a()Lcom/anythink/core/common/d/b;

    move-result-object v4

    goto :goto_4b

    :cond_4a
    move-object v4, v5

    .line 412
    :goto_4b
    if-eqz v4, :cond_70

    invoke-virtual {v4}, Lcom/anythink/core/common/d/b;->a()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-virtual {v4}, Lcom/anythink/core/common/d/b;->i()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 414
    :try_start_59
    invoke-virtual {v4}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v4

    .line 415
    iget-wide v6, v4, Lcom/anythink/core/c/c$b;->m:D

    iput-wide v6, v3, Lcom/anythink/core/c/c$b;->m:D

    .line 416
    iget v4, v4, Lcom/anythink/core/c/c$b;->q:I

    iput v4, v3, Lcom/anythink/core/c/c$b;->q:I

    .line 417
    invoke-static {v0, v3}, Lcom/anythink/core/common/g/g;->a(Ljava/util/List;Lcom/anythink/core/c/c$b;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6c} :catch_6f

    .line 418
    add-int/lit8 v2, v2, -0x1

    .line 419
    goto :goto_2e

    .line 420
    :catch_6f
    move-exception v4

    .line 425
    :cond_70
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v4

    iget-object v6, v3, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v7, v3, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v4, v6, v7}, Lcom/anythink/core/b/e;->b(Ljava/lang/String;I)Lcom/anythink/core/common/d/l;

    move-result-object v4

    .line 426
    if-eqz v4, :cond_8c

    .line 427
    iget-wide v5, v4, Lcom/anythink/core/common/d/l;->price:D

    iput-wide v5, v3, Lcom/anythink/core/c/c$b;->m:D

    .line 428
    iget-object v4, v4, Lcom/anythink/core/common/d/l;->token:Ljava/lang/String;

    iput-object v4, v3, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 429
    invoke-static {v0, v3}, Lcom/anythink/core/common/g/g;->a(Ljava/util/List;Lcom/anythink/core/c/c$b;)V

    .line 430
    add-int/lit8 v2, v2, -0x1

    .line 431
    goto :goto_2e

    .line 435
    :cond_8c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c3

    .line 436
    iget-object v4, p0, Lcom/anythink/core/common/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/f;

    .line 437
    if-eqz v4, :cond_ae

    iget-object v6, v3, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    .line 2262
    iget-object v7, v4, Lcom/anythink/core/common/f;->E:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v7, :cond_ac

    .line 2263
    iget-object v4, v4, Lcom/anythink/core/common/f;->E:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/anythink/core/c/c$b;

    goto :goto_ae

    .line 2265
    :cond_ac
    nop

    .line 437
    nop

    .line 438
    :cond_ae
    :goto_ae
    if-eqz v5, :cond_c3

    .line 439
    iget-wide v6, v5, Lcom/anythink/core/c/c$b;->m:D

    iput-wide v6, v3, Lcom/anythink/core/c/c$b;->m:D

    .line 440
    iget-object v4, v5, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    iput-object v4, v3, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 441
    iget v4, v5, Lcom/anythink/core/c/c$b;->q:I

    iput v4, v3, Lcom/anythink/core/c/c$b;->q:I

    .line 442
    invoke-static {v0, v3}, Lcom/anythink/core/common/g/g;->a(Ljava/util/List;Lcom/anythink/core/c/c$b;)V

    .line 443
    add-int/lit8 v2, v2, -0x1

    .line 444
    goto/16 :goto_2e

    .line 448
    :cond_c3
    goto/16 :goto_2e

    .line 451
    :cond_c5
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v1

    invoke-virtual {v1, p3, p2, p1, v0}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 453
    if-nez v2, :cond_d5

    .line 454
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_d5
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/common/d/d;Lcom/anythink/core/common/g;)V
    .registers 29

    .line 57
    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    .line 12475
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 12476
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->J()Ljava/lang/String;

    move-result-object v1

    .line 12477
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->d()Ljava/lang/String;

    move-result-object v3

    .line 12478
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->K()Ljava/lang/String;

    move-result-object v4

    .line 12479
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->b()Ljava/lang/String;

    move-result-object v5

    .line 12476
    invoke-static {v1, v3, v4, v5}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 12482
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v1

    invoke-virtual {v1, v0, v10, v11, v2}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 12492
    nop

    .line 12657
    :try_start_34
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->P()Z

    move-result v1
    :try_end_38
    .catch Lcom/anythink/core/common/c; {:try_start_34 .. :try_end_38} :catch_24a
    .catchall {:try_start_34 .. :try_end_38} :catchall_243

    const/4 v4, 0x5

    const-string v15, ""

    if-eqz v1, :cond_22c

    .line 12493
    nop

    .line 12668
    if-eqz v2, :cond_46

    :try_start_40
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4e

    :cond_46
    if-eqz v3, :cond_212

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_212

    .line 12495
    :cond_4e
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;)Lcom/anythink/core/common/d/x;

    move-result-object v7

    .line 12496
    nop

    .line 12680
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->C()J

    move-result-wide v4

    .line 12681
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->D()J

    move-result-wide v16

    .line 12683
    const/4 v8, 0x0

    if-eqz v7, :cond_65

    iget v1, v7, Lcom/anythink/core/common/d/x;->d:I

    goto :goto_66

    :cond_65
    move v1, v8

    .line 12684
    :goto_66
    if-eqz v7, :cond_6b

    iget v6, v7, Lcom/anythink/core/common/d/x;->c:I

    goto :goto_6c

    :cond_6b
    move v6, v8

    .line 12688
    :goto_6c
    const-wide/16 v18, -0x1

    cmp-long v20, v4, v18

    if-eqz v20, :cond_7a

    move-object/from16 v21, v15

    int-to-long v14, v6

    cmp-long v4, v14, v4

    if-gez v4, :cond_88

    goto :goto_7c

    :cond_7a
    move-object/from16 v21, v15

    :goto_7c
    cmp-long v4, v16, v18

    if-eqz v4, :cond_a7

    int-to-long v4, v1

    cmp-long v1, v4, v16

    if-gez v1, :cond_88

    move-object/from16 v14, v21

    goto :goto_a9

    .line 12690
    :cond_88
    iget-object v0, v9, Lcom/anythink/core/common/d;->a:Ljava/lang/String;

    const-string v1, "placement capping error"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Lcom/anythink/core/common/c; {:try_start_40 .. :try_end_8f} :catch_24a
    .catchall {:try_start_40 .. :try_end_8f} :catchall_243

    .line 12692
    const/4 v1, 0x1

    :try_start_90
    invoke-virtual {v12, v1}, Lcom/anythink/core/common/d/d;->q(I)V
    :try_end_93
    .catch Lcom/anythink/core/common/c; {:try_start_90 .. :try_end_93} :catch_a3
    .catchall {:try_start_90 .. :try_end_93} :catchall_243

    .line 12694
    :try_start_93
    new-instance v0, Lcom/anythink/core/common/c;

    const-string v1, "2003"

    move-object/from16 v14, v21

    invoke-static {v1, v14, v14}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    const-string v2, "Capping."

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0

    .line 12507
    :catch_a3
    move-exception v0

    move-object v15, v13

    goto/16 :goto_24d

    .line 12688
    :cond_a7
    move-object/from16 v14, v21

    .line 12497
    :goto_a9
    nop

    .line 12702
    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;Lcom/anythink/core/c/c;)Z

    move-result v1

    if-nez v1, :cond_1f8

    .line 12499
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 12500
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 12501
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_c6
    .catch Lcom/anythink/core/common/c; {:try_start_93 .. :try_end_c6} :catch_24a
    .catchall {:try_start_93 .. :try_end_c6} :catchall_243

    .line 12503
    move-object/from16 v1, p0

    move-object v4, v6

    move-object/from16 v16, v5

    move-object v13, v6

    move-object v6, v15

    move-object/from16 v8, p5

    :try_start_cf
    invoke-direct/range {v1 .. v8}, Lcom/anythink/core/common/d;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/anythink/core/common/d/x;Lcom/anythink/core/common/d/d;)V
    :try_end_d2
    .catch Lcom/anythink/core/common/c; {:try_start_cf .. :try_end_d2} :catch_1f4
    .catchall {:try_start_cf .. :try_end_d2} :catchall_1f0

    .line 12514
    nop

    .line 12516
    move-object/from16 v7, v16

    invoke-static {v13, v7, v0}, Lcom/anythink/core/common/d;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 12520
    invoke-virtual/range {p5 .. p5}, Lcom/anythink/core/common/d/d;->w()I

    move-result v1

    invoke-direct {v9, v11, v10, v1, v13}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/c/c;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 12523
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12524
    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12525
    invoke-interface {v1, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12527
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v2

    invoke-virtual {v2, v0, v10, v11, v1}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 12529
    nop

    .line 12531
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_102

    .line 12532
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object v1

    invoke-virtual {v1, v0, v10}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12533
    const/4 v13, 0x1

    goto :goto_103

    .line 12531
    :cond_102
    const/4 v13, 0x0

    .line 12537
    :goto_103
    if-eqz v13, :cond_11f

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11f

    .line 12538
    const-string v0, "4005"

    invoke-static {v0, v14, v14}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 12539
    const/4 v1, 0x6

    invoke-virtual {v12, v1}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 12541
    move-object/from16 v15, p6

    const/4 v1, 0x1

    invoke-direct {v9, v1, v12, v0, v15}, Lcom/anythink/core/common/d;->a(ZLcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/g;)V

    .line 12542
    const/4 v14, 0x0

    iput-boolean v14, v9, Lcom/anythink/core/common/d;->g:Z

    .line 12543
    return-void

    .line 12537
    :cond_11f
    move-object/from16 v15, p6

    const/4 v14, 0x0

    .line 12546
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    move-result-object v1

    iget-object v2, v9, Lcom/anythink/core/common/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, v11}, Lcom/anythink/core/a/b;->b(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/c/c;)V

    .line 12547
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/anythink/core/common/d/d;->b(Z)V

    .line 12548
    iget-object v1, v9, Lcom/anythink/core/common/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v12}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 12551
    invoke-virtual {v9, v15}, Lcom/anythink/core/common/d;->b(Lcom/anythink/core/common/g;)Lcom/anythink/core/common/f;

    move-result-object v1

    .line 12552
    iput-object v10, v9, Lcom/anythink/core/common/d;->h:Ljava/lang/String;

    .line 12553
    iget-object v2, v9, Lcom/anythink/core/common/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12555
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v8

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/core/common/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;Z)V

    .line 12557
    iput-boolean v14, v9, Lcom/anythink/core/common/d;->g:Z

    .line 12562
    if-nez v13, :cond_1ef

    .line 12564
    const/4 v1, 0x1

    :try_start_155
    new-array v6, v1, [J

    .line 12565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aput-wide v1, v6, v14

    .line 12570
    new-instance v1, Lcom/anythink/core/common/d/a;

    invoke-direct {v1}, Lcom/anythink/core/common/d/a;-><init>()V

    .line 12571
    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/anythink/core/common/d/a;->a:Landroid/content/Context;

    .line 12572
    iput-object v10, v1, Lcom/anythink/core/common/d/a;->b:Ljava/lang/String;

    .line 12573
    iput-object v0, v1, Lcom/anythink/core/common/d/a;->c:Ljava/lang/String;

    .line 12574
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->y()I

    move-result v2

    iput v2, v1, Lcom/anythink/core/common/d/a;->d:I

    .line 12575
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->h()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/d/a;->i:J

    .line 12576
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->i()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/d/a;->e:J

    .line 12577
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->a()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/d/a;->f:J

    .line 12578
    invoke-static {}, Lcom/anythink/core/common/a/b;->a()Lcom/anythink/core/common/a/b;

    .line 13034
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v2

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v2

    .line 13035
    invoke-virtual {v2}, Lcom/anythink/core/c/a;->a()Lcom/anythink/core/common/d/m;

    move-result-object v2

    .line 13036
    if-eqz v2, :cond_1b3

    invoke-virtual {v2}, Lcom/anythink/core/common/d/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ae

    goto :goto_1b3

    .line 13040
    :cond_1ae
    invoke-virtual {v2}, Lcom/anythink/core/common/d/m;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b5

    .line 13037
    :cond_1b3
    :goto_1b3
    const-string v2, "https://adx.anythinktech.com/bid"

    .line 12578
    :goto_1b5
    iput-object v2, v1, Lcom/anythink/core/common/d/a;->j:Ljava/lang/String;

    .line 12579
    iput-object v7, v1, Lcom/anythink/core/common/d/a;->g:Ljava/util/List;

    .line 12580
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12582
    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12584
    iput-object v2, v1, Lcom/anythink/core/common/d/a;->h:Ljava/util/List;

    .line 12586
    new-instance v7, Lcom/anythink/core/b/b;

    invoke-direct {v7, v1}, Lcom/anythink/core/b/b;-><init>(Lcom/anythink/core/common/d/a;)V

    .line 12587
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v1

    invoke-interface {v7, v1}, Lcom/anythink/core/common/h$b;->a(Z)V

    .line 12588
    new-instance v8, Lcom/anythink/core/common/d$2;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/anythink/core/common/d$2;-><init>(Lcom/anythink/core/common/d;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/common/g;[J)V

    invoke-interface {v7, v8}, Lcom/anythink/core/common/h$b;->a(Lcom/anythink/core/common/h$a;)V
    :try_end_1e0
    .catchall {:try_start_155 .. :try_end_1e0} :catchall_1e1

    .line 12647
    return-void

    .line 12642
    :catchall_1e1
    move-exception v0

    .line 12643
    iget-object v0, v9, Lcom/anythink/core/common/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f;

    .line 12644
    if-eqz v0, :cond_1ef

    .line 12645
    invoke-virtual {v0}, Lcom/anythink/core/common/f;->d()V

    .line 57
    :cond_1ef
    return-void

    .line 12511
    :catchall_1f0
    move-exception v0

    move-object/from16 v15, p6

    goto :goto_245

    .line 12507
    :catch_1f4
    move-exception v0

    move-object/from16 v15, p6

    goto :goto_24c

    .line 12703
    :cond_1f8
    move-object v15, v13

    :try_start_1f9
    iget-object v0, v9, Lcom/anythink/core/common/d;->a:Ljava/lang/String;

    const-string v1, "placement pacing error"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12704
    const/4 v0, 0x2

    invoke-virtual {v12, v0}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 12706
    new-instance v0, Lcom/anythink/core/common/c;

    const-string v1, "2004"

    invoke-static {v1, v14, v14}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    const-string v2, "Pacing."

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0

    .line 12668
    :cond_212
    move-object v14, v15

    move-object v15, v13

    .line 12669
    iget-object v0, v9, Lcom/anythink/core/common/d;->a:Ljava/lang/String;

    const-string v1, "unitgroup list is null"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12670
    invoke-virtual {v12, v4}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 12672
    new-instance v0, Lcom/anythink/core/common/c;

    const-string v1, "4004"

    invoke-static {v1, v14, v14}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    const-string v2, "No Adsource."

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0

    .line 12658
    :cond_22c
    move-object v14, v15

    move-object v15, v13

    invoke-virtual {v12, v4}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 12660
    new-instance v0, Lcom/anythink/core/common/c;

    const-string v1, "4003"

    invoke-static {v1, v14, v14}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    const-string v2, "Strategy is close."

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0
    :try_end_23f
    .catch Lcom/anythink/core/common/c; {:try_start_1f9 .. :try_end_23f} :catch_241
    .catchall {:try_start_1f9 .. :try_end_23f} :catchall_23f

    .line 12511
    :catchall_23f
    move-exception v0

    goto :goto_245

    .line 12507
    :catch_241
    move-exception v0

    goto :goto_24c

    .line 12511
    :catchall_243
    move-exception v0

    move-object v15, v13

    .line 12512
    :goto_245
    const/4 v1, 0x1

    invoke-direct {v9, v1, v12, v0, v15}, Lcom/anythink/core/common/d;->a(ZLcom/anythink/core/common/d/d;Ljava/lang/Throwable;Lcom/anythink/core/common/g;)V

    .line 12513
    return-void

    .line 12507
    :catch_24a
    move-exception v0

    move-object v15, v13

    :goto_24c
    const/4 v1, 0x1

    .line 12509
    :goto_24d
    invoke-direct {v9, v1, v12, v0, v15}, Lcom/anythink/core/common/d;->a(ZLcom/anythink/core/common/d/d;Ljava/lang/Throwable;Lcom/anythink/core/common/g;)V

    .line 12510
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/d;Lcom/anythink/core/c/c$b;Lcom/anythink/core/common/d/d;)V
    .registers 11

    .line 15092
    new-instance v7, Lcom/anythink/core/common/e;

    invoke-virtual {p1}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v3

    move-object v0, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/anythink/core/common/e;-><init>(JJLcom/anythink/core/c/c$b;Lcom/anythink/core/common/d/d;)V

    .line 15093
    iput-object v7, p0, Lcom/anythink/core/common/d;->i:Lcom/anythink/core/common/e;

    .line 15094
    invoke-virtual {v7}, Lcom/anythink/core/common/e;->start()Landroid/os/CountDownTimer;

    .line 57
    return-void
.end method

.method private static synthetic a(Lcom/anythink/core/common/d;Lcom/anythink/core/c/c;Ljava/lang/String;ILjava/util/List;J)V
    .registers 17

    .line 57
    nop

    .line 14974
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v9, Lcom/anythink/core/common/d$4;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move-wide v6, p5

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/anythink/core/common/d$4;-><init>(Lcom/anythink/core/common/d;Ljava/lang/String;Lcom/anythink/core/c/c;IJLjava/util/List;)V

    invoke-virtual {v0, v9}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/d;Lcom/anythink/core/c/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 13398
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 13399
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->J()Ljava/lang/String;

    move-result-object v1

    .line 13400
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->d()Ljava/lang/String;

    move-result-object v2

    .line 13401
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->K()Ljava/lang/String;

    move-result-object v3

    .line 13402
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->b()Ljava/lang/String;

    move-result-object v4

    .line 13399
    invoke-static {v1, v2, v3, v4}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 13404
    if-eqz v1, :cond_27

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    .line 13405
    :goto_28
    if-lez v2, :cond_c5

    .line 13406
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/c/c$b;

    .line 13408
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v4

    invoke-virtual {v4, p3, v3}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Lcom/anythink/core/common/d/ab;

    move-result-object v4

    .line 13409
    const/4 v5, 0x0

    if-eqz v4, :cond_4a

    invoke-virtual {v4}, Lcom/anythink/core/common/d/ab;->a()Lcom/anythink/core/common/d/b;

    move-result-object v4

    goto :goto_4b

    :cond_4a
    move-object v4, v5

    .line 13412
    :goto_4b
    if-eqz v4, :cond_70

    invoke-virtual {v4}, Lcom/anythink/core/common/d/b;->a()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-virtual {v4}, Lcom/anythink/core/common/d/b;->i()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 13414
    :try_start_59
    invoke-virtual {v4}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v4

    .line 13415
    iget-wide v6, v4, Lcom/anythink/core/c/c$b;->m:D

    iput-wide v6, v3, Lcom/anythink/core/c/c$b;->m:D

    .line 13416
    iget v4, v4, Lcom/anythink/core/c/c$b;->q:I

    iput v4, v3, Lcom/anythink/core/c/c$b;->q:I

    .line 13417
    invoke-static {v0, v3}, Lcom/anythink/core/common/g/g;->a(Ljava/util/List;Lcom/anythink/core/c/c$b;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6c} :catch_6f

    .line 13418
    add-int/lit8 v2, v2, -0x1

    .line 13419
    goto :goto_2e

    .line 13420
    :catch_6f
    move-exception v4

    .line 13425
    :cond_70
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v4

    iget-object v6, v3, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v7, v3, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v4, v6, v7}, Lcom/anythink/core/b/e;->b(Ljava/lang/String;I)Lcom/anythink/core/common/d/l;

    move-result-object v4

    .line 13426
    if-eqz v4, :cond_8c

    .line 13427
    iget-wide v5, v4, Lcom/anythink/core/common/d/l;->price:D

    iput-wide v5, v3, Lcom/anythink/core/c/c$b;->m:D

    .line 13428
    iget-object v4, v4, Lcom/anythink/core/common/d/l;->token:Ljava/lang/String;

    iput-object v4, v3, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 13429
    invoke-static {v0, v3}, Lcom/anythink/core/common/g/g;->a(Ljava/util/List;Lcom/anythink/core/c/c$b;)V

    .line 13430
    add-int/lit8 v2, v2, -0x1

    .line 13431
    goto :goto_2e

    .line 13435
    :cond_8c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c3

    .line 13436
    iget-object v4, p0, Lcom/anythink/core/common/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/f;

    .line 13437
    if-eqz v4, :cond_ae

    iget-object v6, v3, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    .line 14262
    iget-object v7, v4, Lcom/anythink/core/common/f;->E:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v7, :cond_ac

    .line 14263
    iget-object v4, v4, Lcom/anythink/core/common/f;->E:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/anythink/core/c/c$b;

    goto :goto_ae

    .line 14265
    :cond_ac
    nop

    .line 13437
    nop

    .line 13438
    :cond_ae
    :goto_ae
    if-eqz v5, :cond_c3

    .line 13439
    iget-wide v6, v5, Lcom/anythink/core/c/c$b;->m:D

    iput-wide v6, v3, Lcom/anythink/core/c/c$b;->m:D

    .line 13440
    iget-object v4, v5, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    iput-object v4, v3, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 13441
    iget v4, v5, Lcom/anythink/core/c/c$b;->q:I

    iput v4, v3, Lcom/anythink/core/c/c$b;->q:I

    .line 13442
    invoke-static {v0, v3}, Lcom/anythink/core/common/g/g;->a(Ljava/util/List;Lcom/anythink/core/c/c$b;)V

    .line 13443
    add-int/lit8 v2, v2, -0x1

    .line 13444
    goto/16 :goto_2e

    .line 13448
    :cond_c3
    goto/16 :goto_2e

    .line 13451
    :cond_c5
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object p0

    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 13453
    if-nez v2, :cond_d5

    .line 13454
    invoke-static {}, Lcom/anythink/core/common/p;->a()Lcom/anythink/core/common/p;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Lcom/anythink/core/common/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_d5
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/d;Lcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/g;)V
    .registers 5

    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/anythink/core/common/d;->a(ZLcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/g;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/d;ZLcom/anythink/core/common/d/d;Ljava/lang/Throwable;Lcom/anythink/core/common/g;)V
    .registers 5

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/d;->a(ZLcom/anythink/core/common/d/d;Ljava/lang/Throwable;Lcom/anythink/core/common/g;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Lcom/anythink/core/common/d/d;)V
    .registers 4

    .line 668
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_10

    :cond_8
    if-eqz p2, :cond_11

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_11

    .line 674
    :cond_10
    return-void

    .line 669
    :cond_11
    iget-object p1, p0, Lcom/anythink/core/common/d;->a:Ljava/lang/String;

    const-string p2, "unitgroup list is null"

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const/4 p1, 0x5

    invoke-virtual {p3, p1}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 672
    new-instance p1, Lcom/anythink/core/common/c;

    const-string p2, "4004"

    const-string p3, ""

    invoke-static {p2, p3, p3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p2

    const-string p3, "No Adsource."

    invoke-direct {p1, p2, p3}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 759
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_56

    .line 760
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/c/c$b;

    .line 762
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Lcom/anythink/core/common/d/ab;

    move-result-object v2

    .line 763
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/anythink/core/common/d/ab;->a()Lcom/anythink/core/common/d/b;

    move-result-object v2

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 765
    :goto_1e
    if-eqz v2, :cond_47

    invoke-virtual {v2}, Lcom/anythink/core/common/d/b;->a()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {v2}, Lcom/anythink/core/common/d/b;->i()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 767
    :try_start_2c
    invoke-virtual {v2}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->n()D

    move-result-wide v2

    .line 768
    nop

    .line 3992
    iput-wide v2, v1, Lcom/anythink/core/c/c$b;->m:D

    .line 769
    nop

    .line 4920
    const/4 v2, 0x3

    iput v2, v1, Lcom/anythink/core/c/c$b;->q:I

    .line 770
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 771
    invoke-static {p0, v1}, Lcom/anythink/core/common/g/g;->a(Ljava/util/List;Lcom/anythink/core/c/c$b;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_45} :catch_46

    .line 772
    goto :goto_53

    .line 773
    :catch_46
    move-exception v2

    .line 778
    :cond_47
    invoke-static {v1}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/c/c$b;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 779
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 780
    invoke-static {p0, v1}, Lcom/anythink/core/common/g/g;->a(Ljava/util/List;Lcom/anythink/core/c/c$b;)V

    .line 759
    :cond_53
    :goto_53
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 784
    :cond_56
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/anythink/core/common/d/x;Lcom/anythink/core/common/d/d;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Lcom/anythink/core/common/d/x;",
            "Lcom/anythink/core/common/d/d;",
            ")V"
        }
    .end annotation

    .line 719
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 720
    invoke-virtual {p7}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p7, p6, v0}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;Lcom/anythink/core/common/d/d;Lcom/anythink/core/common/d/x;Lcom/anythink/core/c/c$b;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 721
    iput v1, v0, Lcom/anythink/core/c/c$b;->a:I

    .line 722
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    goto :goto_4

    .line 726
    :cond_21
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    goto :goto_4

    .line 731
    :cond_25
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/c/c$b;

    .line 733
    invoke-virtual {p7}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p7, p6, p2}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;Lcom/anythink/core/common/d/d;Lcom/anythink/core/common/d/x;Lcom/anythink/core/c/c$b;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 734
    iput v1, p2, Lcom/anythink/core/c/c$b;->a:I

    .line 735
    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    goto :goto_29

    .line 738
    :cond_45
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    goto :goto_29

    .line 741
    :cond_49
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_73

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_56

    goto :goto_73

    .line 742
    :cond_56
    iget-object p1, p0, Lcom/anythink/core/common/d;->a:Ljava/lang/String;

    const-string p2, "no vail adsource"

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const/4 p1, 0x6

    invoke-virtual {p7, p1}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 746
    const-string p1, "4005"

    const-string p2, ""

    invoke-static {p1, p2, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    .line 747
    new-instance p2, Lcom/anythink/core/common/c;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p2

    .line 749
    :cond_73
    :goto_73
    return-void
.end method

.method private a(ZLcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/g;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/anythink/core/common/d/d;",
            "Lcom/anythink/core/api/AdError;",
            "TT;)V"
        }
    .end annotation

    .line 831
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/d;->g:Z

    .line 833
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/d$3;

    invoke-direct {v2, p0, p4, p2, p3}, Lcom/anythink/core/common/d$3;-><init>(Lcom/anythink/core/common/d;Lcom/anythink/core/common/g;Lcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 839
    invoke-virtual {p2, v0}, Lcom/anythink/core/common/d/d;->b(Z)V

    .line 840
    if-eqz p1, :cond_22

    .line 841
    iget-object p1, p0, Lcom/anythink/core/common/d;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object p1

    const/16 p4, 0xa

    invoke-virtual {p1, p4, p2}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 843
    invoke-static {p2, p3}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;)V

    .line 846
    :cond_22
    return-void
.end method

.method private a(ZLcom/anythink/core/common/d/d;Ljava/lang/Throwable;Lcom/anythink/core/common/g;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/anythink/core/common/d/d;",
            "Ljava/lang/Throwable;",
            "TT;)V"
        }
    .end annotation

    .line 821
    instance-of v0, p3, Lcom/anythink/core/common/c;

    if-eqz v0, :cond_9

    .line 822
    check-cast p3, Lcom/anythink/core/common/c;

    iget-object p3, p3, Lcom/anythink/core/common/c;->a:Lcom/anythink/core/api/AdError;

    goto :goto_15

    .line 824
    :cond_9
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "9999"

    const-string v1, ""

    invoke-static {v0, v1, p3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p3

    .line 827
    :goto_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/d;->a(ZLcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/g;)V

    .line 828
    return-void
.end method

.method private static a(Lcom/anythink/core/c/c$b;)Z
    .registers 4

    .line 795
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v2, p0, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/b/e;->b(Ljava/lang/String;I)Lcom/anythink/core/common/d/l;

    move-result-object v0

    .line 796
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/anythink/core/common/d/l;->a()Z

    move-result v1

    if-nez v1, :cond_21

    .line 797
    iget-wide v1, v0, Lcom/anythink/core/common/d/l;->price:D

    iput-wide v1, p0, Lcom/anythink/core/c/c$b;->m:D

    .line 798
    iget-object v0, v0, Lcom/anythink/core/common/d/l;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 799
    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/core/c/c$b;->q:I

    .line 800
    const/4 p0, 0x1

    return p0

    .line 804
    :cond_21
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget p0, p0, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v1, v2, p0}, Lcom/anythink/core/b/e;->a(Ljava/lang/String;I)V

    .line 807
    if-eqz v0, :cond_44

    iget p0, v0, Lcom/anythink/core/common/d/l;->d:I

    const/16 v1, 0x42

    if-ne p0, v1, :cond_44

    .line 808
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object p0

    iget-object v0, v0, Lcom/anythink/core/common/d/l;->token:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/anythink/core/common/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_45

    .line 813
    :cond_44
    goto :goto_46

    .line 811
    :catchall_45
    move-exception p0

    .line 814
    :goto_46
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/anythink/core/common/d;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/anythink/core/common/d;->n:Z

    return p0
.end method

.method static synthetic a(Lcom/anythink/core/common/d;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/anythink/core/common/d;->p:Z

    return p1
.end method

.method private static a(Ljava/lang/String;Lcom/anythink/core/common/d/d;Lcom/anythink/core/common/d/x;Lcom/anythink/core/c/c$b;)Z
    .registers 16

    .line 858
    if-eqz p2, :cond_9

    iget-object v0, p3, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/anythink/core/common/d/x;->a(Ljava/lang/String;)Lcom/anythink/core/common/d/x$a;

    move-result-object p2

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    .line 860
    :goto_a
    const/4 v0, 0x0

    if-eqz p2, :cond_11

    iget v1, p2, Lcom/anythink/core/common/d/x$a;->e:I

    move v6, v1

    goto :goto_12

    :cond_11
    move v6, v0

    .line 861
    :goto_12
    if-eqz p2, :cond_18

    iget p2, p2, Lcom/anythink/core/common/d/x$a;->d:I

    move v7, p2

    goto :goto_19

    :cond_18
    move v7, v0

    .line 863
    :goto_19
    iget p2, p3, Lcom/anythink/core/c/c$b;->d:I

    const-string v1, "2003"

    const/4 v8, 0x2

    const/4 v2, -0x1

    const-string v9, "Out of Cap"

    const-string v10, ""

    const/4 v11, 0x1

    if-eq p2, v2, :cond_3d

    iget p2, p3, Lcom/anythink/core/c/c$b;->d:I

    if-lt v7, p2, :cond_3d

    .line 864
    nop

    .line 5016
    iput-object v9, p3, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    .line 865
    const-string v4, "Out of Cap"

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lcom/anythink/core/common/g/l;->a(Ljava/lang/String;Lcom/anythink/core/common/d/d;Ljava/lang/String;Lcom/anythink/core/c/c$b;II)V

    .line 866
    invoke-static {v1, v10, v9}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p0

    invoke-static {p1, p3, v8, p0}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;Lcom/anythink/core/c/c$b;ILcom/anythink/core/api/AdError;)V

    .line 867
    return v11

    .line 870
    :cond_3d
    iget p2, p3, Lcom/anythink/core/c/c$b;->e:I

    if-eq p2, v2, :cond_58

    iget p2, p3, Lcom/anythink/core/c/c$b;->e:I

    if-lt v6, p2, :cond_58

    .line 871
    nop

    .line 6016
    iput-object v9, p3, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    .line 872
    const-string v4, "Out of Cap"

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lcom/anythink/core/common/g/l;->a(Ljava/lang/String;Lcom/anythink/core/common/d/d;Ljava/lang/String;Lcom/anythink/core/c/c$b;II)V

    .line 873
    invoke-static {v1, v10, v9}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p0

    invoke-static {p1, p3, v8, p0}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;Lcom/anythink/core/c/c$b;ILcom/anythink/core/api/AdError;)V

    .line 874
    return v11

    .line 877
    :cond_58
    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    move-result-object p2

    invoke-virtual {p2, p0, p3}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Z

    move-result p2

    if-eqz p2, :cond_7a

    .line 878
    nop

    .line 7016
    const-string p2, "Out of Pacing"

    iput-object p2, p3, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    .line 879
    const-string v4, "Out of Pacing"

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lcom/anythink/core/common/g/l;->a(Ljava/lang/String;Lcom/anythink/core/common/d/d;Ljava/lang/String;Lcom/anythink/core/c/c$b;II)V

    .line 880
    const/4 p0, 0x3

    const-string v0, "2004"

    invoke-static {v0, v10, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p2

    invoke-static {p1, p3, p0, p2}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;Lcom/anythink/core/c/c$b;ILcom/anythink/core/api/AdError;)V

    .line 881
    return v11

    .line 884
    :cond_7a
    invoke-static {}, Lcom/anythink/core/common/b;->a()Lcom/anythink/core/common/b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/anythink/core/common/b;->a(Lcom/anythink/core/c/c$b;)Z

    move-result p2

    const-string v1, "2007"

    const/4 v8, 0x4

    if-eqz p2, :cond_9c

    .line 885
    nop

    .line 8016
    const-string p2, "Request fail in pacing"

    iput-object p2, p3, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    .line 886
    const-string v4, "Request fail in pacing"

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lcom/anythink/core/common/g/l;->a(Ljava/lang/String;Lcom/anythink/core/common/d/d;Ljava/lang/String;Lcom/anythink/core/c/c$b;II)V

    .line 887
    invoke-static {v1, v10, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p0

    invoke-static {p1, p3, v8, p0}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;Lcom/anythink/core/c/c$b;ILcom/anythink/core/api/AdError;)V

    .line 888
    return v11

    .line 891
    :cond_9c
    iget p2, p3, Lcom/anythink/core/c/c$b;->n:I

    if-ne p2, v11, :cond_bf

    .line 892
    invoke-static {}, Lcom/anythink/core/common/b;->a()Lcom/anythink/core/common/b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/anythink/core/common/b;->b(Lcom/anythink/core/c/c$b;)Z

    move-result p2

    if-eqz p2, :cond_bf

    .line 893
    nop

    .line 9016
    const-string p2, "Bid fail in pacing"

    iput-object p2, p3, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    .line 894
    const-string v4, "Bid fail in pacing"

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lcom/anythink/core/common/g/l;->a(Ljava/lang/String;Lcom/anythink/core/common/d/d;Ljava/lang/String;Lcom/anythink/core/c/c$b;II)V

    .line 895
    invoke-static {v1, v10, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p0

    invoke-static {p1, p3, v8, p0}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;Lcom/anythink/core/c/c$b;ILcom/anythink/core/api/AdError;)V

    .line 896
    return v11

    .line 899
    :cond_bf
    return v0
.end method

.method static synthetic b(Lcom/anythink/core/common/d;)J
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/anythink/core/common/d;->o:J

    return-wide v0
.end method

.method private b(Lcom/anythink/core/c/c;Lcom/anythink/core/common/d/d;)V
    .registers 4

    .line 702
    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    invoke-virtual {p2}, Lcom/anythink/core/common/d/d;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;Lcom/anythink/core/c/c;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 708
    return-void

    .line 703
    :cond_e
    iget-object p1, p0, Lcom/anythink/core/common/d;->a:Ljava/lang/String;

    const-string v0, "placement pacing error"

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 706
    new-instance p1, Lcom/anythink/core/common/c;

    const-string p2, "2004"

    const-string v0, ""

    invoke-static {p2, v0, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p2

    const-string v0, "Pacing."

    invoke-direct {p1, p2, v0}, Lcom/anythink/core/common/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic c(Lcom/anythink/core/common/d;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/anythink/core/common/d;->p:Z

    return p0
.end method

.method static synthetic d(Lcom/anythink/core/common/d;)Z
    .registers 2

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/d;->n:Z

    return v0
.end method

.method static synthetic e(Lcom/anythink/core/common/d;)J
    .registers 3

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/core/common/d;->o:J

    return-wide v0
.end method

.method static synthetic f(Lcom/anythink/core/common/d;)Ljava/lang/String;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/anythink/core/common/d;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Z)Lcom/anythink/core/common/d/b;
    .registers 20

    .line 1126
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v2

    iget-object v3, v0, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v2

    .line 1128
    iget-object v3, v0, Lcom/anythink/core/common/d;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_22

    move-object v13, v4

    goto :goto_25

    :cond_22
    iget-object v3, v0, Lcom/anythink/core/common/d;->h:Ljava/lang/String;

    move-object v13, v3

    .line 1130
    :goto_25
    if-nez v2, :cond_33

    .line 1131
    iget-object v2, v0, Lcom/anythink/core/common/d;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v2

    iget-object v3, v0, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v2

    .line 1134
    :cond_33
    const/4 v3, 0x0

    const/4 v15, 0x0

    if-nez v2, :cond_5a

    .line 1136
    iget-object v2, v0, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    invoke-static {v4, v4, v2, v15, v3}, Lcom/anythink/core/common/g/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;I)Lcom/anythink/core/common/d/d;

    move-result-object v5

    .line 1137
    if-eqz v1, :cond_46

    .line 1138
    const/4 v1, 0x4

    invoke-static {v5, v1, v4, v13}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v15

    goto :goto_59

    .line 1140
    :cond_46
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, -0x1

    const/4 v10, -0x1

    const/4 v14, 0x0

    const-string v9, ""

    const-string v11, ""

    const-string v12, ""

    const-string v1, ""

    move-object/from16 v16, v15

    move-object v15, v1

    invoke-static/range {v5 .. v15}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1142
    :goto_59
    return-object v16

    .line 1146
    :cond_5a
    move-object/from16 v16, v15

    invoke-static {}, Lcom/anythink/core/a/c;->a()Lcom/anythink/core/a/c;

    iget-object v5, v0, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/anythink/core/a/c;->a(Ljava/lang/String;Lcom/anythink/core/c/c;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 1148
    invoke-virtual {v2}, Lcom/anythink/core/c/c;->y()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/b/g;->l()Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v7

    iget-object v8, v0, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/anythink/core/common/b/g;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5, v4, v6, v2, v3}, Lcom/anythink/core/common/g/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;I)Lcom/anythink/core/common/d/d;

    move-result-object v5

    .line 1149
    if-eqz v1, :cond_8c

    .line 1150
    const/4 v1, 0x3

    invoke-static {v5, v1, v4, v13}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    .line 1152
    :cond_8c
    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, -0x1

    const/4 v10, -0x1

    const/4 v14, 0x0

    const-string v9, ""

    const-string v11, ""

    const-string v12, ""

    const-string v15, ""

    invoke-static/range {v5 .. v15}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1154
    :goto_9c
    return-object v16

    .line 1158
    :cond_9d
    iget-object v5, v0, Lcom/anythink/core/common/d;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v5

    iget-object v6, v0, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Lcom/anythink/core/a/a;->a(Lcom/anythink/core/c/c;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 1160
    invoke-virtual {v2}, Lcom/anythink/core/c/c;->y()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/b/g;->l()Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v7

    iget-object v8, v0, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/anythink/core/common/b/g;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5, v4, v6, v2, v3}, Lcom/anythink/core/common/g/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;I)Lcom/anythink/core/common/d/d;

    move-result-object v5

    .line 1161
    if-eqz v1, :cond_d0

    .line 1162
    const/4 v1, 0x2

    invoke-static {v5, v1, v4, v13}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_e0

    .line 1164
    :cond_d0
    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v10, -0x1

    const/4 v14, 0x0

    const-string v9, ""

    const-string v11, ""

    const-string v12, ""

    const-string v15, ""

    invoke-static/range {v5 .. v15}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1166
    :goto_e0
    return-object v16

    .line 1169
    :cond_e1
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v2

    iget-object v3, v0, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v5, p1

    invoke-virtual {v2, v5, v3, v4, v1}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/anythink/core/common/d/b;

    move-result-object v1

    .line 1171
    return-object v1
.end method

.method public final a()V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/anythink/core/common/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/d;->b(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 123
    iget-boolean v1, p0, Lcom/anythink/core/common/d;->n:Z

    if-nez v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/d;->n:Z

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/d;->o:J

    .line 127
    :cond_1b
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 3

    .line 140
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/core/common/d;->c:Ljava/lang/ref/WeakReference;

    .line 141
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/g;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 198
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v7, Lcom/anythink/core/common/d$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/anythink/core/common/d$1;-><init>(Lcom/anythink/core/common/d;Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/g;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 387
    return-void
.end method

.method public final a(Lcom/anythink/core/common/d/b;)V
    .registers 2

    .line 1099
    invoke-virtual {p1}, Lcom/anythink/core/common/d/b;->d()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1100
    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/core/common/d;->f:I

    .line 1102
    :cond_9
    return-void
.end method

.method public abstract a(Lcom/anythink/core/common/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/anythink/core/common/g;Lcom/anythink/core/api/AdError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/anythink/core/api/AdError;",
            ")V"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .line 102
    iget-object v0, p0, Lcom/anythink/core/common/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/anythink/core/c/c;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    .line 104
    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/core/common/d;->f:I

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/core/common/d;->l:J

    .line 107
    iput-boolean v0, p0, Lcom/anythink/core/common/d;->n:Z

    .line 108
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/anythink/core/common/d;->o:J

    .line 109
    iput-boolean v0, p0, Lcom/anythink/core/common/d;->p:Z

    return-void

    .line 111
    :cond_29
    iput v0, p0, Lcom/anythink/core/common/d;->f:I

    .line 114
    return-void
.end method

.method public final a(Ljava/lang/String;D)V
    .registers 5

    .line 157
    iget-object v0, p0, Lcom/anythink/core/common/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/f;

    .line 158
    if-eqz p1, :cond_d

    .line 159
    invoke-virtual {p1, p2, p3}, Lcom/anythink/core/common/f;->a(D)V

    .line 161
    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/g;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .line 1180
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Landroid/content/Context;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/anythink/core/common/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public abstract b(Lcom/anythink/core/common/g;)Lcom/anythink/core/common/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/anythink/core/common/f;"
        }
    .end annotation
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/anythink/core/common/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public final b(Landroid/content/Context;)Z
    .registers 3

    .line 1109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;Z)Lcom/anythink/core/common/d/b;

    move-result-object p1

    .line 1110
    if-eqz p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    return v0
.end method

.method public final c(Landroid/content/Context;)Lcom/anythink/core/api/ATAdStatusInfo;
    .registers 6

    .line 1114
    invoke-virtual {p0}, Lcom/anythink/core/common/d;->d()Z

    move-result v0

    .line 1115
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;Z)Lcom/anythink/core/common/d/b;

    move-result-object p1

    .line 1117
    nop

    .line 1118
    if-eqz p1, :cond_15

    .line 1119
    invoke-virtual {p1}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v2

    goto :goto_16

    .line 1118
    :cond_15
    const/4 v2, 0x0

    .line 1121
    :goto_16
    new-instance v3, Lcom/anythink/core/api/ATAdStatusInfo;

    if-eqz p1, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    invoke-direct {v3, v0, v1, v2}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    return-object v3
.end method

.method public final c()Z
    .registers 5

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/common/d;->l:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/anythink/core/common/d;->m:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    .line 168
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .registers 4

    .line 179
    iget-boolean v0, p0, Lcom/anythink/core/common/d;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 180
    return v1

    .line 182
    :cond_6
    iget-object v0, p0, Lcom/anythink/core/common/d;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 183
    iget-object v0, p0, Lcom/anythink/core/common/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/anythink/core/common/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f;

    .line 184
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/anythink/core/common/f;->c()Z

    move-result v0

    if-nez v0, :cond_21

    .line 185
    return v1

    .line 188
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .registers 3

    .line 1077
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/d$6;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/d$6;-><init>(Lcom/anythink/core/common/d;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 1086
    return-void
.end method

.method public f()Z
    .registers 2

    .line 1176
    const/4 v0, 0x0

    return v0
.end method
