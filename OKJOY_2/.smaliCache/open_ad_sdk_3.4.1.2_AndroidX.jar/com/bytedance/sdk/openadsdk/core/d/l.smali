.class public Lcom/bytedance/sdk/openadsdk/core/d/l;
.super Ljava/lang/Object;
.source "MaterialMeta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/d/l$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/bytedance/sdk/openadsdk/core/d/h;

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lcom/bytedance/sdk/openadsdk/core/d/l$a;

.field private F:Lcom/bytedance/sdk/openadsdk/core/d/l$a;

.field private G:Z

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:I

.field private M:I

.field private N:Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

.field private O:I

.field private P:I

.field private Q:Lcom/bytedance/sdk/openadsdk/core/d/e;

.field private R:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private S:I

.field private T:I

.field private U:Ljava/lang/String;

.field private V:I

.field private W:I

.field private X:I

.field private Y:Lorg/json/JSONObject;

.field private Z:I

.field public a:Ljava/lang/String;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:Lcom/bytedance/sdk/openadsdk/core/d/n;

.field private ag:Lcom/bytedance/sdk/openadsdk/core/d/c;

.field private ah:Ljava/lang/String;

.field private b:I

.field private c:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private d:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/bytedance/sdk/openadsdk/core/d/b;

.field private q:Lcom/bytedance/sdk/openadsdk/core/d/g;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:J

.field private x:I

.field private y:Lcom/bytedance/sdk/openadsdk/core/d/t;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->f:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->h:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->j:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->k:Ljava/util/List;

    .line 51
    const-string v0, "0"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->o:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->u:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->v:I

    .line 94
    const-string v1, ""

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->J:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->K:Ljava/lang/String;

    .line 97
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->L:I

    .line 99
    const/4 v1, 0x2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->M:I

    .line 103
    const/16 v1, -0xc8

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->O:I

    .line 106
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->P:I

    .line 107
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/e;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/d/e;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->Q:Lcom/bytedance/sdk/openadsdk/core/d/e;

    .line 113
    const/4 v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->T:I

    .line 117
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->V:I

    .line 119
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->W:I

    .line 121
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->X:I

    .line 125
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z:I

    .line 130
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ab:I

    .line 132
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ac:I

    .line 140
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad:I

    .line 142
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ae:I

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 2

    .line 145
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    .line 146
    return v0

    .line 148
    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;ZZ)Z
    .registers 5

    .line 1174
    const-string v0, "MaterialMeta"

    if-eqz p0, :cond_15

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->y:Lcom/bytedance/sdk/openadsdk/core/d/t;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->a()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_15

    .line 1175
    const-string p0, "can show end card follow js"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    return p2

    .line 1178
    :cond_15
    const-string p0, "can show end card follow js WebViewClient"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    return p1
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/FilterWord;)Lorg/json/JSONObject;
    .registers 6

    .line 1095
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1096
    return-object v0

    .line 1100
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1101
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1102
    const-string v2, "id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1103
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1104
    const-string v2, "is_selected"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getIsSelected()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1106
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1107
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1108
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 1109
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/FilterWord;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1110
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1111
    goto :goto_3d

    .line 1113
    :cond_51
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_5c

    .line 1114
    const-string p1, "options"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_5e

    .line 1118
    :cond_5c
    return-object v1

    .line 1121
    :cond_5d
    goto :goto_5f

    .line 1120
    :catchall_5e
    move-exception p1

    .line 1123
    :goto_5f
    return-object v0
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 1

    .line 359
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 360
    const/4 p0, 0x1

    return p0

    .line 362
    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 4

    .line 1127
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1128
    return v0

    .line 1130
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_13

    .line 1131
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result p0

    const/16 v1, 0xf

    if-ne p0, v1, :cond_14

    :cond_13
    const/4 v0, 0x1

    .line 1130
    :cond_14
    return v0
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 2

    .line 1135
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_10

    .line 1136
    return v0

    .line 1138
    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 2

    .line 1142
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result p0

    if-nez p0, :cond_10

    .line 1143
    const/4 p0, 0x1

    return p0

    .line 1145
    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 4

    .line 1150
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->at()Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "parent_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_10

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    move v0, v1

    :cond_f
    return v0

    .line 1151
    :catch_10
    move-exception p0

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLuBanLandingPage error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MaterialMeta"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    return v0
.end method

.method public static g(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 3

    .line 1188
    const/4 v0, 0x0

    if-eqz p0, :cond_11

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->y:Lcom/bytedance/sdk/openadsdk/core/d/t;

    if-nez p0, :cond_8

    goto :goto_11

    .line 1191
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->a()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_10

    move v0, v1

    :cond_10
    return v0

    .line 1189
    :cond_11
    :goto_11
    return v0
.end method


# virtual methods
.method public A()Z
    .registers 3

    .line 342
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->y:Lcom/bytedance/sdk/openadsdk/core/d/t;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->n()I

    move-result v0

    if-eq v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return v1
.end method

.method public B()Z
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->y:Lcom/bytedance/sdk/openadsdk/core/d/t;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->o()I

    move-result v0

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public C()Z
    .registers 2

    .line 355
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->G:Z

    return v0
.end method

.method public D()Z
    .registers 3

    .line 371
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v0

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public E()Z
    .registers 3

    .line 384
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->F()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public F()I
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->C:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->a()I

    move-result v0

    :goto_a
    return v0
.end method

.method public G()I
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->C:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->c()I

    move-result v0

    :goto_a
    return v0
.end method

.method public H()I
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->C:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->d()I

    move-result v0

    :goto_a
    return v0
.end method

.method public I()I
    .registers 2

    .line 401
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->C:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->k()I

    move-result v0

    :goto_a
    return v0
.end method

.method public J()I
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->C:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->f()I

    move-result v0

    :goto_a
    return v0
.end method

.method public K()I
    .registers 2

    .line 411
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->C:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->g()I

    move-result v0

    :goto_a
    return v0
.end method

.method public L()I
    .registers 2

    .line 415
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->C:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->h()I

    move-result v0

    :goto_a
    return v0
.end method

.method public M()Lcom/bytedance/sdk/openadsdk/core/d/l$a;
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->E:Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    return-object v0
.end method

.method public N()Lcom/bytedance/sdk/openadsdk/core/d/l$a;
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->F:Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    return-object v0
.end method

.method public O()Lcom/bytedance/sdk/openadsdk/core/d/h;
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->C:Lcom/bytedance/sdk/openadsdk/core/d/h;

    return-object v0
.end method

.method public P()Lcom/bytedance/sdk/openadsdk/core/d/c;
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag:Lcom/bytedance/sdk/openadsdk/core/d/c;

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah:Ljava/lang/String;

    return-object v0
.end method

.method public R()Lcom/bytedance/sdk/openadsdk/core/d/t;
    .registers 2

    .line 465
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->y:Lcom/bytedance/sdk/openadsdk/core/d/t;

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .registers 2

    .line 477
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->s:Ljava/lang/String;

    return-object v0
.end method

.method public T()I
    .registers 2

    .line 481
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->b:I

    return v0
.end method

.method public U()Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2

    .line 489
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    return-object v0
.end method

.method public V()Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2

    .line 497
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    return-object v0
.end method

.method public W()Ljava/lang/String;
    .registers 2

    .line 505
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public X()I
    .registers 2

    .line 513
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->f:I

    return v0
.end method

.method public Y()Ljava/lang/String;
    .registers 2

    .line 521
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->g:Ljava/lang/String;

    return-object v0
.end method

.method public Z()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->h:Ljava/util/List;

    return-object v0
.end method

.method public a()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 157
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad:I

    .line 158
    return-void
.end method

.method public a(J)V
    .registers 3

    .line 653
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->w:J

    .line 654
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->R:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 277
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .registers 3

    .line 629
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;)V
    .registers 2

    .line 633
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->N:Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

    .line 634
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/b;)V
    .registers 2

    .line 597
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->p:Lcom/bytedance/sdk/openadsdk/core/d/b;

    .line 598
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/c;)V
    .registers 2

    .line 453
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag:Lcom/bytedance/sdk/openadsdk/core/d/c;

    .line 454
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/e;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->Q:Lcom/bytedance/sdk/openadsdk/core/d/e;

    .line 269
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/g;)V
    .registers 2

    .line 605
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->q:Lcom/bytedance/sdk/openadsdk/core/d/g;

    .line 606
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/h;)V
    .registers 2

    .line 445
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->C:Lcom/bytedance/sdk/openadsdk/core/d/h;

    .line 446
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 2

    .line 493
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 494
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/l$a;)V
    .registers 2

    .line 423
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->E:Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    .line 425
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;->b()V

    .line 426
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 427
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/t;)V
    .registers 2

    .line 469
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->y:Lcom/bytedance/sdk/openadsdk/core/d/t;

    .line 470
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->K:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 693
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->D:Ljava/util/Map;

    .line 694
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    .line 209
    if-nez p1, :cond_3

    .line 210
    return-void

    .line 212
    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/n;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->af:Lcom/bytedance/sdk/openadsdk/core/d/n;

    .line 213
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 375
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->G:Z

    .line 376
    return-void
.end method

.method public aA()I
    .registers 2

    .line 746
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ae:I

    return v0
.end method

.method public aB()Z
    .registers 4

    .line 772
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 773
    return v1

    .line 775
    :cond_a
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->r:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_19

    .line 776
    return v1

    .line 778
    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 779
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->e()Z

    move-result v2

    if-nez v2, :cond_32

    .line 780
    return v1

    .line 782
    :cond_32
    goto :goto_1f

    .line 783
    :cond_33
    const/4 v0, 0x1

    return v0
.end method

.method public aC()I
    .registers 2

    .line 787
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->C:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->b()I

    move-result v0

    :goto_a
    return v0
.end method

.method public aD()Z
    .registers 3

    .line 797
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aE()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public aE()I
    .registers 2

    .line 801
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->v:I

    return v0
.end method

.method public aF()Lorg/json/JSONObject;
    .registers 12

    .line 829
    const-string v0, "is_playable"

    const-string v1, "package_name"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 831
    :try_start_9
    const-string v3, "interaction_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 832
    const-string v3, "target_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->W()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 833
    const-string v3, "use_media_video_player"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->a()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 834
    const-string v3, "landing_scroll_percentage"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->X()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 835
    const-string v3, "gecko_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 836
    const-string v3, "ad_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 837
    const-string v3, "source"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->S()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->az()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 839
    const-string v3, "screenshot"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ap()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 840
    const-string v3, "dislike_control"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aE()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 841
    const-string v3, "play_bar_show_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->w()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 842
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 843
    const-string v3, "playable"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->g()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 844
    const-string v3, "playable_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 845
    const-string v3, "playable_style"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 846
    const-string v3, "play_bar_style"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 847
    const-string v3, "if_block_lp"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->e()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 848
    const-string v3, "cache_sort"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->x()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 849
    const-string v3, "if_sp_cache"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->z()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 850
    const-string v3, "render_control"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 852
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 853
    const-string v4, "reward_name"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 854
    const-string v4, "reward_amount"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 855
    const-string v4, "reward_data"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 857
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v3
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d9} :catch_4f4

    .line 858
    const-string v4, "width"

    const-string v5, "height"

    const-string v6, "url"

    if-eqz v3, :cond_10a

    :try_start_e1
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10a

    .line 859
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 860
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 861
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v8

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 862
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()I

    move-result v3

    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 864
    const-string v3, "icon"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 868
    :cond_10a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->V()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v3

    .line 869
    if-eqz v3, :cond_139

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_139

    .line 870
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 871
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v8

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 873
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()I

    move-result v3

    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 875
    const-string v3, "cover_image"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 878
    :cond_139
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->at()Lorg/json/JSONObject;

    move-result-object v3

    .line 879
    if-eqz v3, :cond_144

    .line 880
    const-string v7, "session_params"

    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 884
    :cond_144
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->o()Lcom/bytedance/sdk/openadsdk/core/d/e;

    move-result-object v3

    .line 885
    if-eqz v3, :cond_17e

    .line 886
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 887
    const-string v8, "click_upper_content_area"

    iget-boolean v9, v3, Lcom/bytedance/sdk/openadsdk/core/d/e;->a:Z

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 888
    const-string v8, "click_upper_non_content_area"

    iget-boolean v9, v3, Lcom/bytedance/sdk/openadsdk/core/d/e;->b:Z

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 889
    const-string v8, "click_lower_content_area"

    iget-boolean v9, v3, Lcom/bytedance/sdk/openadsdk/core/d/e;->c:Z

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 890
    const-string v8, "click_lower_non_content_area"

    iget-boolean v9, v3, Lcom/bytedance/sdk/openadsdk/core/d/e;->d:Z

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 891
    const-string v8, "click_button_area"

    iget-boolean v9, v3, Lcom/bytedance/sdk/openadsdk/core/d/e;->e:Z

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 892
    const-string v8, "click_video_area"

    iget-boolean v3, v3, Lcom/bytedance/sdk/openadsdk/core/d/e;->f:Z

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 893
    const-string v3, "click_area"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 897
    :cond_17e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->p()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    .line 898
    if-eqz v3, :cond_18d

    .line 899
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->toJsonObj()Lorg/json/JSONObject;

    move-result-object v3

    .line 900
    const-string v7, "adslot"

    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 905
    :cond_18d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v3

    .line 906
    if-eqz v3, :cond_1cb

    .line 907
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 908
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 909
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 910
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 911
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v10

    invoke-virtual {v9, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 912
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/d/k;->b()I

    move-result v8

    invoke-virtual {v9, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 913
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 914
    goto :goto_19c

    .line 916
    :cond_1c6
    const-string v3, "image"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 920
    :cond_1cb
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ab()Ljava/util/List;

    move-result-object v3

    .line 921
    if-eqz v3, :cond_1ef

    .line 922
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 923
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1da
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1ea

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 924
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 925
    goto :goto_1da

    .line 927
    :cond_1ea
    const-string v3, "show_url"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 931
    :cond_1ef
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ac()Ljava/util/List;

    move-result-object v3

    .line 932
    if-eqz v3, :cond_213

    .line 933
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 934
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1fe
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 935
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 936
    goto :goto_1fe

    .line 938
    :cond_20e
    const-string v3, "click_url"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 941
    :cond_213
    const-string v3, "phone_num"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aa()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 942
    const-string v3, "title"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 943
    const-string v3, "description"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ae()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 944
    const-string v3, "ext"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 945
    const-string v3, "image_mode"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 946
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 947
    const-string v0, "intercept_flag"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->v()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 948
    const-string v0, "button_text"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 949
    const-string v0, "ad_logo"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->m()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 950
    const-string v0, "video_adaptation"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->l()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 951
    const-string v0, "feed_video_opentype"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->k()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 953
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_278} :catch_4f4

    .line 954
    const-string v3, "app_name"

    if-eqz v0, :cond_2c1

    .line 955
    :try_start_27c
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 956
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 957
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 958
    const-string v5, "download_url"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 959
    const-string v5, "score"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->e()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 960
    const-string v5, "comment_num"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->f()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 961
    const-string v5, "quick_app_url"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 962
    const-string v5, "app_size"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->g()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 964
    const-string v0, "app"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 968
    :cond_2c1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v0

    .line 969
    if-eqz v0, :cond_2ec

    .line 970
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 971
    const-string v5, "deeplink_url"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 972
    const-string v5, "fallback_url"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 973
    const-string v5, "fallback_type"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/g;->c()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 975
    const-string v0, "deep_link"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 979
    :cond_2ec
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->al()Ljava/util/List;

    move-result-object v0

    .line 980
    if-eqz v0, :cond_316

    .line 981
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 982
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2fb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_311

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 983
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/FilterWord;)Lorg/json/JSONObject;

    move-result-object v5

    .line 984
    if-eqz v5, :cond_310

    .line 985
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 987
    :cond_310
    goto :goto_2fb

    .line 989
    :cond_311
    const-string v0, "filter_words"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 993
    :cond_316
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->am()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

    move-result-object v0

    .line 994
    if-eqz v0, :cond_325

    .line 995
    const-string v4, "personalization_prompts"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 998
    :cond_325
    const-string v0, "count_down"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ao()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 999
    const-string v0, "expiration_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->an()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1002
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    .line 1003
    if-eqz v0, :cond_346

    .line 1004
    const-string v4, "video"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->m()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1008
    :cond_346
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1009
    const-string v4, "auto_open"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->G()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1010
    const-string v4, "download_mode"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->H()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1011
    const-string v4, "download_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aC()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1012
    const-string v4, "auto_control"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->r()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1013
    const-string v4, "auto_control_choose"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->t()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1014
    const-string v4, "auto_control_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->u()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1015
    const-string v4, "if_suspend_download"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->F()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1017
    const-string v4, "if_send_click"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->I()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1020
    const-string v4, "dl_popup"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->J()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1021
    const-string v4, "market_popup"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->K()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1022
    const-string v4, "if_pop_lp"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->L()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1023
    const-string v4, "download_conf"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1024
    const-string v0, "if_both_open"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->av()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1025
    const-string v0, "if_double_deeplink"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ay()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1027
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->as()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_403

    .line 1028
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1029
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->as()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 1031
    if-eqz v4, :cond_3fe

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3fe

    .line 1032
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1033
    :goto_3e4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3fe

    .line 1034
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1035
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1036
    goto :goto_3e4

    .line 1038
    :cond_3fe
    const-string v4, "media_ext"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1041
    :cond_403
    const-string v0, "landing_page_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aA()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1043
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->M()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v0

    .line 1044
    if-eqz v0, :cond_459

    .line 1045
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1046
    const-string v5, "id"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1047
    const-string v5, "md5"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1048
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1049
    const-string v5, "data"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1050
    const-string v5, "diff_data"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1051
    const-string v5, "version"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1052
    const-string v5, "dynamic_creative"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1054
    const-string v0, "tpl_info"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1057
    :cond_459
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->N()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v0

    .line 1058
    if-eqz v0, :cond_4a8

    .line 1059
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1060
    const-string v5, "middle_id"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1061
    const-string v5, "middle_md5"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1062
    const-string v5, "middle_url"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1063
    const-string v5, "middle_data"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1064
    const-string v5, "middle_diff_data"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1065
    const-string v5, "middle_version"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1066
    const-string v5, "middle_dynamic_creative"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l$a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1067
    const-string v0, "middle_tpl_info"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1071
    :cond_4a8
    const-string v0, "market_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->au()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1074
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->P()Lcom/bytedance/sdk/openadsdk/core/d/c;

    move-result-object v0

    .line 1075
    if-eqz v0, :cond_4f3

    .line 1076
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1077
    const-string v5, "developer_name"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1078
    const-string v5, "app_version"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1079
    const-string v5, "permissions"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->e()Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1080
    const-string v5, "privacy_policy_url"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1081
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1082
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1083
    const-string v0, "app_manage"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4f3
    .catch Ljava/lang/Exception; {:try_start_27c .. :try_end_4f3} :catch_4f4

    .line 1088
    :cond_4f3
    goto :goto_4f5

    .line 1086
    :catch_4f4
    move-exception v0

    .line 1091
    :goto_4f5
    return-object v2
.end method

.method public aa()Ljava/lang/String;
    .registers 2

    .line 537
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->i:Ljava/lang/String;

    return-object v0
.end method

.method public ab()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->j:Ljava/util/List;

    return-object v0
.end method

.method public ac()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->k:Ljava/util/List;

    return-object v0
.end method

.method public ad()Ljava/lang/String;
    .registers 2

    .line 561
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->l:Ljava/lang/String;

    return-object v0
.end method

.method public ae()Ljava/lang/String;
    .registers 2

    .line 569
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->m:Ljava/lang/String;

    return-object v0
.end method

.method public af()Ljava/lang/String;
    .registers 2

    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->n:Ljava/lang/String;

    return-object v0
.end method

.method public ag()Ljava/lang/String;
    .registers 2

    .line 585
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->o:Ljava/lang/String;

    return-object v0
.end method

.method public ah()Lcom/bytedance/sdk/openadsdk/core/d/b;
    .registers 2

    .line 593
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->p:Lcom/bytedance/sdk/openadsdk/core/d/b;

    return-object v0
.end method

.method public ai()Lcom/bytedance/sdk/openadsdk/core/d/g;
    .registers 2

    .line 601
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->q:Lcom/bytedance/sdk/openadsdk/core/d/g;

    return-object v0
.end method

.method public aj()Ljava/lang/String;
    .registers 2

    .line 609
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->t:Ljava/lang/String;

    return-object v0
.end method

.method public ak()I
    .registers 2

    .line 617
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->r:I

    return v0
.end method

.method public al()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->u:Ljava/util/List;

    return-object v0
.end method

.method public am()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;
    .registers 2

    .line 637
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->N:Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

    return-object v0
.end method

.method public an()J
    .registers 3

    .line 649
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->w:J

    return-wide v0
.end method

.method public ao()I
    .registers 2

    .line 657
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->x:I

    return v0
.end method

.method public ap()Z
    .registers 2

    .line 665
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->z:Z

    return v0
.end method

.method public aq()Z
    .registers 2

    .line 673
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->A:Z

    return v0
.end method

.method public ar()Z
    .registers 2

    .line 681
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->B:Z

    return v0
.end method

.method public as()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 689
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->D:Ljava/util/Map;

    return-object v0
.end method

.method public at()Lorg/json/JSONObject;
    .registers 2

    .line 697
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->Y:Lorg/json/JSONObject;

    return-object v0
.end method

.method public au()Ljava/lang/String;
    .registers 2

    .line 705
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->U:Ljava/lang/String;

    return-object v0
.end method

.method public av()I
    .registers 2

    .line 717
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ab:I

    return v0
.end method

.method public aw()Z
    .registers 3

    .line 721
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->av()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public ax()Z
    .registers 3

    .line 725
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ay()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public ay()I
    .registers 2

    .line 733
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ac:I

    return v0
.end method

.method public az()Ljava/lang/String;
    .registers 2

    .line 738
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->K:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .line 164
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->L:I

    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 2

    .line 501
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 502
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/d/l$a;)V
    .registers 2

    .line 434
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->F:Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    .line 436
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;->b()V

    .line 437
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 438
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->I:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 2

    .line 701
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->Y:Lorg/json/JSONObject;

    .line 702
    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 669
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->z:Z

    .line 670
    return-void
.end method

.method public c()I
    .registers 2

    .line 166
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->L:I

    return v0
.end method

.method public c(I)V
    .registers 2

    .line 168
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->M:I

    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 3

    .line 533
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->J:Ljava/lang/String;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .registers 4

    .line 812
    if-nez p1, :cond_3

    .line 813
    return-void

    .line 817
    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->b:I

    .line 819
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->o:Ljava/lang/String;

    .line 820
    const-string v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->s:Ljava/lang/String;

    .line 821
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->p:Lcom/bytedance/sdk/openadsdk/core/d/b;

    .line 822
    const-string v1, "pkg_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d(Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->p:Lcom/bytedance/sdk/openadsdk/core/d/b;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c(Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->p:Lcom/bytedance/sdk/openadsdk/core/d/b;

    const-string v1, "download_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b(Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 677
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->A:Z

    .line 678
    return-void
.end method

.method public d()I
    .registers 2

    .line 170
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->M:I

    return v0
.end method

.method public d(I)V
    .registers 2

    .line 185
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->V:I

    .line 186
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 461
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah:Ljava/lang/String;

    .line 462
    return-void
.end method

.method public d(Z)V
    .registers 2

    .line 685
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->B:Z

    .line 686
    return-void
.end method

.method public e()I
    .registers 2

    .line 181
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->V:I

    return v0
.end method

.method public e(I)V
    .registers 2

    .line 220
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->H:I

    .line 221
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 473
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->s:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 755
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 756
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 758
    :cond_12
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 760
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/d/l;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->t:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/d/l;->t:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    .line 756
    :cond_2b
    :goto_2b
    return v1
.end method

.method public f(I)V
    .registers 2

    .line 236
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->X:I

    .line 237
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 509
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->e:Ljava/lang/String;

    .line 510
    return-void
.end method

.method public f()Z
    .registers 3

    .line 194
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->V:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public g()Lorg/json/JSONObject;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->af:Lcom/bytedance/sdk/openadsdk/core/d/n;

    if-nez v0, :cond_6

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/n;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public g(I)V
    .registers 2

    .line 244
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->W:I

    .line 245
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 525
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->g:Ljava/lang/String;

    .line 526
    return-void
.end method

.method public h()Lcom/bytedance/sdk/openadsdk/core/d/n;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->af:Lcom/bytedance/sdk/openadsdk/core/d/n;

    return-object v0
.end method

.method public h(I)V
    .registers 2

    .line 252
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->T:I

    .line 253
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .line 541
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->i:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public hashCode()I
    .registers 3

    .line 766
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 767
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 768
    return v0
.end method

.method public i()I
    .registers 2

    .line 216
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->H:I

    return v0
.end method

.method public i(I)V
    .registers 2

    .line 260
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->P:I

    .line 261
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 565
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->l:Ljava/lang/String;

    .line 566
    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->I:Ljava/lang/String;

    return-object v0
.end method

.method public j(I)V
    .registers 2

    .line 304
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->S:I

    .line 305
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    .line 573
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->m:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public k()I
    .registers 2

    .line 232
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->X:I

    return v0
.end method

.method public k(I)V
    .registers 2

    .line 312
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->O:I

    .line 313
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 581
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->n:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public l()I
    .registers 2

    .line 240
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->W:I

    return v0
.end method

.method public l(I)V
    .registers 2

    .line 320
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z:I

    .line 321
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .registers 2

    .line 589
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->o:Ljava/lang/String;

    .line 590
    return-void
.end method

.method public m()I
    .registers 2

    .line 248
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->T:I

    return v0
.end method

.method public m(I)V
    .registers 2

    .line 332
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->aa:I

    .line 333
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    .line 613
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->t:Ljava/lang/String;

    .line 614
    return-void
.end method

.method public n()I
    .registers 2

    .line 256
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->P:I

    return v0
.end method

.method public n(I)V
    .registers 2

    .line 485
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->b:I

    .line 486
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .registers 2

    .line 709
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->U:Ljava/lang/String;

    .line 710
    return-void
.end method

.method public o()Lcom/bytedance/sdk/openadsdk/core/d/e;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->Q:Lcom/bytedance/sdk/openadsdk/core/d/e;

    return-object v0
.end method

.method public o(I)V
    .registers 2

    .line 517
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->f:I

    .line 518
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .registers 2

    .line 742
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->a:Ljava/lang/String;

    .line 743
    return-void
.end method

.method public p()Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->R:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-object v0
.end method

.method public p(I)V
    .registers 2

    .line 621
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->r:I

    .line 622
    return-void
.end method

.method public q(I)V
    .registers 2

    .line 661
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->x:I

    .line 662
    return-void
.end method

.method public q()Z
    .registers 3

    .line 280
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->r()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public r()I
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->C:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->e()I

    move-result v0

    :goto_a
    return v0
.end method

.method public r(I)V
    .registers 2

    .line 713
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ab:I

    .line 714
    return-void
.end method

.method public s(I)V
    .registers 2

    .line 729
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ac:I

    .line 730
    return-void
.end method

.method public s()Z
    .registers 3

    .line 288
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->t()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public t()I
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->C:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->i()I

    move-result v0

    :goto_a
    return v0
.end method

.method public t(I)V
    .registers 2

    .line 750
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->ae:I

    .line 751
    return-void
.end method

.method public u()I
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->C:Lcom/bytedance/sdk/openadsdk/core/d/h;

    if-nez v0, :cond_7

    const/16 v0, 0x12c

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->j()I

    move-result v0

    :goto_b
    return v0
.end method

.method public u(I)V
    .registers 2

    .line 805
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->v:I

    .line 806
    return-void
.end method

.method public v()I
    .registers 2

    .line 300
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->S:I

    return v0
.end method

.method public w()I
    .registers 2

    .line 308
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->O:I

    return v0
.end method

.method public x()I
    .registers 2

    .line 316
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z:I

    return v0
.end method

.method public y()Ljava/lang/String;
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->J:Ljava/lang/String;

    return-object v0
.end method

.method public z()I
    .registers 2

    .line 328
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/l;->aa:I

    return v0
.end method
