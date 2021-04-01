.class public Lcom/mintegral/msdk/mtgnative/c/c;
.super Ljava/lang/Object;
.source "NativePreloadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/mtgnative/c/c$b;,
        Lcom/mintegral/msdk/mtgnative/c/c$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/base/entity/l;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Lcom/mintegral/msdk/mtgnative/c/c;

.field private static y:I

.field private static z:I


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:Lcom/mintegral/msdk/base/common/f/b;

.field private E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/mintegral/msdk/c/c;

.field private l:Lcom/mintegral/msdk/click/a;

.field private m:Lcom/mintegral/msdk/c/d;

.field private n:Ljava/lang/String;

.field private o:Landroid/os/Handler;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Lcom/mintegral/msdk/base/b/i;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const-class v0, Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->e:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->f:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->g:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->h:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->i:Ljava/util/Map;

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->j:Lcom/mintegral/msdk/mtgnative/c/c;

    .line 158
    const/4 v0, -0x1

    sput v0, Lcom/mintegral/msdk/mtgnative/c/c;->y:I

    .line 159
    const/4 v0, -0x2

    sput v0, Lcom/mintegral/msdk/mtgnative/c/c;->z:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->a:Ljava/util/Queue;

    .line 102
    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->b:Ljava/util/Queue;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->p:I

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->s:Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->E:Ljava/util/Map;

    .line 121
    new-instance v0, Lcom/mintegral/msdk/base/common/f/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/f/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->D:Lcom/mintegral/msdk/base/common/f/b;

    .line 122
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 123
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 125
    :cond_2e
    new-instance v0, Lcom/mintegral/msdk/mtgnative/c/c$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgnative/c/c$1;-><init>(Lcom/mintegral/msdk/mtgnative/c/c;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->o:Landroid/os/Handler;

    .line 130
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 381
    if-nez p0, :cond_5

    move v0, v1

    .line 398
    :goto_4
    return v0

    .line 384
    :cond_5
    :try_start_5
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3c

    move v2, v1

    .line 386
    :goto_11
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_3c

    .line 387
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 388
    const-string v4, "id"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 389
    const/4 v5, 0x2

    if-ne v5, v4, :cond_2e

    .line 390
    const-string v2, "ad_num"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_32

    move-result v0

    goto :goto_4

    .line 386
    :cond_2e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    .line 395
    :catch_32
    move-exception v0

    .line 396
    sget-object v2, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    move v0, v1

    .line 398
    goto :goto_4
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/c;Lcom/mintegral/msdk/base/b/i;)Lcom/mintegral/msdk/base/b/i;
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c;->t:Lcom/mintegral/msdk/base/b/i;

    return-object p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c;->s:Ljava/lang/String;

    return-object p1
.end method

.method public static a()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1982
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->e:Ljava/util/Map;

    return-object v0
.end method

.method private a(IJILjava/lang/String;ZLcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V
    .registers 33

    .prologue
    .line 2024
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->n()Ljava/util/UUID;

    move-result-object v9

    .line 2025
    if-nez v9, :cond_c6

    .line 2026
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->E:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_ttc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->E:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_post"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    :goto_60
    new-instance v10, Lcom/mintegral/msdk/mtgnative/c/c$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v10, v0, v1, v9, v2}, Lcom/mintegral/msdk/mtgnative/c/c$2;-><init>(Lcom/mintegral/msdk/mtgnative/c/c;Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 2062
    new-instance v5, Lcom/mintegral/msdk/mtgnative/c/c$3;

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move/from16 v14, p4

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    invoke-direct/range {v5 .. v16}, Lcom/mintegral/msdk/mtgnative/c/c$3;-><init>(Lcom/mintegral/msdk/mtgnative/c/c;Ljava/lang/String;ZLjava/util/UUID;Lcom/mintegral/msdk/base/common/f/a;IJILcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V

    .line 2116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->o:Landroid/os/Handler;

    const-wide/32 v6, 0x15f90

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2117
    new-instance v12, Lcom/mintegral/msdk/mtgnative/c/c$4;

    move-object/from16 v13, p0

    move-object/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v16, v9

    move/from16 v17, p1

    move-wide/from16 v18, p2

    move/from16 v20, p4

    move-object/from16 v21, p7

    move-object/from16 v22, p8

    invoke-direct/range {v12 .. v22}, Lcom/mintegral/msdk/mtgnative/c/c$4;-><init>(Lcom/mintegral/msdk/mtgnative/c/c;Ljava/lang/String;ZLjava/util/UUID;IJILcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V

    .line 2149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->D:Lcom/mintegral/msdk/base/common/f/b;

    if-nez v4, :cond_b8

    .line 2150
    new-instance v4, Lcom/mintegral/msdk/base/common/f/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mintegral/msdk/base/common/f/b;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->D:Lcom/mintegral/msdk/base/common/f/b;

    .line 2152
    :cond_b8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->D:Lcom/mintegral/msdk/base/common/f/b;

    if-eqz v4, :cond_c5

    .line 2153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->D:Lcom/mintegral/msdk/base/common/f/b;

    invoke-virtual {v4, v10, v12}, Lcom/mintegral/msdk/base/common/f/b;->a(Lcom/mintegral/msdk/base/common/f/a;Lcom/mintegral/msdk/base/common/f/a$b;)V

    .line 2155
    :cond_c5
    return-void

    .line 2029
    :cond_c6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->E:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_ttc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->E:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_post"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_60
.end method

.method public static a(ILjava/lang/String;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 1159
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1160
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/l;

    move-object v1, v0

    .line 1164
    :goto_12
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1166
    const/4 v0, 0x1

    .line 6014
    sget-object v3, Lcom/mintegral/msdk/mtgnative/c/c;->i:Ljava/util/Map;

    .line 1167
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 7014
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->i:Ljava/util/Map;

    .line 1168
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    .line 1170
    :goto_34
    packed-switch p0, :pswitch_data_60

    .line 1188
    :goto_37
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    return-void

    .line 1162
    :cond_3d
    new-instance v0, Lcom/mintegral/msdk/base/entity/l;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/entity/l;-><init>()V

    move-object v1, v0

    goto :goto_12

    .line 1172
    :pswitch_44
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/l;->b()I

    move-result v0

    add-int/2addr v0, v4

    .line 1173
    if-le v0, v3, :cond_4c

    move v0, v2

    .line 1176
    :cond_4c
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/l;->b(I)V

    goto :goto_37

    .line 1179
    :pswitch_50
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/l;->a()I

    move-result v0

    add-int/2addr v0, v4

    .line 1180
    if-le v0, v3, :cond_5b

    .line 1183
    :goto_57
    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/l;->a(I)V

    goto :goto_37

    :cond_5b
    move v2, v0

    goto :goto_57

    :cond_5d
    move v3, v0

    goto :goto_34

    .line 1170
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_44
        :pswitch_50
    .end packed-switch
.end method

.method private a(ILjava/lang/String;Lcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V
    .registers 14

    .prologue
    const/4 v6, 0x1

    .line 420
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->a:Ljava/util/Queue;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_65

    .line 422
    :try_start_d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 423
    sget v0, Lcom/mintegral/msdk/MIntegralConstans;->REQUEST_TIME_OUT:I

    int-to-long v2, v0

    .line 424
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->b:Ljava/util/Queue;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 425
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 427
    :cond_34
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "preload start queue adsource = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4443
    if-eq v1, v6, :cond_66

    .line 4444
    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 4445
    if-eqz v0, :cond_66

    .line 4446
    iget v4, p0, Lcom/mintegral/msdk/mtgnative/c/c;->C:I

    invoke-virtual {v0, p2, v4}, Lcom/mintegral/msdk/mtgnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4447
    if-eqz v0, :cond_66

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_66

    .line 4448
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/mintegral/msdk/mtgnative/c/c;->a(ZLcom/mintegral/msdk/b/a/a;Ljava/lang/String;)V

    .line 4461
    :cond_65
    :goto_65
    return-void

    .line 4453
    :cond_66
    packed-switch v1, :pswitch_data_92

    .line 4515
    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/mintegral/msdk/mtgnative/c/c;->a(IJILjava/lang/String;Lcom/mintegral/msdk/b/a/a;ZLcom/mintegral/msdk/out/AdMobClickListener;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_72} :catch_73

    goto :goto_65

    .line 431
    :catch_73
    move-exception v0

    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    const-string v1, "queue poll exception"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .line 4456
    :pswitch_7c
    const/4 v6, 0x1

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    :try_start_82
    invoke-direct/range {v0 .. v8}, Lcom/mintegral/msdk/mtgnative/c/c;->a(IJILjava/lang/String;ZLcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V

    goto :goto_65

    .line 4459
    :pswitch_86
    const/4 v1, 0x2

    const/4 v7, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/mintegral/msdk/mtgnative/c/c;->a(IJILjava/lang/String;Lcom/mintegral/msdk/b/a/a;ZLcom/mintegral/msdk/out/AdMobClickListener;)V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_90} :catch_73

    goto :goto_65

    .line 4453
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_86
    .end packed-switch
.end method

.method public static a(Ljava/lang/Thread;)V
    .registers 2

    .prologue
    .line 2210
    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->PRELOAD_RESULT_IN_SUBTHREAD:Z

    if-nez v0, :cond_8

    .line 2211
    invoke-virtual {p0}, Ljava/lang/Thread;->run()V

    .line 2215
    :goto_7
    return-void

    .line 2213
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_7
.end method

.method static synthetic a(Ljava/util/List;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 75
    .line 7225
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_93

    move-result v0

    if-lez v0, :cond_9e

    .line 7228
    :try_start_6
    const-string v0, "com.mintegral.msdk.nativex.view.MTGMediaView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7229
    const-string v0, "com.mintegral.msdk.videocommon.download.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7230
    const-string v0, "com.mintegral.msdk.videocommon.download.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 7231
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 7232
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7233
    if-eqz v1, :cond_89

    .line 7234
    const-string v2, "com.mintegral.msdk.videocommon.listener.a"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 7235
    const-string v3, "createUnitCache"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/util/List;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 7236
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p0, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7237
    const-string v2, "load"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7238
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_89} :catch_8a

    .line 7249
    :cond_89
    :goto_89
    return-void

    .line 7241
    :catch_8a
    move-exception v0

    :try_start_8b
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    const-string v1, "please import the videocommon aar"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_92} :catch_93

    goto :goto_89

    .line 7247
    :catch_93
    move-exception v0

    .line 7248
    sget-object v1, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89

    .line 7244
    :cond_9e
    :try_start_9e
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    const-string v1, "onload \u4e0d\u7528\u4e0b\u8f7d\u89c6\u9891\u7d20\u6750 size\u4e3a0"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a5} :catch_93

    goto :goto_89
.end method

.method public static a(ZLcom/mintegral/msdk/b/a/a;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2168
    if-eqz p0, :cond_11

    .line 2169
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/mintegral/msdk/b/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2170
    invoke-virtual {p1}, Lcom/mintegral/msdk/b/a/a;->b()V

    .line 2171
    invoke-virtual {p1}, Lcom/mintegral/msdk/b/a/a;->onPreloadSucceed()V

    .line 2179
    :cond_10
    :goto_10
    return-void

    .line 2174
    :cond_11
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/mintegral/msdk/b/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2175
    invoke-virtual {p1}, Lcom/mintegral/msdk/b/a/a;->b()V

    .line 2176
    invoke-virtual {p1, p2}, Lcom/mintegral/msdk/b/a/a;->onPreloadFaild(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public static a(ZLcom/mintegral/msdk/out/Campaign;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2190
    if-nez p1, :cond_4

    .line 2201
    :cond_3
    :goto_3
    return-void

    .line 2194
    :cond_4
    if-eqz p0, :cond_f

    invoke-virtual {p1}, Lcom/mintegral/msdk/out/Campaign;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_f

    .line 2195
    invoke-virtual {p1, v1}, Lcom/mintegral/msdk/out/Campaign;->loadIconUrlAsyncWithBlock(Lcom/mintegral/msdk/out/OnImageLoadListener;)V

    .line 2197
    :cond_f
    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/mintegral/msdk/out/Campaign;->getBigDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2198
    invoke-virtual {p1, v1}, Lcom/mintegral/msdk/out/Campaign;->loadImageUrlAsyncWithBlock(Lcom/mintegral/msdk/out/OnImageLoadListener;)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/c;)Z
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->A:Z

    return v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgnative/c/c;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->o:Landroid/os/Handler;

    return-object v0
.end method

.method public static b()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1990
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->f:Ljava/util/Map;

    return-object v0
.end method

.method public static b(ILjava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1192
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1193
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/l;

    .line 1194
    packed-switch p0, :pswitch_data_22

    .line 1204
    :goto_14
    sget-object v1, Lcom/mintegral/msdk/mtgnative/c/c;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    :cond_19
    return-void

    .line 1196
    :pswitch_1a
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/l;->b(I)V

    goto :goto_14

    .line 1199
    :pswitch_1e
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/l;->a(I)V

    goto :goto_14

    .line 1194
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1e
    .end packed-switch
.end method

.method public static c()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/base/entity/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1998
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/mtgnative/c/c;)Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->x:Z

    return v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/mtgnative/c/c;)Lcom/mintegral/msdk/base/b/i;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->t:Lcom/mintegral/msdk/base/b/i;

    return-object v0
.end method

.method public static d()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2006
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->h:Ljava/util/Map;

    return-object v0
.end method

.method public static e()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2014
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/mtgnative/c/c;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->E:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/mintegral/msdk/mtgnative/c/c;)Lcom/mintegral/msdk/base/common/f/b;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->D:Lcom/mintegral/msdk/base/common/f/b;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/mtgnative/c/c;)Lcom/mintegral/msdk/c/d;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->m:Lcom/mintegral/msdk/c/d;

    return-object v0
.end method

.method static synthetic g()Ljava/util/Map;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h()Ljava/util/Map;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->h:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(IJILjava/lang/String;Lcom/mintegral/msdk/b/a/a;ZLcom/mintegral/msdk/out/AdMobClickListener;)V
    .registers 27

    .prologue
    .line 902
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v4

    invoke-static {v4}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v4

    .line 903
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/b/f;->c()V

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->m:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v4}, Lcom/mintegral/msdk/c/d;->t()I

    move-result v9

    .line 907
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->m:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v4}, Lcom/mintegral/msdk/c/d;->u()I

    move-result v11

    .line 908
    sget-object v4, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    const-string v5, "START LOAD MTG MVNATIVE"

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    new-instance v12, Lcom/mintegral/msdk/mtgnative/f/a/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v12, v4}, Lcom/mintegral/msdk/mtgnative/f/a/a;-><init>(Landroid/content/Context;)V

    .line 911
    new-instance v13, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v13}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 912
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v4

    .line 913
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v5

    .line 914
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    if-eqz v6, :cond_52d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v7, "app_id"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v7, "app_key"

    .line 915
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v7, "key_word"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v7, "key_word"

    .line 916
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_52d

    .line 917
    const/4 v7, 0x0

    .line 918
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v8, "app_id"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_52a

    .line 919
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v6, "app_id"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v6, v4

    .line 921
    :goto_9e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v8, "app_key"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_b9

    .line 922
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v5, "app_key"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v5, v4

    .line 924
    :cond_b9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v8, "key_word"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_527

    .line 925
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v7, "key_word"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 927
    :goto_d3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e2

    .line 928
    const-string v7, "smart"

    invoke-static {v4}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v7, v4}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e2
    move-object v4, v5

    move-object v5, v6

    .line 932
    :goto_e4
    const-string v6, "app_id"

    invoke-virtual {v13, v6, v5}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v6, "unit_id"

    move-object/from16 v0, p5

    invoke-virtual {v13, v6, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string v6, "req_type"

    const-string v7, "1"

    invoke-virtual {v13, v6, v7}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mintegral/msdk/mtgnative/c/c;->n:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10a

    .line 936
    const-string v6, "category"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mintegral/msdk/mtgnative/c/c;->n:Ljava/lang/String;

    invoke-virtual {v13, v6, v7}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_10a
    const-string v6, "sign"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v6, v4}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v4, "only_impression"

    const-string v5, "1"

    invoke-virtual {v13, v4, v5}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    sget-object v4, Lcom/mintegral/msdk/mtgnative/c/c;->h:Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 942
    sget v4, Lcom/mintegral/msdk/mtgnative/c/c;->y:I

    if-eq v9, v4, :cond_141

    if-eqz v9, :cond_141

    if-nez v8, :cond_151

    .line 943
    :cond_141
    const-string v5, "The request was refused"

    move-object/from16 v4, p0

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v4 .. v9}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Ljava/lang/String;ILjava/lang/String;Lcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V

    .line 1154
    :cond_150
    :goto_150
    return-void

    .line 946
    :cond_151
    if-nez p4, :cond_1bc

    .line 947
    invoke-static/range {p1 .. p1}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v4

    .line 949
    if-eqz p7, :cond_19d

    .line 950
    if-eqz v4, :cond_187

    .line 951
    move-object/from16 v0, p5

    invoke-virtual {v4, v0, v8}, Lcom/mintegral/msdk/mtgnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 952
    if-eqz v4, :cond_187

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_187

    .line 953
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-static {v4, v0, v5}, Lcom/mintegral/msdk/mtgnative/c/c;->a(ZLcom/mintegral/msdk/b/a/a;Ljava/lang/String;)V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_172} :catch_173

    goto :goto_150

    .line 1148
    :catch_173
    move-exception v4

    .line 1150
    sget-object v5, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    sget-object v5, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_150

    .line 957
    :cond_187
    :try_start_187
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->A:Z

    if-eqz v4, :cond_150

    .line 958
    const-string v5, ""

    move-object/from16 v4, p0

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v4 .. v9}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Ljava/lang/String;ILjava/lang/String;Lcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V

    goto :goto_150

    .line 963
    :cond_19d
    const/4 v5, 0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_1bc

    .line 964
    if-eqz v4, :cond_1bc

    .line 965
    move-object/from16 v0, p5

    invoke-virtual {v4, v0, v8}, Lcom/mintegral/msdk/mtgnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 966
    if-eqz v4, :cond_1bc

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1bc

    .line 967
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-static {v4, v0, v5}, Lcom/mintegral/msdk/mtgnative/c/c;->a(ZLcom/mintegral/msdk/b/a/a;Ljava/lang/String;)V

    goto :goto_150

    .line 973
    :cond_1bc
    if-eqz v8, :cond_1c7

    .line 974
    const-string v4, "ad_num"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    :cond_1c7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->p:I

    if-eqz v4, :cond_1e3

    .line 978
    const-string v4, "frame_num"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mintegral/msdk/mtgnative/c/c;->p:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    :cond_1e3
    const/4 v6, 0x0

    .line 983
    const/4 v5, 0x0

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v7, "native_info"

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30a

    .line 985
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v7, "native_info"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 986
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_523

    .line 987
    sget-object v7, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, "nativeinfo"

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_217
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_217} :catch_173

    .line 990
    :try_start_217
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I
    :try_end_21f
    .catch Lorg/json/JSONException; {:try_start_217 .. :try_end_21f} :catch_2f2
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_21f} :catch_173

    move-result v7

    if-lez v7, :cond_26d

    .line 992
    const/4 v7, 0x0

    move v10, v7

    move v7, v6

    move v6, v5

    :goto_226
    :try_start_226
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v10, v5, :cond_26f

    .line 993
    invoke-virtual {v14, v10}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 994
    const-string v15, "id"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 995
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v0, v15, :cond_257

    .line 996
    const-string v15, "ad_num"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 997
    if-lez v9, :cond_26a

    .line 998
    const-string v15, "ad_num"

    invoke-virtual {v5, v15, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move v5, v6

    move v6, v7

    .line 992
    :goto_251
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    move v7, v6

    move v6, v5

    goto :goto_226

    .line 1000
    :cond_257
    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v0, v15, :cond_26a

    .line 1001
    const-string v15, "ad_num"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1002
    if-lez v9, :cond_26a

    .line 1003
    const-string v15, "ad_num"

    invoke-virtual {v5, v15, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_26a
    move v5, v6

    move v6, v7

    goto :goto_251

    :cond_26d
    move v7, v6

    move v6, v5

    .line 1008
    :cond_26f
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mintegral/msdk/mtgnative/c/c;->B:I

    .line 1009
    invoke-virtual {v14}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_27a
    .catch Lorg/json/JSONException; {:try_start_226 .. :try_end_27a} :catch_518
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_27a} :catch_173

    move-result-object v4

    move v5, v7

    move/from16 v17, v6

    move-object v6, v4

    move/from16 v4, v17

    .line 1015
    :goto_281
    :try_start_281
    const-string v7, "native_info"

    invoke-virtual {v13, v7, v6}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_286
    move v6, v4

    move v7, v5

    move v4, v8

    .line 1023
    :goto_289
    const-string v5, "ad_num"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v5, v4}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string v4, "ping_mode"

    const-string v5, "1"

    invoke-virtual {v13, v4, v5}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v4

    .line 1027
    if-nez v4, :cond_2b1

    .line 1028
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v4

    .line 1031
    :cond_2b1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    invoke-static {v5}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_324

    .line 1032
    sget-object v5, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    const-string v9, "\u6ca1\u6709param \u53c2\u6570 \u8981\u4f20exclude_ids"

    invoke-static {v5, v9}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1034
    if-eqz v4, :cond_315

    invoke-virtual {v4}, Lcom/mintegral/msdk/c/a;->aK()I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_315

    .line 1036
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v4

    invoke-static {v4}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v4

    .line 1037
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/b/m;->c()[J

    move-result-object v9

    .line 1039
    if-eqz v9, :cond_315

    .line 1040
    array-length v10, v9

    const/4 v4, 0x0

    :goto_2e8
    if-ge v4, v10, :cond_315

    aget-wide v14, v9, v4

    .line 1041
    invoke-virtual {v5, v14, v15}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 1040
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e8

    .line 1010
    :catch_2f2
    move-exception v7

    move-object/from16 v17, v7

    move v7, v6

    move v6, v5

    move-object/from16 v5, v17

    .line 1012
    :goto_2f9
    sget-object v9, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    invoke-static {v5}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    move/from16 v17, v6

    move-object v6, v4

    move/from16 v4, v17

    goto/16 :goto_281

    .line 1018
    :cond_30a
    sget v4, Lcom/mintegral/msdk/mtgnative/c/c;->z:I

    if-eq v9, v4, :cond_51e

    if-eqz v9, :cond_51e

    move v4, v9

    move v7, v6

    move v6, v5

    .line 1019
    goto/16 :goto_289

    .line 1045
    :cond_315
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_324

    .line 1046
    const-string v4, "exclude_ids"

    invoke-static {v5}, Lcom/mintegral/msdk/base/utils/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    :cond_324
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1051
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->g()Ljava/util/List;

    move-result-object v4

    .line 1052
    if-eqz v4, :cond_350

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_350

    .line 1053
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_33c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_350

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1054
    invoke-virtual {v5, v14, v15}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_33c

    .line 1059
    :cond_350
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_35f

    .line 1060
    const-string v4, "install_ids"

    invoke-static {v5}, Lcom/mintegral/msdk/base/utils/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :cond_35f
    const/4 v5, 0x0

    .line 1063
    sget-object v4, Lcom/mintegral/msdk/mtgnative/c/c;->g:Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51b

    .line 1064
    sget-object v4, Lcom/mintegral/msdk/mtgnative/c/c;->g:Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mintegral/msdk/base/entity/l;

    .line 1065
    if-eqz v4, :cond_51b

    .line 1066
    packed-switch p1, :pswitch_data_534

    .line 1074
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/l;->b()I

    move-result v4

    .line 1080
    :goto_37d
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_395

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mintegral/msdk/mtgnative/c/c;->s:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_395

    .line 1081
    const-string v5, "ttc_ids"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mintegral/msdk/mtgnative/c/c;->s:Ljava/lang/String;

    invoke-virtual {v13, v5, v9}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :cond_395
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v9, "native_info"

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4ef

    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_4ef

    .line 1085
    const-string v5, "tnum"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/mintegral/msdk/mtgnative/c/c;->B:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v5, v9}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_3bc
    :goto_3bc
    const-string v5, "offset"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v5, v4}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const-string v4, "ad_type"

    const-string v5, "42"

    invoke-virtual {v13, v4, v5}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v4, "ad_source_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const-string v4, "native"

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Lcom/mintegral/msdk/base/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1097
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e8

    .line 1098
    const-string v5, "display_info"

    invoke-virtual {v13, v5, v4}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    :cond_3e8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_46d

    .line 1104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v5, "native_video_width"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v5, "native_video_width"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_42a

    .line 1105
    const-string v5, "video_width"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v10, "native_video_width"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v5, v4}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_42a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v5, "native_video_height"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_466

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v5, "native_video_height"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_466

    .line 1108
    const-string v5, "video_height"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    const-string v10, "native_video_height"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v5, v4}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_466
    const-string v4, "video_version"

    const-string v5, "2.0"

    invoke-virtual {v13, v4, v5}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    :cond_46d
    new-instance v5, Lcom/mintegral/msdk/mtgnative/c/c$a;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lcom/mintegral/msdk/mtgnative/c/c$a;-><init>(Lcom/mintegral/msdk/mtgnative/c/c;I)V

    .line 5044
    move-object/from16 v0, p5

    iput-object v0, v5, Lcom/mintegral/msdk/base/common/net/a/a;->d:Ljava/lang/String;

    .line 1117
    invoke-virtual {v5, v8}, Lcom/mintegral/msdk/mtgnative/c/c$a;->e(I)V

    .line 1118
    invoke-virtual {v5, v7}, Lcom/mintegral/msdk/mtgnative/c/c$a;->c(I)V

    .line 1119
    invoke-virtual {v5, v6}, Lcom/mintegral/msdk/mtgnative/c/c$a;->d(I)V

    .line 1120
    invoke-virtual {v5, v11}, Lcom/mintegral/msdk/mtgnative/c/c$a;->b(I)V

    .line 1121
    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/out/AdMobClickListener;)V

    .line 1122
    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Lcom/mintegral/msdk/b/a/a;)V

    .line 1123
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_497

    if-eqz p7, :cond_49a

    .line 1124
    :cond_497
    invoke-virtual {v5}, Lcom/mintegral/msdk/mtgnative/c/c$a;->g()V

    .line 1127
    :cond_49a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    invoke-static {v4}, Lcom/mintegral/msdk/mtgnative/c/b;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 1128
    invoke-virtual {v5, v4}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Ljava/util/List;)V

    .line 1130
    new-instance v6, Lcom/mintegral/msdk/mtgnative/c/c$b;

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v6, v0, v5, v1, v2}, Lcom/mintegral/msdk/mtgnative/c/c$b;-><init>(Lcom/mintegral/msdk/mtgnative/c/c;Lcom/mintegral/msdk/base/common/f/c;ILjava/lang/String;)V

    .line 1132
    invoke-virtual {v5, v6}, Lcom/mintegral/msdk/mtgnative/c/c$a;->a(Ljava/lang/Runnable;)V

    .line 1133
    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/mintegral/msdk/mtgnative/c/c$a;->f(I)V

    .line 1134
    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Lcom/mintegral/msdk/mtgnative/c/c$b;->a(Lcom/mintegral/msdk/b/a/a;)V

    .line 1135
    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Lcom/mintegral/msdk/mtgnative/c/c$b;->a(Lcom/mintegral/msdk/out/AdMobClickListener;)V

    .line 1136
    move/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/mintegral/msdk/mtgnative/c/c$b;->a(Z)V

    .line 1137
    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Lcom/mintegral/msdk/mtgnative/c/c$b;->a(Ljava/lang/String;)V

    .line 1139
    const/4 v4, 0x0

    .line 1140
    if-nez p4, :cond_50c

    .line 1141
    sget-object v4, Lcom/mintegral/msdk/mtgnative/b/a;->a:Ljava/lang/String;

    invoke-virtual {v12, v4, v13, v5}, Lcom/mintegral/msdk/mtgnative/f/a/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    move-result-object v4

    .line 1146
    :cond_4d5
    :goto_4d5
    invoke-virtual {v6, v4}, Lcom/mintegral/msdk/mtgnative/c/c$b;->a(Lcom/mintegral/msdk/base/common/f/a;)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/c;->o:Landroid/os/Handler;

    move-wide/from16 v0, p2

    invoke-virtual {v4, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_150

    .line 1068
    :pswitch_4e3
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/l;->b()I

    move-result v4

    goto/16 :goto_37d

    .line 1071
    :pswitch_4e9
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/l;->a()I

    move-result v4

    goto/16 :goto_37d

    .line 1086
    :cond_4ef
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_3bc

    .line 1087
    const-string v5, "tnum"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/mintegral/msdk/mtgnative/c/c;->C:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v5, v9}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3bc

    .line 1142
    :cond_50c
    const/4 v7, 0x1

    move/from16 v0, p4

    if-ne v0, v7, :cond_4d5

    .line 1143
    sget-object v4, Lcom/mintegral/msdk/mtgnative/b/a;->c:Ljava/lang/String;

    invoke-virtual {v12, v4, v13, v5}, Lcom/mintegral/msdk/mtgnative/f/a/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_516
    .catch Ljava/lang/Exception; {:try_start_281 .. :try_end_516} :catch_173

    move-result-object v4

    goto :goto_4d5

    .line 1010
    :catch_518
    move-exception v5

    goto/16 :goto_2f9

    :cond_51b
    move v4, v5

    goto/16 :goto_37d

    :cond_51e
    move v4, v8

    move v7, v6

    move v6, v5

    goto/16 :goto_289

    :cond_523
    move v4, v5

    move v5, v6

    goto/16 :goto_286

    :cond_527
    move-object v4, v7

    goto/16 :goto_d3

    :cond_52a
    move-object v6, v4

    goto/16 :goto_9e

    :cond_52d
    move-object/from16 v17, v5

    move-object v5, v4

    move-object/from16 v4, v17

    goto/16 :goto_e4

    .line 1066
    :pswitch_data_534
    .packed-switch 0x1
        :pswitch_4e3
        :pswitch_4e9
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Lcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V
    .registers 8

    .prologue
    .line 1699
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :try_start_5
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->a:Ljava/util/Queue;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_15

    :cond_11
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->a:Ljava/util/Queue;

    if-nez v0, :cond_1a

    .line 1703
    :cond_15
    const/4 v0, 0x0

    invoke-static {v0, p4, p1}, Lcom/mintegral/msdk/mtgnative/c/c;->a(ZLcom/mintegral/msdk/b/a/a;Ljava/lang/String;)V

    .line 1713
    :cond_19
    :goto_19
    return-void

    .line 1706
    :cond_1a
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/mintegral/msdk/mtgnative/c/c;->a(ILjava/lang/String;Lcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_1e

    goto :goto_19

    .line 1708
    :catch_1e
    move-exception v0

    .line 1709
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_19

    .line 1710
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public final a(Ljava/util/Map;ILcom/mintegral/msdk/out/AdMobClickListener;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/mintegral/msdk/out/AdMobClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    :try_start_0
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c;->u:Ljava/util/Map;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->A:Z

    .line 175
    const-string v0, "unit_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 176
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    const-string v1, "preload error,make sure you have unitid"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_14
    :goto_14
    return-void

    .line 179
    :cond_15
    const-string v0, "unit_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 180
    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v0, v0, 0x2

    .line 181
    sget-object v1, Lcom/mintegral/msdk/mtgnative/c/c;->e:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->e:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 182
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    const-string v1, "An id can have only one AD form"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_67

    goto :goto_14

    .line 373
    :catch_67
    move-exception v0

    .line 374
    sget-object v1, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 185
    :cond_72
    :try_start_72
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 186
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    const-string v1, "preload error,make sure you have correct unitid"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 189
    :cond_80
    const-string v0, "isPreloadImg"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 190
    const-string v0, "isPreloadImg"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->x:Z

    .line 192
    :cond_96
    const-string v0, "cancel_admob_audo_download_image"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 193
    const-string v0, "cancel_admob_audo_download_image"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_b6

    .line 194
    const-string v0, "cancel_admob_audo_download_image"

    .line 195
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 194
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->r:Z

    .line 198
    :cond_b6
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->l:Lcom/mintegral/msdk/click/a;

    if-nez v0, :cond_272

    .line 199
    new-instance v0, Lcom/mintegral/msdk/click/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/mintegral/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->l:Lcom/mintegral/msdk/click/a;

    .line 203
    :goto_c9
    const-string v0, "ad_frame_num"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 204
    const-string v0, "ad_frame_num"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->p:I

    .line 206
    :cond_df
    const-string v0, "catetory"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 207
    const-string v0, "catetory"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->n:Ljava/lang/String;

    .line 209
    :cond_f1
    const-string v0, "MediaCacheFlag"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 210
    const-string v0, "MediaCacheFlag"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->q:Z

    .line 214
    :cond_107
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->f:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_182

    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->f:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_182

    .line 2982
    sget-object v2, Lcom/mintegral/msdk/mtgnative/c/c;->e:Ljava/util/Map;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 217
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v1

    .line 219
    if-eqz v0, :cond_182

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_182

    .line 220
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 223
    if-nez v1, :cond_16e

    .line 224
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v1

    .line 226
    :cond_16e
    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->aF()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 228
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v6, v0

    cmp-long v0, v0, v8

    if-ltz v0, :cond_279

    .line 229
    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_182
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->f:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->C:I
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_18f} :catch_67

    .line 241
    :try_start_18f
    const-string v0, "ad_num"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 242
    const-string v0, "ad_num"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->C:I

    .line 243
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->C:I

    if-gtz v0, :cond_1ac

    .line 244
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->C:I

    .line 246
    :cond_1ac
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->C:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1b6

    .line 247
    const/16 v0, 0xa

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->C:I
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_1b6} :catch_27e

    .line 253
    :cond_1b6
    :goto_1b6
    :try_start_1b6
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->h:Ljava/util/Map;

    iget v1, p0, Lcom/mintegral/msdk/mtgnative/c/c;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const/4 v7, 0x0

    .line 256
    const-string v0, "preload_result_listener"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d9

    .line 257
    const-string v0, "preload_result_listener"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_1d9

    .line 259
    check-cast v0, Lcom/mintegral/msdk/out/PreloadListener;

    .line 260
    new-instance v7, Lcom/mintegral/msdk/b/a/a;

    invoke-direct {v7, v0}, Lcom/mintegral/msdk/b/a/a;-><init>(Lcom/mintegral/msdk/out/PreloadListener;)V

    .line 264
    :cond_1d9
    const/4 v0, 0x0

    .line 265
    const/4 v1, 0x0

    .line 266
    const-string v2, "app_id"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_203

    const-string v2, "app_key"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_203

    const-string v2, "key_word"

    .line 267
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_203

    .line 268
    const-string v0, "app_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    const-string v1, "app_key"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3975
    :cond_203
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c;->k:Lcom/mintegral/msdk/c/c;

    if-nez v2, :cond_20e

    .line 3976
    new-instance v2, Lcom/mintegral/msdk/c/c;

    invoke-direct {v2}, Lcom/mintegral/msdk/c/c;-><init>()V

    iput-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c;->k:Lcom/mintegral/msdk/c/c;

    .line 3978
    :cond_20e
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c;->k:Lcom/mintegral/msdk/c/c;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1, v5}, Lcom/mintegral/msdk/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {v0, v5}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->m:Lcom/mintegral/msdk/c/d;

    .line 274
    const/4 v9, 0x1

    .line 275
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->m:Lcom/mintegral/msdk/c/d;

    if-nez v0, :cond_22f

    .line 276
    invoke-static {v5}, Lcom/mintegral/msdk/c/d;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->m:Lcom/mintegral/msdk/c/d;

    .line 279
    :cond_22f
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->m:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->w()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->v:Ljava/util/List;

    .line 280
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->m:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->x()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->c:Ljava/util/List;

    .line 281
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->m:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->x()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->w:Ljava/util/List;

    .line 282
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->v:Ljava/util/List;

    if-eqz v0, :cond_288

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_288

    .line 283
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->a:Ljava/util/Queue;

    .line 284
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_260
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_291

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 285
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c;->a:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_260

    .line 201
    :cond_272
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->l:Lcom/mintegral/msdk/click/a;

    invoke-virtual {v0, v5}, Lcom/mintegral/msdk/click/a;->a(Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 230
    :cond_279
    const/4 v0, 0x1

    if-ne p2, v0, :cond_182

    goto/16 :goto_14

    .line 251
    :catch_27e
    move-exception v0

    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    const-string v1, "ADNUM MUST BE INTEGER"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b6

    .line 288
    :cond_288
    if-eqz v7, :cond_14

    .line 289
    const-string v0, "don\'t have sorceList"

    invoke-virtual {v7, v0}, Lcom/mintegral/msdk/b/a/a;->onPreloadFaild(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 293
    :cond_291
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->w:Ljava/util/List;

    if-eqz v0, :cond_2c7

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2c7

    .line 294
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->b:Ljava/util/Queue;

    .line 295
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 296
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c;->b:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v10, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2aa

    .line 300
    :cond_2c7
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->v:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2d1
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_2d1} :catch_67

    move-result v0

    if-eqz v0, :cond_313

    if-nez p2, :cond_313

    .line 303
    :try_start_2d6
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/c;->v:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    .line 304
    const/4 v1, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v4, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/mintegral/msdk/mtgnative/c/c;->a(IJILjava/lang/String;ZLcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V

    .line 306
    const/4 v0, 0x1

    .line 307
    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_313

    .line 309
    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lcom/mintegral/msdk/mtgnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 310
    if-eqz v0, :cond_313

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_313

    .line 311
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, Lcom/mintegral/msdk/mtgnative/c/c;->a(ZLcom/mintegral/msdk/b/a/a;Ljava/lang/String;)V
    :try_end_313
    .catch Ljava/lang/Exception; {:try_start_2d6 .. :try_end_313} :catch_46d

    .line 318
    :cond_313
    :goto_313
    :try_start_313
    invoke-direct {p0, p2, v5, v7, p3}, Lcom/mintegral/msdk/mtgnative/c/c;->a(ILjava/lang/String;Lcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->m:Lcom/mintegral/msdk/c/d;

    if-eqz v0, :cond_473

    .line 321
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->m:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->A()I

    move-result v0

    iget v1, p0, Lcom/mintegral/msdk/mtgnative/c/c;->C:I

    mul-int/2addr v0, v1

    .line 4014
    :goto_323
    sget-object v1, Lcom/mintegral/msdk/mtgnative/c/c;->i:Ljava/util/Map;

    .line 323
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32c
    .catch Ljava/lang/Exception; {:try_start_313 .. :try_end_32c} :catch_67

    .line 325
    :try_start_32c
    const-string v0, "com.mintegral.msdk.nativex.view.MTGMediaView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 326
    const-string v0, "com.mintegral.msdk.videocommon.download.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 328
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/mintegral/msdk/mtgnative/c/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/mintegral/msdk/base/utils/e;->b()V

    .line 333
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 335
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/f;->c()V

    .line 338
    const/4 v0, 0x0

    .line 339
    const-string v1, "native_info"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36e

    .line 340
    const-string v0, "native_info"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 342
    :cond_36e
    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->a(Ljava/lang/String;)I

    move-result v0

    .line 344
    if-gtz v0, :cond_3e2

    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/c;->C:I

    move v1, v0

    .line 4402
    :goto_377
    const/4 v0, 0x0

    .line 4403
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    const-string v2, ""

    invoke-static {v2, v5}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v2

    iput-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c;->m:Lcom/mintegral/msdk/c/d;

    .line 4404
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c;->m:Lcom/mintegral/msdk/c/d;

    if-nez v2, :cond_38d

    .line 4405
    invoke-static {v5}, Lcom/mintegral/msdk/c/d;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v2

    iput-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c;->m:Lcom/mintegral/msdk/c/d;

    .line 4407
    :cond_38d
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c;->m:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v2}, Lcom/mintegral/msdk/c/d;->w()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c;->v:Ljava/util/List;

    .line 4408
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c;->v:Ljava/util/List;

    if-eqz v2, :cond_470

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_470

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/c;->v:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_470

    .line 4409
    const/4 v2, 0x1

    .line 4410
    invoke-static {v2}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v2

    .line 4411
    if-eqz v2, :cond_470

    .line 4412
    invoke-virtual {v2, v5, v1}, Lcom/mintegral/msdk/mtgnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 346
    :goto_3bc
    if-eqz v2, :cond_14

    .line 347
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 349
    const/4 v0, 0x0

    move v1, v0

    :goto_3c5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3e4

    .line 350
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 351
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3de

    .line 352
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_3de
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3c5

    :cond_3e2
    move v1, v0

    .line 344
    goto :goto_377

    .line 356
    :cond_3e4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 357
    const-string v0, "com.mintegral.msdk.videocommon.download.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 358
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 359
    const/4 v2, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 360
    const-string v2, "com.mintegral.msdk.videocommon.listener.a"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 361
    const-string v4, "createUnitCache"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/util/List;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object v2, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 363
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v6, 0x2

    aput-object v3, v4, v6

    const/4 v3, 0x3

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    const/4 v3, 0x4

    const/4 v6, 0x0

    aput-object v6, v4, v3

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v2, "load"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 366
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_461
    .catch Ljava/lang/Throwable; {:try_start_32c .. :try_end_461} :catch_463
    .catch Ljava/lang/Exception; {:try_start_32c .. :try_end_461} :catch_67

    goto/16 :goto_14

    .line 371
    :catch_463
    move-exception v0

    :try_start_464
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/c;->d:Ljava/lang/String;

    const-string v1, "init cam cache failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46b
    .catch Ljava/lang/Exception; {:try_start_464 .. :try_end_46b} :catch_67

    goto/16 :goto_14

    :catch_46d
    move-exception v0

    goto/16 :goto_313

    :cond_470
    move-object v2, v0

    goto/16 :goto_3bc

    :cond_473
    move v0, v9

    goto/16 :goto_323
.end method
