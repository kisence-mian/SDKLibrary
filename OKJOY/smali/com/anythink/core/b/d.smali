.class public abstract Lcom/anythink/core/b/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/b/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "CommonAdManager"

.field private static n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/b/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Landroid/content/Context;

.field protected d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/lang/String;

.field protected f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/b/f;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Lcom/anythink/core/b/f;

.field protected h:I

.field protected i:Z

.field protected j:Ljava/lang/String;

.field protected k:Lcom/anythink/core/b/e;

.field l:I

.field m:Ljava/lang/String;

.field private o:J

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/anythink/core/b/d;->n:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/b/d;->h:I

    .line 1031
    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/core/b/d;->l:I

    .line 1032
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/b/d;->m:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/core/b/d;->d:Ljava/lang/ref/WeakReference;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/b/d;->f:Ljava/util/HashMap;

    .line 88
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_37

    .line 89
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Landroid/content/Context;)V

    .line 91
    :cond_37
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/d;J)J
    .registers 4

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/anythink/core/b/d;->p:J

    return-wide p1
.end method

.method public static a(Ljava/lang/String;)Lcom/anythink/core/b/d;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/anythink/core/b/d;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/d;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/core/b/d;Lcom/anythink/core/c/c;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .registers 6

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/c/c;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/anythink/core/c/c;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/c/c;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 969
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 971
    new-instance v4, Lcom/anythink/core/b/c/b;

    invoke-direct {v4}, Lcom/anythink/core/b/c/b;-><init>()V

    .line 972
    iget-object v0, p0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/anythink/core/b/c/b;->o(Ljava/lang/String;)V

    .line 973
    invoke-virtual {v4, p2}, Lcom/anythink/core/b/c/b;->p(Ljava/lang/String;)V

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/anythink/core/b/c/b;->q(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/anythink/core/b/c/b;->n(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v4, p3}, Lcom/anythink/core/b/c/b;->m(I)V

    .line 977
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->h()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/anythink/core/b/c/b;->r(I)V

    .line 978
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->A()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/anythink/core/b/c/b;->o(I)V

    .line 980
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 981
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 982
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 8718
    iget-wide v8, v0, Lcom/anythink/core/c/c$b;->l:D

    .line 984
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 985
    if-nez v1, :cond_72

    .line 986
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 987
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    :cond_72
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 992
    :cond_76
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 993
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    goto :goto_7e

    .line 996
    :cond_8e
    const-string v0, "CommonAdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request UnitGroup\'s Number:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const/4 v0, 0x0

    .line 998
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :cond_b0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_137

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 999
    invoke-virtual {v6, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1000
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 1001
    iput v1, v0, Lcom/anythink/core/c/c$b;->a:I

    .line 1002
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->v()I

    move-result v2

    div-int v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 8786
    iput v2, v0, Lcom/anythink/core/c/c$b;->x:I

    .line 1003
    const-string v2, "CommonAdManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "UnitGroupInfo level:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " || layer:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 9782
    iget v10, v0, Lcom/anythink/core/c/c$b;->x:I

    .line 1003
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    add-int/lit8 v1, v1, 0x1

    .line 1005
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    :try_start_103
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 1009
    const-string v2, "sortpriority"

    iget v10, v0, Lcom/anythink/core/c/c$b;->a:I

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1010
    const-string v10, "sorttype"

    iget v2, v0, Lcom/anythink/core/c/c$b;->m:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_135

    iget v2, v0, Lcom/anythink/core/c/c$b;->p:I

    :goto_118
    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1011
    const-string v2, "unit_id"

    .line 10686
    iget-object v10, v0, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    .line 1011
    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1012
    const-string v2, "bidresult"

    const/4 v10, 0x1

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1013
    const-string v2, "bidprice"

    .line 10718
    iget-wide v10, v0, Lcom/anythink/core/c/c$b;->l:D

    .line 1013
    invoke-virtual {v9, v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1014
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_132} :catch_133

    goto :goto_c6

    .line 1018
    :catch_133
    move-exception v0

    goto :goto_c6

    .line 1010
    :cond_135
    const/4 v2, 0x1

    goto :goto_118

    .line 1021
    :cond_137
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/anythink/core/b/c/b;->l(Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v4}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 1025
    return-object v5
.end method

.method private a(JZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/d$a;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Lcom/anythink/core/c/c;",
            "Lcom/anythink/core/b/c/b;",
            "Lcom/anythink/core/b/d$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 849
    invoke-virtual/range {p8 .. p8}, Lcom/anythink/core/b/c/b;->E()Ljava/lang/String;

    move-result-object v4

    .line 852
    if-eqz p3, :cond_17

    .line 853
    invoke-virtual/range {p8 .. p8}, Lcom/anythink/core/b/c/b;->v()I

    move-result v8

    move-object v3, p0

    move-object/from16 v5, p7

    move-wide v6, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v3 .. v11}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;Lcom/anythink/core/c/c;JILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 856
    :cond_17
    if-eqz p4, :cond_1f

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_39

    .line 857
    :cond_1f
    const-string v2, "4005"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 858
    const/4 v3, 0x6

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 860
    const-string v3, "After Headbidding fail no adsource."

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/c/b;Lcom/anythink/core/api/AdError;Ljava/lang/String;Lcom/anythink/core/b/d$a;)V

    .line 879
    :goto_38
    return-void

    .line 864
    :cond_39
    if-eqz p5, :cond_42

    .line 865
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 867
    :cond_42
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/c;->a(Ljava/util/List;)V

    .line 869
    invoke-virtual/range {p8 .. p8}, Lcom/anythink/core/b/c/b;->v()I

    move-result v2

    move-object/from16 v0, p7

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v4, v2, v1}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/c/c;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 871
    const/4 v3, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Lcom/anythink/core/b/c/b;->a(Z)V

    .line 872
    iget-object v3, p0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v3

    const/16 v5, 0xa

    move-object/from16 v0, p8

    invoke-virtual {v3, v5, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 874
    if-eqz p9, :cond_71

    .line 875
    move-object/from16 v0, p9

    move-object/from16 v1, p7

    invoke-interface {v0, v4, v1, v2}, Lcom/anythink/core/b/d$a;->a(Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 878
    :cond_71
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/anythink/core/b/d;->i:Z

    goto :goto_38
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/d$a;)V
    .registers 25

    .prologue
    .line 306
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->C()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/c/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 307
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->D()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/c/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 310
    const/4 v14, 0x0

    .line 311
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_18

    .line 312
    const/4 v14, 0x1

    .line 318
    :cond_18
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 320
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/b/a/e;->h()Ljava/lang/String;

    .line 321
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/anythink/core/b/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->F()Z

    move-result v4

    if-nez v4, :cond_6f

    .line 325
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v4

    new-instance v5, Lcom/anythink/core/b/d$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/anythink/core/b/d$4;-><init>(Lcom/anythink/core/b/d;Lcom/anythink/core/b/d$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 335
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->a(Z)V

    .line 336
    const/4 v4, 0x5

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v4

    const/16 v5, 0xa

    move-object/from16 v0, p5

    invoke-virtual {v4, v5, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 339
    const-string v4, "Strategy is close."

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Ljava/lang/String;)V

    .line 340
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/anythink/core/b/d;->i:Z

    .line 605
    :goto_6e
    return-void

    .line 345
    :cond_6f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_be

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_be

    .line 346
    const-string v4, "CommonAdManager"

    const-string v5, "unitgroup list is null"

    invoke-static {v4, v5}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v4

    new-instance v5, Lcom/anythink/core/b/d$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/anythink/core/b/d$5;-><init>(Lcom/anythink/core/b/d;Lcom/anythink/core/b/d$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 356
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/anythink/core/b/d;->i:Z

    .line 358
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->a(Z)V

    .line 359
    const/4 v4, 0x5

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v4

    const/16 v5, 0xa

    move-object/from16 v0, p5

    invoke-virtual {v4, v5, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 362
    const-string v4, "No Adsource."

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Ljava/lang/String;)V

    goto :goto_6e

    .line 367
    :cond_be
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->w()J

    move-result-wide v8

    .line 368
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->x()J

    move-result-wide v10

    .line 370
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;)Lcom/anythink/core/b/c/k;

    move-result-object v13

    .line 371
    if-eqz v13, :cond_135

    iget v4, v13, Lcom/anythink/core/b/c/k;->d:I

    move v5, v4

    .line 372
    :goto_d5
    if-eqz v13, :cond_138

    iget v4, v13, Lcom/anythink/core/b/c/k;->c:I

    .line 376
    :goto_d9
    const-wide/16 v16, -0x1

    cmp-long v12, v8, v16

    if-eqz v12, :cond_e6

    int-to-long v0, v4

    move-wide/from16 v16, v0

    cmp-long v4, v16, v8

    if-gez v4, :cond_f1

    :cond_e6
    const-wide/16 v8, -0x1

    cmp-long v4, v10, v8

    if-eqz v4, :cond_13a

    int-to-long v4, v5

    cmp-long v4, v4, v10

    if-ltz v4, :cond_13a

    .line 378
    :cond_f1
    const-string v4, "CommonAdManager"

    const-string v5, "placement capping error"

    invoke-static {v4, v5}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v4

    new-instance v5, Lcom/anythink/core/b/d$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/anythink/core/b/d$6;-><init>(Lcom/anythink/core/b/d;Lcom/anythink/core/b/d$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 388
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/anythink/core/b/d;->i:Z

    .line 390
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->a(Z)V

    .line 391
    const/4 v4, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v4

    const/16 v5, 0xa

    move-object/from16 v0, p5

    invoke-virtual {v4, v5, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 394
    const-string v4, "Capping."

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Ljava/lang/String;)V

    goto/16 :goto_6e

    .line 371
    :cond_135
    const/4 v4, 0x0

    move v5, v4

    goto :goto_d5

    .line 372
    :cond_138
    const/4 v4, 0x0

    goto :goto_d9

    .line 398
    :cond_13a
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;Lcom/anythink/core/c/c;)Z

    move-result v4

    if-eqz v4, :cond_18b

    .line 399
    const-string v4, "CommonAdManager"

    const-string v5, "placement pacing error"

    invoke-static {v4, v5}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v4

    new-instance v5, Lcom/anythink/core/b/d$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/anythink/core/b/d$7;-><init>(Lcom/anythink/core/b/d;Lcom/anythink/core/b/d$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 409
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/anythink/core/b/d;->i:Z

    .line 410
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->a(Z)V

    .line 411
    const/4 v4, 0x2

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v4

    const/16 v5, 0xa

    move-object/from16 v0, p5

    invoke-virtual {v4, v5, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 414
    const-string v4, "Pacing."

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Ljava/lang/String;)V

    goto/16 :goto_6e

    .line 420
    :cond_18b
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 422
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 425
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_199
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/c/c$b;

    .line 426
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v1, v13, v4}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/c/k;Lcom/anythink/core/c/c$b;)Z

    move-result v6

    if-eqz v6, :cond_1b3

    .line 427
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_199

    .line 431
    :cond_1b3
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_199

    .line 436
    :cond_1b7
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1bb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/c/c$b;

    .line 438
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v1, v13, v4}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/c/k;Lcom/anythink/core/c/c$b;)Z

    move-result v6

    if-eqz v6, :cond_1d5

    .line 439
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1bb

    .line 442
    :cond_1d5
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1bb

    .line 445
    :cond_1d9
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_23a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_23a

    .line 446
    const-string v4, "CommonAdManager"

    const-string v5, "no vail adsource"

    invoke-static {v4, v5}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v4, "4005"

    const-string v5, ""

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v9

    .line 448
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v10

    new-instance v4, Lcom/anythink/core/b/d$8;

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/anythink/core/b/d$8;-><init>(Lcom/anythink/core/b/d;Lcom/anythink/core/b/d$a;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v10, v4}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 456
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/anythink/core/b/d;->i:Z

    .line 458
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->a(Z)V

    .line 459
    const/4 v4, 0x6

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v4

    const/16 v5, 0xa

    move-object/from16 v0, p5

    invoke-virtual {v4, v5, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 462
    invoke-virtual {v9}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Ljava/lang/String;)V

    .line 463
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/anythink/core/b/d;->i:Z

    goto/16 :goto_6e

    .line 468
    :cond_23a
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v16

    new-instance v4, Lcom/anythink/core/b/d$9;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v13, p4

    invoke-direct/range {v4 .. v15}, Lcom/anythink/core/b/d$9;-><init>(Lcom/anythink/core/b/d;Landroid/content/Context;Lcom/anythink/core/b/d$a;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/b/c/b;Ljava/util/List;Ljava/util/List;Lcom/anythink/core/c/c;ZLjava/util/List;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_6e
.end method

.method private a(Lcom/anythink/core/b/c/b;Lcom/anythink/core/api/AdError;Ljava/lang/String;Lcom/anythink/core/b/d$a;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 898
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/d$11;

    invoke-direct {v1, p0, p4, p1, p2}, Lcom/anythink/core/b/d$11;-><init>(Lcom/anythink/core/b/d;Lcom/anythink/core/b/d$a;Lcom/anythink/core/b/c/b;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 906
    iput-boolean v2, p0, Lcom/anythink/core/b/d;->i:Z

    .line 907
    invoke-virtual {p1, v2}, Lcom/anythink/core/b/c/b;->a(Z)V

    .line 908
    iget-object v0, p0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 910
    invoke-static {p1, p3}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Ljava/lang/String;)V

    .line 911
    return-void
.end method

.method private a(Lcom/anythink/core/b/c/b;Ljava/lang/Throwable;Lcom/anythink/core/b/d$a;)V
    .registers 7

    .prologue
    .line 886
    instance-of v0, p2, Lcom/anythink/core/b/c;

    if-eqz v0, :cond_11

    move-object v0, p2

    .line 887
    check-cast v0, Lcom/anythink/core/b/c;

    iget-object v0, v0, Lcom/anythink/core/b/c;->a:Lcom/anythink/core/api/AdError;

    .line 888
    check-cast p2, Lcom/anythink/core/b/c;

    iget-object v1, p2, Lcom/anythink/core/b/c;->b:Ljava/lang/String;

    .line 894
    :goto_d
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/c/b;Lcom/anythink/core/api/AdError;Ljava/lang/String;Lcom/anythink/core/b/d$a;)V

    .line 895
    return-void

    .line 890
    :cond_11
    const-string v0, "9999"

    const-string v1, ""

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 891
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method static synthetic a(Lcom/anythink/core/b/d;JZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/d$a;)V
    .registers 11

    .prologue
    .line 46
    invoke-direct/range {p0 .. p9}, Lcom/anythink/core/b/d;->a(JZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/d$a;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/d$a;)V
    .registers 26

    .prologue
    .line 46
    .line 14623
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->C()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/c/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 14624
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->D()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/core/c/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 14709
    :try_start_10
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->F()Z

    move-result v6

    if-nez v6, :cond_39

    .line 14710
    const/4 v4, 0x5

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 14712
    new-instance v4, Lcom/anythink/core/b/c;

    const-string v5, "4003"

    const-string v6, ""

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v5

    const-string v6, "Strategy is close."

    invoke-direct {v4, v5, v6}, Lcom/anythink/core/b/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v4
    :try_end_2e
    .catch Lcom/anythink/core/b/c; {:try_start_10 .. :try_end_2e} :catch_2e
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_2e} :catch_64

    .line 14661
    :catch_2e
    move-exception v4

    .line 14662
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v4, v2}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/c/b;Ljava/lang/Throwable;Lcom/anythink/core/b/d$a;)V

    .line 14702
    :goto_38
    return-void

    .line 14720
    :cond_39
    :try_start_39
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6f

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6f

    .line 14721
    const-string v4, "CommonAdManager"

    const-string v5, "unitgroup list is null"

    invoke-static {v4, v5}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14722
    const/4 v4, 0x5

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 14724
    new-instance v4, Lcom/anythink/core/b/c;

    const-string v5, "4004"

    const-string v6, ""

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v5

    const-string v6, "No Adsource."

    invoke-direct {v4, v5, v6}, Lcom/anythink/core/b/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v4
    :try_end_64
    .catch Lcom/anythink/core/b/c; {:try_start_39 .. :try_end_64} :catch_2e
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_64} :catch_64

    .line 14664
    :catch_64
    move-exception v4

    .line 14665
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v4, v2}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/c/b;Ljava/lang/Throwable;Lcom/anythink/core/b/d$a;)V

    goto :goto_38

    .line 14637
    :cond_6f
    :try_start_6f
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;)Lcom/anythink/core/b/c/k;

    move-result-object v9

    .line 14732
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->w()J

    move-result-wide v10

    .line 14733
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->x()J

    move-result-wide v12

    .line 14735
    if-eqz v9, :cond_bf

    iget v6, v9, Lcom/anythink/core/b/c/k;->d:I

    move v7, v6

    .line 14736
    :goto_86
    if-eqz v9, :cond_c2

    iget v6, v9, Lcom/anythink/core/b/c/k;->c:I

    .line 14740
    :goto_8a
    const-wide/16 v14, -0x1

    cmp-long v8, v10, v14

    if-eqz v8, :cond_95

    int-to-long v14, v6

    cmp-long v6, v14, v10

    if-gez v6, :cond_a0

    :cond_95
    const-wide/16 v10, -0x1

    cmp-long v6, v12, v10

    if-eqz v6, :cond_c4

    int-to-long v6, v7

    cmp-long v6, v6, v12

    if-ltz v6, :cond_c4

    .line 14742
    :cond_a0
    const-string v4, "CommonAdManager"

    const-string v5, "placement capping error"

    invoke-static {v4, v5}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14744
    const/4 v4, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 14746
    new-instance v4, Lcom/anythink/core/b/c;

    const-string v5, "2003"

    const-string v6, ""

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v5

    const-string v6, "Capping."

    invoke-direct {v4, v5, v6}, Lcom/anythink/core/b/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v4

    .line 14735
    :cond_bf
    const/4 v6, 0x0

    move v7, v6

    goto :goto_86

    .line 14736
    :cond_c2
    const/4 v6, 0x0

    goto :goto_8a

    .line 14754
    :cond_c4
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-static {v6, v0}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;Lcom/anythink/core/c/c;)Z

    move-result v6

    if-eqz v6, :cond_f2

    .line 14755
    const-string v4, "CommonAdManager"

    const-string v5, "placement pacing error"

    invoke-static {v4, v5}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14756
    const/4 v4, 0x2

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 14758
    new-instance v4, Lcom/anythink/core/b/c;

    const-string v5, "2004"

    const-string v6, ""

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v5

    const-string v6, "Pacing."

    invoke-direct {v4, v5, v6}, Lcom/anythink/core/b/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v4

    .line 14641
    :cond_f2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/anythink/core/b/d;->h:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_149

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/b/d;->d()Z

    move-result v6

    if-nez v6, :cond_149

    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/anythink/core/b/d;->b:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7, v8}, Lcom/anythink/core/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/anythink/core/b/c/a;

    move-result-object v6

    if-eqz v6, :cond_149

    .line 14642
    if-eqz p6, :cond_118

    .line 14643
    invoke-interface/range {p6 .. p6}, Lcom/anythink/core/b/d$a;->a()V

    .line 14645
    :cond_118
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->a(Z)V

    .line 14646
    const/4 v4, 0x4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 14647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v4

    const/16 v5, 0xa

    move-object/from16 v0, p5

    invoke-virtual {v4, v5, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 14648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v4

    const/16 v5, 0xc

    move-object/from16 v0, p5

    invoke-virtual {v4, v5, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 14649
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/anythink/core/b/d;->i:Z

    goto/16 :goto_38

    .line 14653
    :cond_149
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 14654
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 14655
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v10, p5

    .line 14657
    invoke-static/range {v4 .. v10}, Lcom/anythink/core/b/d;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/anythink/core/b/c/k;Lcom/anythink/core/b/c/b;)V
    :try_end_15d
    .catch Lcom/anythink/core/b/c; {:try_start_6f .. :try_end_15d} :catch_2e
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_15d} :catch_64

    .line 14670
    const/4 v4, 0x0

    .line 14671
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_165

    .line 14672
    const/4 v4, 0x1

    .line 14676
    :cond_165
    const/4 v5, 0x1

    new-array v5, v5, [J

    .line 14678
    :try_start_168
    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Lcom/anythink/core/b/d;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 14679
    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    aput-wide v10, v5, v9

    .line 14681
    invoke-static {}, Lcom/anythink/core/b/g;->a()Lcom/anythink/core/b/g$b;

    move-result-object v9

    .line 14682
    if-nez v9, :cond_197

    .line 14683
    new-instance v9, Ljava/lang/Exception;

    const-string v10, "anythink_headbidding.aar doesn\'t exist"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_182
    .catch Ljava/lang/Throwable; {:try_start_168 .. :try_end_182} :catch_182

    .line 14701
    :catch_182
    move-exception v9

    const/4 v9, 0x0

    aget-wide v10, v5, v9

    move-object/from16 v9, p0

    move v12, v4

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    invoke-direct/range {v9 .. v18}, Lcom/anythink/core/b/d;->a(JZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/d$a;)V

    goto/16 :goto_38

    .line 14689
    :cond_197
    :try_start_197
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v10

    invoke-interface {v9, v10}, Lcom/anythink/core/b/g$b;->setTestMode(Z)V

    .line 14690
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->s()I

    move-result v13

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p2

    move-object v14, v6

    move-object v15, v7

    invoke-interface/range {v9 .. v15}, Lcom/anythink/core/b/g$b;->initHbInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 14691
    new-instance v10, Lcom/anythink/core/b/d$10;

    move-object/from16 v11, p0

    move-object v12, v5

    move v13, v4

    move-object v14, v8

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v10 .. v17}, Lcom/anythink/core/b/d$10;-><init>(Lcom/anythink/core/b/d;[JZLjava/util/List;Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/d$a;)V

    invoke-interface {v9, v10}, Lcom/anythink/core/b/g$b;->startHeadBiddingRequest(Lcom/anythink/core/b/g$a;)V
    :try_end_1c0
    .catch Ljava/lang/Throwable; {:try_start_197 .. :try_end_1c0} :catch_182

    goto/16 :goto_38
.end method

.method static synthetic a(Lcom/anythink/core/b/d;Lcom/anythink/core/b/c/b;Lcom/anythink/core/api/AdError;Ljava/lang/String;Lcom/anythink/core/b/d$a;)V
    .registers 5

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/c/b;Lcom/anythink/core/api/AdError;Ljava/lang/String;Lcom/anythink/core/b/d$a;)V

    return-void
.end method

.method private static a(Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;)V
    .registers 6

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/anythink/core/c/c;->F()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 710
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 712
    new-instance v0, Lcom/anythink/core/b/c;

    const-string v1, "4003"

    const-string v2, ""

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    const-string v2, "Strategy is close."

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/b/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_1c
    return-void
.end method

.method private static a(Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/k;Lcom/anythink/core/b/c/b;)V
    .registers 13

    .prologue
    const-wide/16 v8, -0x1

    const/4 v0, 0x0

    .line 732
    invoke-virtual {p0}, Lcom/anythink/core/c/c;->w()J

    move-result-wide v2

    .line 733
    invoke-virtual {p0}, Lcom/anythink/core/c/c;->x()J

    move-result-wide v4

    .line 735
    if-eqz p1, :cond_42

    iget v1, p1, Lcom/anythink/core/b/c/k;->d:I

    .line 736
    :goto_f
    if-eqz p1, :cond_13

    iget v0, p1, Lcom/anythink/core/b/c/k;->c:I

    .line 740
    :cond_13
    cmp-long v6, v2, v8

    if-eqz v6, :cond_1c

    int-to-long v6, v0

    cmp-long v0, v6, v2

    if-gez v0, :cond_25

    :cond_1c
    cmp-long v0, v4, v8

    if-eqz v0, :cond_44

    int-to-long v0, v1

    cmp-long v0, v0, v4

    if-ltz v0, :cond_44

    .line 742
    :cond_25
    const-string v0, "CommonAdManager"

    const-string v1, "placement capping error"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 746
    new-instance v0, Lcom/anythink/core/b/c;

    const-string v1, "2003"

    const-string v2, ""

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    const-string v2, "Capping."

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/b/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0

    :cond_42
    move v1, v0

    .line 735
    goto :goto_f

    .line 748
    :cond_44
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/core/b/d;)V
    .registers 3

    .prologue
    .line 58
    sget-object v0, Lcom/anythink/core/b/d;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Lcom/anythink/core/b/c/b;)V
    .registers 7

    .prologue
    .line 720
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2d

    :cond_8
    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2d

    .line 721
    :cond_10
    const-string v0, "CommonAdManager"

    const-string v1, "unitgroup list is null"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 724
    new-instance v0, Lcom/anythink/core/b/c;

    const-string v1, "4004"

    const-string v2, ""

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    const-string v2, "No Adsource."

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/b/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_2d
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 11
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
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 809
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_7
    if-ltz v3, :cond_82

    .line 810
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 811
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v1

    .line 2686
    iget-object v2, v0, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    .line 811
    invoke-virtual {v1, p2, v2}, Lcom/anythink/core/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/o;

    move-result-object v1

    .line 812
    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Lcom/anythink/core/b/c/o;->a()Lcom/anythink/core/b/c/a;

    move-result-object v1

    .line 813
    :goto_1f
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/anythink/core/b/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {v1}, Lcom/anythink/core/b/c/a;->j()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 815
    :try_start_2d
    invoke-virtual {v1}, Lcom/anythink/core/b/c/a;->h()Lcom/anythink/core/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/b;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->m()D

    move-result-wide v4

    .line 2722
    iput-wide v4, v0, Lcom/anythink/core/c/c$b;->l:D

    .line 3650
    const/4 v1, 0x3

    iput v1, v0, Lcom/anythink/core/c/c$b;->p:I

    .line 818
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 821
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_50

    .line 822
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    :cond_4a
    :goto_4a
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_7

    .line 812
    :cond_4e
    const/4 v1, 0x0

    goto :goto_1f

    .line 824
    :cond_50
    const/4 v1, 0x0

    move v2, v1

    :goto_52
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_4a

    .line 825
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/c/c$b;

    .line 3718
    iget-wide v4, v1, Lcom/anythink/core/c/c$b;->l:D

    .line 4718
    iget-wide v6, v0, Lcom/anythink/core/c/c$b;->l:D

    .line 826
    cmpg-double v1, v4, v6

    if-gtz v1, :cond_73

    .line 827
    invoke-interface {p0, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_69} :catch_6a

    goto :goto_4a

    .line 838
    :catch_6a
    move-exception v0

    const-string v0, "CommonAdManager"

    const-string v1, "Cache Error, need to bid."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 830
    :cond_73
    :try_start_73
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_7e

    .line 831
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7e} :catch_6a

    .line 824
    :cond_7e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_52

    .line 842
    :cond_82
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/anythink/core/b/c/k;Lcom/anythink/core/b/c/b;)V
    .registers 10
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
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Lcom/anythink/core/b/c/k;",
            "Lcom/anythink/core/b/c/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 771
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 772
    invoke-virtual {p6}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p6, p5, v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/c/k;Lcom/anythink/core/c/c$b;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 773
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 777
    :cond_1e
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 782
    :cond_22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 784
    invoke-virtual {p6}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p6, p5, v0}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/c/k;Lcom/anythink/core/c/c$b;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 785
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 788
    :cond_40
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 791
    :cond_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6f

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6f

    .line 792
    const-string v0, "CommonAdManager"

    const-string v1, "no vail adsource"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const/4 v0, 0x6

    invoke-virtual {p6, v0}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 796
    const-string v0, "4005"

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 797
    new-instance v1, Lcom/anythink/core/b/c;

    invoke-virtual {v0}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/anythink/core/b/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v1

    .line 799
    :cond_6f
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/c/k;Lcom/anythink/core/c/c$b;)Z
    .registers 12

    .prologue
    const/4 v7, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 923
    if-eqz p2, :cond_37

    iget-object v1, p3, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/anythink/core/b/c/k;->a(Ljava/lang/String;)Lcom/anythink/core/b/c/k$a;

    move-result-object v1

    .line 925
    :goto_c
    if-eqz v1, :cond_39

    iget v4, v1, Lcom/anythink/core/b/c/k$a;->e:I

    .line 926
    :goto_10
    if-eqz v1, :cond_3b

    iget v5, v1, Lcom/anythink/core/b/c/k$a;->d:I

    .line 928
    :goto_14
    iget v1, p3, Lcom/anythink/core/c/c$b;->c:I

    if-eq v1, v2, :cond_3d

    iget v1, p3, Lcom/anythink/core/c/c$b;->c:I

    if-lt v5, v1, :cond_3d

    .line 929
    const-string v0, "Out of Cap"

    .line 4746
    iput-object v0, p3, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 930
    const-string v2, "Out of Cap"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/b/g/k;->a(Ljava/lang/String;Lcom/anythink/core/b/c/b;Ljava/lang/String;Lcom/anythink/core/c/c$b;II)V

    .line 931
    const-string v0, "2003"

    const-string v1, ""

    const-string v2, "Out of Cap"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-static {p1, p3, v7, v0}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Lcom/anythink/core/c/c$b;ILcom/anythink/core/api/AdError;)V

    move v0, v6

    .line 955
    :cond_36
    :goto_36
    return v0

    .line 923
    :cond_37
    const/4 v1, 0x0

    goto :goto_c

    :cond_39
    move v4, v0

    .line 925
    goto :goto_10

    :cond_3b
    move v5, v0

    .line 926
    goto :goto_14

    .line 935
    :cond_3d
    iget v1, p3, Lcom/anythink/core/c/c$b;->d:I

    if-eq v1, v2, :cond_60

    iget v1, p3, Lcom/anythink/core/c/c$b;->d:I

    if-lt v4, v1, :cond_60

    .line 936
    const-string v0, "Out of Cap"

    .line 5746
    iput-object v0, p3, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 937
    const-string v2, "Out of Cap"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/b/g/k;->a(Ljava/lang/String;Lcom/anythink/core/b/c/b;Ljava/lang/String;Lcom/anythink/core/c/c$b;II)V

    .line 938
    const-string v0, "2003"

    const-string v1, ""

    const-string v2, "Out of Cap"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-static {p1, p3, v7, v0}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Lcom/anythink/core/c/c$b;ILcom/anythink/core/api/AdError;)V

    move v0, v6

    .line 939
    goto :goto_36

    .line 942
    :cond_60
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    move-result-object v1

    invoke-virtual {v1, p0, p3}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 943
    const-string v0, "Out of Pacing"

    .line 6746
    iput-object v0, p3, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 944
    const-string v2, "Out of Pacing"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/b/g/k;->a(Ljava/lang/String;Lcom/anythink/core/b/c/b;Ljava/lang/String;Lcom/anythink/core/c/c$b;II)V

    .line 945
    const/4 v0, 0x3

    const-string v1, "2004"

    const-string v2, ""

    const-string v3, "Out of Pacing"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-static {p1, p3, v0, v1}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Lcom/anythink/core/c/c$b;ILcom/anythink/core/api/AdError;)V

    move v0, v6

    .line 946
    goto :goto_36

    .line 949
    :cond_86
    invoke-static {}, Lcom/anythink/core/b/b;->a()Lcom/anythink/core/b/b;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/anythink/core/b/b;->a(Lcom/anythink/core/c/c$b;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 950
    const-string v0, "Request fail in pacing"

    .line 7746
    iput-object v0, p3, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 951
    const-string v2, "Request fail in pacing"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/b/g/k;->a(Ljava/lang/String;Lcom/anythink/core/b/c/b;Ljava/lang/String;Lcom/anythink/core/c/c$b;II)V

    .line 952
    const/4 v0, 0x4

    const-string v1, "2007"

    const-string v2, ""

    const-string v3, "Request fail in pacing"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-static {p1, p3, v0, v1}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Lcom/anythink/core/c/c$b;ILcom/anythink/core/api/AdError;)V

    move v0, v6

    .line 953
    goto :goto_36
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1100
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->i()Ljava/lang/String;

    move-result-object v0

    .line 1102
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1103
    invoke-static {p0}, Lcom/anythink/core/b/g/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1104
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1105
    invoke-static {}, Lcom/anythink/core/b/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1106
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1108
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1110
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1111
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1113
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/g/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1115
    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/d$a;)V
    .registers 26

    .prologue
    .line 623
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->C()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/c/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 624
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->D()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/core/c/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1709
    :try_start_10
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->F()Z

    move-result v6

    if-nez v6, :cond_39

    .line 1710
    const/4 v4, 0x5

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 1712
    new-instance v4, Lcom/anythink/core/b/c;

    const-string v5, "4003"

    const-string v6, ""

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v5

    const-string v6, "Strategy is close."

    invoke-direct {v4, v5, v6}, Lcom/anythink/core/b/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v4
    :try_end_2e
    .catch Lcom/anythink/core/b/c; {:try_start_10 .. :try_end_2e} :catch_2e
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_2e} :catch_64

    .line 661
    :catch_2e
    move-exception v4

    .line 662
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v4, v2}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/c/b;Ljava/lang/Throwable;Lcom/anythink/core/b/d$a;)V

    .line 703
    :goto_38
    return-void

    .line 1720
    :cond_39
    :try_start_39
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6f

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6f

    .line 1721
    const-string v4, "CommonAdManager"

    const-string v5, "unitgroup list is null"

    invoke-static {v4, v5}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    const/4 v4, 0x5

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 1724
    new-instance v4, Lcom/anythink/core/b/c;

    const-string v5, "4004"

    const-string v6, ""

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v5

    const-string v6, "No Adsource."

    invoke-direct {v4, v5, v6}, Lcom/anythink/core/b/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v4
    :try_end_64
    .catch Lcom/anythink/core/b/c; {:try_start_39 .. :try_end_64} :catch_2e
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_64} :catch_64

    .line 664
    :catch_64
    move-exception v4

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v4, v2}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/c/b;Ljava/lang/Throwable;Lcom/anythink/core/b/d$a;)V

    goto :goto_38

    .line 637
    :cond_6f
    :try_start_6f
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;)Lcom/anythink/core/b/c/k;

    move-result-object v9

    .line 1732
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->w()J

    move-result-wide v10

    .line 1733
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->x()J

    move-result-wide v12

    .line 1735
    if-eqz v9, :cond_bf

    iget v6, v9, Lcom/anythink/core/b/c/k;->d:I

    move v7, v6

    .line 1736
    :goto_86
    if-eqz v9, :cond_c2

    iget v6, v9, Lcom/anythink/core/b/c/k;->c:I

    .line 1740
    :goto_8a
    const-wide/16 v14, -0x1

    cmp-long v8, v10, v14

    if-eqz v8, :cond_95

    int-to-long v14, v6

    cmp-long v6, v14, v10

    if-gez v6, :cond_a0

    :cond_95
    const-wide/16 v10, -0x1

    cmp-long v6, v12, v10

    if-eqz v6, :cond_c4

    int-to-long v6, v7

    cmp-long v6, v6, v12

    if-ltz v6, :cond_c4

    .line 1742
    :cond_a0
    const-string v4, "CommonAdManager"

    const-string v5, "placement capping error"

    invoke-static {v4, v5}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    const/4 v4, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 1746
    new-instance v4, Lcom/anythink/core/b/c;

    const-string v5, "2003"

    const-string v6, ""

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v5

    const-string v6, "Capping."

    invoke-direct {v4, v5, v6}, Lcom/anythink/core/b/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v4

    .line 1735
    :cond_bf
    const/4 v6, 0x0

    move v7, v6

    goto :goto_86

    .line 1736
    :cond_c2
    const/4 v6, 0x0

    goto :goto_8a

    .line 1754
    :cond_c4
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-static {v6, v0}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;Lcom/anythink/core/c/c;)Z

    move-result v6

    if-eqz v6, :cond_f2

    .line 1755
    const-string v4, "CommonAdManager"

    const-string v5, "placement pacing error"

    invoke-static {v4, v5}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const/4 v4, 0x2

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 1758
    new-instance v4, Lcom/anythink/core/b/c;

    const-string v5, "2004"

    const-string v6, ""

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v5

    const-string v6, "Pacing."

    invoke-direct {v4, v5, v6}, Lcom/anythink/core/b/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v4

    .line 641
    :cond_f2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/anythink/core/b/d;->h:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_149

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/core/b/d;->d()Z

    move-result v6

    if-nez v6, :cond_149

    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/anythink/core/b/d;->b:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7, v8}, Lcom/anythink/core/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/anythink/core/b/c/a;

    move-result-object v6

    if-eqz v6, :cond_149

    .line 642
    if-eqz p6, :cond_118

    .line 643
    invoke-interface/range {p6 .. p6}, Lcom/anythink/core/b/d$a;->a()V

    .line 645
    :cond_118
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->a(Z)V

    .line 646
    const/4 v4, 0x4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v4

    const/16 v5, 0xa

    move-object/from16 v0, p5

    invoke-virtual {v4, v5, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v4

    const/16 v5, 0xc

    move-object/from16 v0, p5

    invoke-virtual {v4, v5, v0}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 649
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/anythink/core/b/d;->i:Z

    goto/16 :goto_38

    .line 653
    :cond_149
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 654
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 655
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v10, p5

    .line 657
    invoke-static/range {v4 .. v10}, Lcom/anythink/core/b/d;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/anythink/core/b/c/k;Lcom/anythink/core/b/c/b;)V
    :try_end_15d
    .catch Lcom/anythink/core/b/c; {:try_start_6f .. :try_end_15d} :catch_2e
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_15d} :catch_64

    .line 670
    const/4 v4, 0x0

    .line 671
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_165

    .line 672
    const/4 v4, 0x1

    .line 676
    :cond_165
    const/4 v5, 0x1

    new-array v5, v5, [J

    .line 678
    :try_start_168
    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Lcom/anythink/core/b/d;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 679
    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    aput-wide v10, v5, v9

    .line 681
    invoke-static {}, Lcom/anythink/core/b/g;->a()Lcom/anythink/core/b/g$b;

    move-result-object v9

    .line 682
    if-nez v9, :cond_197

    .line 683
    new-instance v9, Ljava/lang/Exception;

    const-string v10, "anythink_headbidding.aar doesn\'t exist"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_182
    .catch Ljava/lang/Throwable; {:try_start_168 .. :try_end_182} :catch_182

    .line 701
    :catch_182
    move-exception v9

    const/4 v9, 0x0

    aget-wide v10, v5, v9

    move-object/from16 v9, p0

    move v12, v4

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    invoke-direct/range {v9 .. v18}, Lcom/anythink/core/b/d;->a(JZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/d$a;)V

    goto/16 :goto_38

    .line 689
    :cond_197
    :try_start_197
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v10

    invoke-interface {v9, v10}, Lcom/anythink/core/b/g$b;->setTestMode(Z)V

    .line 690
    invoke-virtual/range {p4 .. p4}, Lcom/anythink/core/c/c;->s()I

    move-result v13

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p2

    move-object v14, v6

    move-object v15, v7

    invoke-interface/range {v9 .. v15}, Lcom/anythink/core/b/g$b;->initHbInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 691
    new-instance v10, Lcom/anythink/core/b/d$10;

    move-object/from16 v11, p0

    move-object v12, v5

    move v13, v4

    move-object v14, v8

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v10 .. v17}, Lcom/anythink/core/b/d$10;-><init>(Lcom/anythink/core/b/d;[JZLjava/util/List;Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;Lcom/anythink/core/b/d$a;)V

    invoke-interface {v9, v10}, Lcom/anythink/core/b/g$b;->startHeadBiddingRequest(Lcom/anythink/core/b/g$a;)V
    :try_end_1c0
    .catch Ljava/lang/Throwable; {:try_start_197 .. :try_end_1c0} :catch_182

    goto/16 :goto_38
.end method

.method private static b(Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;)V
    .registers 6

    .prologue
    .line 754
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    invoke-virtual {p1}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;Lcom/anythink/core/c/c;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 755
    const-string v0, "CommonAdManager"

    const-string v1, "placement pacing error"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 758
    new-instance v0, Lcom/anythink/core/b/c;

    const-string v1, "2004"

    const-string v2, ""

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    const-string v2, "Pacing."

    invoke-direct {v0, v1, v2}, Lcom/anythink/core/b/c;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_2a
    return-void
.end method

.method private static g()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1129
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Z)Lcom/anythink/core/b/c/a;
    .registers 15

    .prologue
    const/4 v2, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 1138
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v0

    iget-object v4, p0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/anythink/core/b/a;->b(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 1140
    iget-object v4, p0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/anythink/core/b/d;->a(Ljava/lang/String;)Lcom/anythink/core/b/d;

    move-result-object v4

    .line 1141
    if-eqz v4, :cond_3d

    .line 11094
    iget-object v8, v4, Lcom/anythink/core/b/d;->j:Ljava/lang/String;

    .line 1143
    :goto_19
    if-nez v0, :cond_27

    .line 1144
    iget-object v0, p0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    iget-object v4, p0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 1147
    :cond_27
    if-nez v0, :cond_4f

    .line 1149
    const-string v0, ""

    const-string v2, ""

    iget-object v4, p0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    invoke-static {v0, v2, v4, v11, v1}, Lcom/anythink/core/b/g/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;I)Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 1150
    if-eqz p2, :cond_40

    .line 1151
    const/4 v1, 0x4

    const-string v2, ""

    invoke-static {v0, v1, v2, v8}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ILjava/lang/String;Ljava/lang/String;)V

    :goto_3b
    move-object v0, v11

    .line 1184
    :goto_3c
    return-object v0

    .line 1141
    :cond_3d
    const-string v8, ""

    goto :goto_19

    .line 1153
    :cond_40
    const/4 v2, 0x4

    const-string v4, ""

    const-string v6, ""

    const-string v7, ""

    const-string v10, ""

    move v5, v3

    move v9, v1

    invoke-static/range {v0 .. v10}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_3b

    .line 1159
    :cond_4f
    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    iget-object v4, p0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/anythink/core/a/b;->a(Ljava/lang/String;Lcom/anythink/core/c/c;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 1161
    invoke-virtual {v0}, Lcom/anythink/core/c/c;->s()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    iget-object v6, p0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/b/a/e;->h()Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v7

    iget-object v9, p0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/anythink/core/b/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v4, v5, v6, v0, v1}, Lcom/anythink/core/b/g/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;I)Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 1162
    if-eqz p2, :cond_83

    .line 1163
    const-string v1, ""

    invoke-static {v0, v2, v1, v8}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ILjava/lang/String;Ljava/lang/String;)V

    :goto_81
    move-object v0, v11

    .line 1167
    goto :goto_3c

    .line 1165
    :cond_83
    const-string v4, ""

    const-string v6, ""

    const-string v7, ""

    const-string v10, ""

    move v5, v3

    move v9, v1

    invoke-static/range {v0 .. v10}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_81

    .line 1171
    :cond_91
    iget-object v2, p0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v2

    iget-object v4, p0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lcom/anythink/core/a/a;->a(Lcom/anythink/core/c/c;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 1173
    invoke-virtual {v0}, Lcom/anythink/core/c/c;->s()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    iget-object v5, p0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/core/b/a/e;->h()Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v6

    iget-object v7, p0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/anythink/core/b/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2, v4, v5, v0, v1}, Lcom/anythink/core/b/g/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;I)Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 1174
    if-eqz p2, :cond_c9

    .line 1175
    const-string v1, ""

    invoke-static {v0, v9, v1, v8}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ILjava/lang/String;Ljava/lang/String;)V

    :goto_c6
    move-object v0, v11

    .line 1179
    goto/16 :goto_3c

    .line 1177
    :cond_c9
    const-string v4, ""

    const-string v6, ""

    const-string v7, ""

    const-string v10, ""

    move v2, v9

    move v5, v3

    move v9, v1

    invoke-static/range {v0 .. v10}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;ZIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_c6

    .line 1182
    :cond_d8
    invoke-static {}, Lcom/anythink/core/b/a;->a()Lcom/anythink/core/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/anythink/core/b/d;->b:Ljava/util/HashMap;

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/core/b/a;->a(Landroid/content/Context;Ljava/lang/String;ZZLjava/util/HashMap;)Lcom/anythink/core/b/c/a;

    move-result-object v0

    goto/16 :goto_3c
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/anythink/core/b/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized a(ILcom/anythink/core/api/ATMediationSetting;)V
    .registers 5

    .prologue
    .line 1263
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/b/d;->b:Ljava/util/HashMap;

    if-nez v0, :cond_c

    .line 1264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/d;->b:Ljava/util/HashMap;

    .line 1266
    :cond_c
    iget-object v0, p0, Lcom/anythink/core/b/d;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 1267
    monitor-exit p0

    return-void

    .line 1263
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/core/b/d;->d:Ljava/lang/ref/WeakReference;

    .line 117
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/anythink/core/b/d$a;)V
    .registers 14

    .prologue
    .line 159
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v7

    new-instance v0, Lcom/anythink/core/b/d$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/anythink/core/b/d$1;-><init>(Lcom/anythink/core/b/d;Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/b/d$a;Ljava/lang/String;Z)V

    invoke-virtual {v7, v0}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 292
    return-void
.end method

.method public final a(Lcom/anythink/core/b/a/b;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 1043
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/d$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/anythink/core/b/d$2;-><init>(Lcom/anythink/core/b/d;Lcom/anythink/core/b/a/b;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 1074
    return-void
.end method

.method public final a(Lcom/anythink/core/b/c/a;)V
    .registers 3

    .prologue
    .line 1119
    invoke-virtual {p1}, Lcom/anythink/core/b/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1120
    iget-object v0, p0, Lcom/anythink/core/b/d;->g:Lcom/anythink/core/b/f;

    if-eqz v0, :cond_f

    .line 1121
    iget-object v0, p0, Lcom/anythink/core/b/d;->g:Lcom/anythink/core/b/f;

    invoke-virtual {v0}, Lcom/anythink/core/b/f;->d()V

    .line 1123
    :cond_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/b/d;->h:I

    .line 1125
    :cond_12
    return-void
.end method

.method public abstract a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V
.end method

.method protected final a(Ljava/lang/String;Lcom/anythink/core/c/c;JILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c;",
            "JI",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
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
    .line 1196
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1197
    new-instance v7, Lcom/anythink/core/b/c/b;

    invoke-direct {v7}, Lcom/anythink/core/b/c/b;-><init>()V

    .line 1198
    iget-object v2, p0, Lcom/anythink/core/b/d;->e:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/anythink/core/b/c/b;->o(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {v7, p1}, Lcom/anythink/core/b/c/b;->p(Ljava/lang/String;)V

    .line 1200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/anythink/core/c/c;->s()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/anythink/core/b/c/b;->q(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p2}, Lcom/anythink/core/c/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/anythink/core/b/c/b;->n(Ljava/lang/String;)V

    .line 1202
    move/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/anythink/core/b/c/b;->m(I)V

    .line 1203
    invoke-virtual {v7, p3, p4}, Lcom/anythink/core/b/c/b;->c(J)V

    .line 1204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/anythink/core/b/c/b;->d(J)V

    .line 1205
    invoke-virtual {p2}, Lcom/anythink/core/c/c;->h()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/anythink/core/b/c/b;->r(I)V

    .line 1206
    invoke-virtual {p2}, Lcom/anythink/core/c/c;->A()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/anythink/core/b/c/b;->o(I)V

    .line 1209
    if-eqz p6, :cond_8f

    .line 1210
    const/4 v2, 0x0

    move v3, v2

    :goto_4e
    :try_start_4e
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_8f

    .line 1211
    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/c/c$b;

    .line 1212
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1213
    const-string v4, "sortpriority"

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1214
    const-string v8, "sorttype"

    iget v4, v2, Lcom/anythink/core/c/c$b;->m:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_8d

    iget v4, v2, Lcom/anythink/core/c/c$b;->p:I

    :goto_6f
    invoke-virtual {v5, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1215
    const-string v4, "unit_id"

    .line 11686
    iget-object v8, v2, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    .line 1215
    invoke-virtual {v5, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1216
    const-string v4, "bidresult"

    const/4 v8, 0x1

    invoke-virtual {v5, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1217
    const-string v4, "bidprice"

    .line 11718
    iget-wide v8, v2, Lcom/anythink/core/c/c$b;->l:D

    .line 1217
    invoke-virtual {v5, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1218
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1210
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4e

    .line 1214
    :cond_8d
    const/4 v4, 0x1

    goto :goto_6f

    .line 1222
    :cond_8f
    if-eqz p7, :cond_dc

    .line 1223
    const/4 v2, 0x0

    move v3, v2

    :goto_93
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_dc

    .line 1224
    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/c/c$b;

    .line 1225
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1226
    const-string v4, "sortpriority"

    const/4 v5, -0x1

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1227
    const-string v4, "sorttype"

    const/4 v5, -0x1

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1228
    const-string v4, "unit_id"

    .line 12686
    iget-object v5, v2, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    .line 1228
    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1229
    const-string v4, "bidresult"

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1230
    const-string v9, "bidprice"

    iget v4, v2, Lcom/anythink/core/c/c$b;->m:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d9

    const-wide/16 v4, 0x0

    :goto_c8
    invoke-virtual {v8, v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1231
    const-string v4, "errormsg"

    .line 12742
    iget-object v2, v2, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 1231
    invoke-virtual {v8, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1232
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1223
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_93

    .line 12718
    :cond_d9
    iget-wide v4, v2, Lcom/anythink/core/c/c$b;->l:D

    goto :goto_c8

    .line 1236
    :cond_dc
    if-eqz p8, :cond_12d

    .line 1237
    const/4 v2, 0x0

    move v3, v2

    :goto_e0
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_12d

    .line 1238
    move-object/from16 v0, p8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/c/c$b;

    .line 1239
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1240
    const-string v4, "sortpriority"

    const/4 v5, -0x1

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1241
    const-string v4, "sorttype"

    const/4 v5, -0x1

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1242
    const-string v4, "unit_id"

    .line 13686
    iget-object v5, v2, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    .line 1242
    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1243
    const-string v4, "bidresult"

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1244
    const-string v9, "bidprice"

    iget v4, v2, Lcom/anythink/core/c/c$b;->m:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_126

    const-wide/16 v4, 0x0

    :goto_115
    invoke-virtual {v8, v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1245
    const-string v4, "errormsg"

    .line 13742
    iget-object v2, v2, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 1245
    invoke-virtual {v8, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1246
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1237
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_e0

    .line 13718
    :cond_126
    iget-wide v4, v2, Lcom/anythink/core/c/c$b;->l:D
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_128} :catch_129

    goto :goto_115

    .line 1250
    :catch_129
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1253
    :cond_12d
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/anythink/core/b/c/b;->l(Ljava/lang/String;)V

    .line 1255
    iget-object v2, p0, Lcom/anythink/core/b/d;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/b/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/b/f/a;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v7}, Lcom/anythink/core/b/f/a;->a(ILcom/anythink/core/b/c/n;)V

    .line 1257
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/b/d;->h:I

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/b/d;->o:J

    .line 103
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/anythink/core/b/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/f;

    .line 126
    if-eqz v0, :cond_d

    .line 127
    invoke-virtual {v0}, Lcom/anythink/core/b/f;->e()V

    .line 129
    :cond_d
    iget-object v0, p0, Lcom/anythink/core/b/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public final c()Landroid/content/Context;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/anythink/core/b/d;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public final c(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1132
    invoke-virtual {p0, p1, v0}, Lcom/anythink/core/b/d;->a(Landroid/content/Context;Z)Lcom/anythink/core/b/c/a;

    move-result-object v1

    .line 1133
    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public final d()Z
    .registers 5

    .prologue
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/core/b/d;->o:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/anythink/core/b/d;->p:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final e()Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/anythink/core/b/d;->i:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/anythink/core/b/d;->g:Lcom/anythink/core/b/f;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/anythink/core/b/d;->g:Lcom/anythink/core/b/f;

    invoke-virtual {v0}, Lcom/anythink/core/b/f;->b()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 1077
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/d$3;

    invoke-direct {v1, p0}, Lcom/anythink/core/b/d$3;-><init>(Lcom/anythink/core/b/d;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 1086
    return-void
.end method
