.class public final Lcom/bytedance/sdk/openadsdk/preload/a/f;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/a/f$a;
    }
.end annotation


# static fields
.field private static final r:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/w;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

.field final c:Lcom/bytedance/sdk/openadsdk/preload/a/e;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field final e:Z

.field final f:Z

.field final g:Z

.field final h:Z

.field final i:Z

.field final j:Z

.field final k:Z

.field final l:Ljava/lang/String;

.field final m:I

.field final n:I

.field final o:Lcom/bytedance/sdk/openadsdk/preload/a/u;

.field final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/w;",
            ">;"
        }
    .end annotation
.end field

.field final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/w;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "*>;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f$a<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "*>;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final u:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

.field private final v:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 116
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->r:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 19

    move-object/from16 v0, p0

    .line 188
    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/preload/a/d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/d;

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Lcom/bytedance/sdk/openadsdk/preload/a/u;->a:Lcom/bytedance/sdk/openadsdk/preload/a/u;

    .line 193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 188
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-direct/range {v0 .. v17}, Lcom/bytedance/sdk/openadsdk/preload/a/f;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/d;Lcom/bytedance/sdk/openadsdk/preload/a/e;Ljava/util/Map;ZZZZZZZLcom/bytedance/sdk/openadsdk/preload/a/u;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 195
    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/d;Lcom/bytedance/sdk/openadsdk/preload/a/e;Ljava/util/Map;ZZZZZZZLcom/bytedance/sdk/openadsdk/preload/a/u;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/d;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/e;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/h<",
            "*>;>;ZZZZZZZ",
            "Lcom/bytedance/sdk/openadsdk/preload/a/u;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/w;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/w;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/a/w;",
            ">;)V"
        }
    .end annotation

    .line 204
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p5

    move/from16 v5, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v6, Ljava/lang/ThreadLocal;

    invoke-direct {v6}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v6, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->s:Ljava/lang/ThreadLocal;

    .line 129
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->t:Ljava/util/Map;

    .line 205
    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

    .line 206
    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->c:Lcom/bytedance/sdk/openadsdk/preload/a/e;

    .line 207
    iput-object v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->d:Ljava/util/Map;

    .line 208
    new-instance v6, Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

    invoke-direct {v6, p3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/c;-><init>(Ljava/util/Map;)V

    iput-object v6, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->u:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

    .line 209
    move v3, p4

    iput-boolean v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->e:Z

    .line 210
    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->f:Z

    .line 211
    move/from16 v3, p6

    iput-boolean v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->g:Z

    .line 212
    move/from16 v3, p7

    iput-boolean v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->h:Z

    .line 213
    move/from16 v3, p8

    iput-boolean v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->i:Z

    .line 214
    move/from16 v3, p9

    iput-boolean v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->j:Z

    .line 215
    iput-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->k:Z

    .line 216
    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->o:Lcom/bytedance/sdk/openadsdk/preload/a/u;

    .line 217
    move-object/from16 v7, p12

    iput-object v7, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->l:Ljava/lang/String;

    .line 218
    move/from16 v7, p13

    iput v7, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->m:I

    .line 219
    move/from16 v7, p14

    iput v7, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->n:I

    .line 220
    move-object/from16 v7, p15

    iput-object v7, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->p:Ljava/util/List;

    .line 221
    move-object/from16 v7, p16

    iput-object v7, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->q:Ljava/util/List;

    .line 223
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 226
    sget-object v8, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->Y:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v8, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/h;->a:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    move-object/from16 v8, p17

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 236
    sget-object v8, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->D:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v8, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->m:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v8, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->g:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v8, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->i:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v8, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->k:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static/range {p11 .. p11}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/u;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v3

    .line 242
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Long;

    invoke-static {v8, v9, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/w;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Double;

    .line 244
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Z)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v10

    .line 243
    invoke-static {v8, v9, v10}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/w;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Float;

    .line 246
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->b(Z)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v5

    .line 245
    invoke-static {v8, v9, v5}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/w;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v5, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->x:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v5, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->o:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v5, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->q:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->a(Ljava/lang/Class;Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/w;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    const-class v5, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->b(Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->a(Ljava/lang/Class;Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/w;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->s:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->z:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->F:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->H:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    const-class v3, Ljava/math/BigDecimal;

    sget-object v5, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->B:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->a(Ljava/lang/Class;Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/w;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    const-class v3, Ljava/math/BigInteger;

    sget-object v5, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->C:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->a(Ljava/lang/Class;Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/w;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->J:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->L:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->P:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->R:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->W:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->N:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->d:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/c;->a:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->U:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/k;->a:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/j;->a:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->S:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->b:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/b;

    invoke-direct {v3, v6}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/b;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/c;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g;

    invoke-direct {v3, v6, v4}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/g;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/c;Z)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;

    invoke-direct {v3, v6}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/c;)V

    iput-object v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->v:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;

    .line 277
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v4, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->Z:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v4, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;

    invoke-direct {v4, v6, p2, p1, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/c;Lcom/bytedance/sdk/openadsdk/preload/a/e;Lcom/bytedance/sdk/openadsdk/preload/a/b/d;Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a:Ljava/util/List;

    .line 283
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/preload/a/u;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/u;",
            ")",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 368
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/u;->a:Lcom/bytedance/sdk/openadsdk/preload/a/u;

    if-ne p0, v0, :cond_7

    .line 369
    sget-object p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->t:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    return-object p0

    .line 371
    :cond_7
    new-instance p0, Lcom/bytedance/sdk/openadsdk/preload/a/f$3;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/f$3;-><init>()V

    return-object p0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/f$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/f$4;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/v;)V

    .line 398
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/f$4;->a()Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object p0

    .line 390
    return-object p0
.end method

.method private a(Z)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 312
    if-eqz p1, :cond_5

    .line 313
    sget-object p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->v:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    return-object p1

    .line 315
    :cond_5
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/f$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/f;)V

    return-object p1
.end method

.method static a(D)V
    .registers 4

    .line 360
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_d

    .line 365
    return-void

    .line 361
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)V
    .registers 2

    .line 906
    if-eqz p0, :cond_21

    :try_start_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object p0

    sget-object p1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->j:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne p0, p1, :cond_b

    goto :goto_21

    .line 907
    :cond_b
    new-instance p0, Lcom/bytedance/sdk/openadsdk/preload/a/m;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/m;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_13
    .catch Lcom/bytedance/sdk/openadsdk/preload/a/d/d; {:try_start_2 .. :try_end_13} :catch_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_13

    .line 911
    :catch_13
    move-exception p0

    .line 912
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/m;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/m;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 909
    :catch_1a
    move-exception p0

    .line 910
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 913
    :cond_21
    :goto_21
    nop

    .line 914
    return-void
.end method

.method private static b(Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .line 402
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/f$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/f$5;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/v;)V

    .line 425
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/f$5;->a()Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object p0

    .line 402
    return-object p0
.end method

.method private b(Z)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 336
    if-eqz p1, :cond_5

    .line 337
    sget-object p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->u:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    return-object p1

    .line 339
    :cond_5
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/f$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/f$2;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/f;)V

    return-object p1
.end method


# virtual methods
.method public a(Ljava/io/Reader;)Lcom/bytedance/sdk/openadsdk/preload/a/d/a;
    .registers 3

    .line 769
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;-><init>(Ljava/io/Reader;)V

    .line 770
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->j:Z

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a(Z)V

    .line 771
    return-object v0
.end method

.method public a(Ljava/io/Writer;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 754
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->g:Z

    if-eqz v0, :cond_9

    .line 755
    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 757
    :cond_9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;-><init>(Ljava/io/Writer;)V

    .line 758
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->i:Z

    if-eqz p1, :cond_17

    .line 759
    const-string p1, "  "

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c(Ljava/lang/String;)V

    .line 761
    :cond_17
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->e:Z

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d(Z)V

    .line 762
    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->t:Ljava/util/Map;

    if-nez p1, :cond_7

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/f;->r:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    goto :goto_8

    :cond_7
    move-object v1, p1

    :goto_8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/v;

    .line 437
    if-eqz v0, :cond_11

    .line 438
    return-object v0

    .line 441
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 442
    const/4 v1, 0x0

    .line 443
    if-nez v0, :cond_27

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 446
    const/4 v1, 0x1

    .line 450
    :cond_27
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/preload/a/f$a;

    .line 451
    if-eqz v2, :cond_30

    .line 452
    return-object v2

    .line 456
    :cond_30
    :try_start_30
    new-instance v2, Lcom/bytedance/sdk/openadsdk/preload/a/f$a;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/preload/a/f$a;-><init>()V

    .line 457
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/preload/a/w;

    .line 460
    invoke-interface {v4, p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/w;->a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v4

    .line 461
    if-eqz v4, :cond_64

    .line 462
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/preload/a/f$a;->a(Lcom/bytedance/sdk/openadsdk/preload/a/v;)V

    .line 463
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->t:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_30 .. :try_end_58} :catchall_7e

    .line 464
    nop

    .line 469
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    if-eqz v1, :cond_63

    .line 472
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 464
    :cond_63
    return-object v4

    .line 466
    :cond_64
    goto :goto_3e

    .line 467
    :cond_65
    :try_start_65
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON (pangle-v3200) cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7e
    .catchall {:try_start_65 .. :try_end_7e} :catchall_7e

    .line 469
    :catchall_7e
    move-exception v2

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    if-eqz v1, :cond_89

    .line 472
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 474
    :cond_89
    throw v2
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/w;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/w;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 531
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->v:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;

    .line 534
    :cond_a
    const/4 v0, 0x0

    .line 535
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/preload/a/w;

    .line 536
    if-nez v0, :cond_23

    .line 537
    if-ne v2, p1, :cond_11

    .line 538
    const/4 v0, 0x1

    goto :goto_11

    .line 543
    :cond_23
    invoke-interface {v2, p0, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/w;->a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v2

    .line 544
    if-eqz v2, :cond_2a

    .line 545
    return-object v2

    .line 547
    :cond_2a
    goto :goto_11

    .line 548
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation

    .line 558
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/preload/a/m;,
            Lcom/bytedance/sdk/openadsdk/preload/a/t;
        }
    .end annotation

    .line 926
    nop

    .line 927
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->q()Z

    move-result v0

    .line 928
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a(Z)V

    .line 930
    :try_start_9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    .line 931
    const/4 v1, 0x0

    .line 932
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    move-result-object p2

    .line 933
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object p2

    .line 934
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p2
    :try_end_19
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_19} :catch_4f
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_19} :catch_48
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_19} :catch_41
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_19} :catch_20
    .catchall {:try_start_9 .. :try_end_19} :catchall_1e

    .line 935
    nop

    .line 955
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a(Z)V

    .line 935
    return-object p2

    .line 955
    :catchall_1e
    move-exception p2

    goto :goto_5d

    .line 950
    :catch_20
    move-exception p2

    .line 951
    :try_start_21
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON pangle-v3200): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 952
    invoke-virtual {v1, p2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 953
    throw v1

    .line 947
    :catch_41
    move-exception p2

    .line 949
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    invoke-direct {v1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 945
    :catch_48
    move-exception p2

    .line 946
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    invoke-direct {v1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4f
    .catchall {:try_start_21 .. :try_end_4f} :catchall_1e

    .line 936
    :catch_4f
    move-exception p2

    .line 941
    if-eqz v1, :cond_57

    .line 942
    const/4 p2, 0x0

    .line 955
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a(Z)V

    .line 942
    return-object p2

    .line 944
    :cond_57
    :try_start_57
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    invoke-direct {v1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_1e

    .line 955
    :goto_5d
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a(Z)V

    .line 956
    throw p2
.end method

.method public a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/preload/a/m;,
            Lcom/bytedance/sdk/openadsdk/preload/a/t;
        }
    .end annotation

    .line 898
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/io/Reader;)Lcom/bytedance/sdk/openadsdk/preload/a/d/a;

    move-result-object p1

    .line 899
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 900
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)V

    .line 901
    return-object p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/preload/a/t;
        }
    .end annotation

    .line 844
    if-nez p1, :cond_4

    .line 845
    const/4 p1, 0x0

    return-object p1

    .line 847
    :cond_4
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0, v0, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 849
    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)Ljava/lang/String;
    .registers 3

    .line 728
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 729
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;Ljava/lang/Appendable;)V

    .line 730
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 617
    if-nez p1, :cond_9

    .line 618
    sget-object p1, Lcom/bytedance/sdk/openadsdk/preload/a/n;->a:Lcom/bytedance/sdk/openadsdk/preload/a/n;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 620
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 4

    .line 639
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 640
    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 641
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/l;Lcom/bytedance/sdk/openadsdk/preload/a/d/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/preload/a/m;
        }
    .end annotation

    .line 779
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->g()Z

    move-result v0

    .line 780
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(Z)V

    .line 781
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->h()Z

    move-result v1

    .line 782
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->h:Z

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c(Z)V

    .line 783
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->i()Z

    move-result v2

    .line 784
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->e:Z

    invoke-virtual {p2, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d(Z)V

    .line 786
    :try_start_1a
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/l;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;Lcom/bytedance/sdk/openadsdk/preload/a/d/c;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_4b
    .catch Ljava/lang/AssertionError; {:try_start_1a .. :try_end_1d} :catch_2a
    .catchall {:try_start_1a .. :try_end_1d} :catchall_28

    .line 794
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(Z)V

    .line 795
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c(Z)V

    .line 796
    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d(Z)V

    .line 797
    nop

    .line 798
    return-void

    .line 794
    :catchall_28
    move-exception p1

    goto :goto_52

    .line 789
    :catch_2a
    move-exception p1

    .line 790
    :try_start_2b
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AssertionError (GSON pangle-v3200): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 791
    invoke-virtual {v3, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 792
    throw v3

    .line 787
    :catch_4b
    move-exception p1

    .line 788
    new-instance v3, Lcom/bytedance/sdk/openadsdk/preload/a/m;

    invoke-direct {v3, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/m;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_52
    .catchall {:try_start_2b .. :try_end_52} :catchall_28

    .line 794
    :goto_52
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(Z)V

    .line 795
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c(Z)V

    .line 796
    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d(Z)V

    .line 797
    throw p1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/l;Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/preload/a/m;
        }
    .end annotation

    .line 743
    :try_start_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/l;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/io/Writer;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    move-result-object p2

    .line 744
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;Lcom/bytedance/sdk/openadsdk/preload/a/d/c;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    .line 747
    nop

    .line 748
    return-void

    .line 745
    :catch_d
    move-exception p1

    .line 746
    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/a/m;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/m;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/bytedance/sdk/openadsdk/preload/a/d/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/preload/a/m;
        }
    .end annotation

    .line 698
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object p2

    .line 699
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->g()Z

    move-result v0

    .line 700
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(Z)V

    .line 701
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->h()Z

    move-result v1

    .line 702
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->h:Z

    invoke-virtual {p3, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c(Z)V

    .line 703
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->i()Z

    move-result v2

    .line 704
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->e:Z

    invoke-virtual {p3, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d(Z)V

    .line 706
    :try_start_22
    invoke-virtual {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_53
    .catch Ljava/lang/AssertionError; {:try_start_22 .. :try_end_25} :catch_32
    .catchall {:try_start_22 .. :try_end_25} :catchall_30

    .line 714
    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(Z)V

    .line 715
    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c(Z)V

    .line 716
    invoke-virtual {p3, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d(Z)V

    .line 717
    nop

    .line 718
    return-void

    .line 714
    :catchall_30
    move-exception p1

    goto :goto_5a

    .line 709
    :catch_32
    move-exception p1

    .line 710
    :try_start_33
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON pangle-v3200): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 711
    invoke-virtual {p2, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 712
    throw p2

    .line 707
    :catch_53
    move-exception p1

    .line 708
    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/a/m;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/m;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_5a
    .catchall {:try_start_33 .. :try_end_5a} :catchall_30

    .line 714
    :goto_5a
    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b(Z)V

    .line 715
    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c(Z)V

    .line 716
    invoke-virtual {p3, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->d(Z)V

    .line 717
    throw p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/preload/a/m;
        }
    .end annotation

    .line 684
    :try_start_0
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/l;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/io/Writer;)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    move-result-object p3

    .line 685
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/bytedance/sdk/openadsdk/preload/a/d/c;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    .line 688
    nop

    .line 689
    return-void

    .line 686
    :catch_d
    move-exception p1

    .line 687
    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/a/m;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/m;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->e:Z

    .line 1036
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1037
    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1038
    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/f;->u:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1039
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1040
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1035
    return-object v0
.end method
