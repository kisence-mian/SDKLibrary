.class public final Lcom/tapjoy/internal/fi;
.super Lcom/tapjoy/internal/ei;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/fi$b;,
        Lcom/tapjoy/internal/fi$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ei<",
        "Lcom/tapjoy/internal/fi;",
        "Lcom/tapjoy/internal/fi$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/tapjoy/internal/ek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/ek<",
            "Lcom/tapjoy/internal/fi;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/Long;

.field public static final e:Ljava/lang/Integer;

.field public static final f:Ljava/lang/Integer;

.field public static final g:Ljava/lang/Integer;

.field public static final h:Ljava/lang/Long;

.field public static final i:Ljava/lang/Long;

.field public static final j:Ljava/lang/Long;

.field public static final k:Ljava/lang/Integer;

.field public static final l:Ljava/lang/Double;

.field public static final m:Ljava/lang/Long;

.field public static final n:Ljava/lang/Double;

.field public static final o:Ljava/lang/Boolean;

.field public static final p:Ljava/lang/Integer;

.field public static final q:Ljava/lang/Integer;

.field public static final r:Ljava/lang/Boolean;


# instance fields
.field public final A:Ljava/lang/Long;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/Integer;

.field public final D:Ljava/lang/Double;

.field public final E:Ljava/lang/Long;

.field public final F:Ljava/lang/Double;

.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/Boolean;

.field public final I:Ljava/lang/String;

.field public final J:Ljava/lang/Integer;

.field public final K:Ljava/lang/Integer;

.field public final L:Ljava/lang/String;

.field public final M:Ljava/lang/String;

.field public final N:Ljava/lang/String;

.field public final O:Ljava/lang/String;

.field public final P:Ljava/lang/String;

.field public final Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final R:Ljava/lang/Boolean;

.field public final s:Ljava/lang/Long;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/Integer;

.field public final v:Ljava/lang/Integer;

.field public final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/ff;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Ljava/lang/Integer;

.field public final y:Ljava/lang/Long;

.field public final z:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 25
    new-instance v0, Lcom/tapjoy/internal/fi$b;

    invoke-direct {v0}, Lcom/tapjoy/internal/fi$b;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fi;->c:Lcom/tapjoy/internal/ek;

    .line 29
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fi;->d:Ljava/lang/Long;

    .line 33
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/internal/fi;->e:Ljava/lang/Integer;

    .line 35
    sput-object v1, Lcom/tapjoy/internal/fi;->f:Ljava/lang/Integer;

    .line 37
    sput-object v1, Lcom/tapjoy/internal/fi;->g:Ljava/lang/Integer;

    .line 39
    sput-object v0, Lcom/tapjoy/internal/fi;->h:Ljava/lang/Long;

    .line 41
    sput-object v0, Lcom/tapjoy/internal/fi;->i:Ljava/lang/Long;

    .line 43
    sput-object v0, Lcom/tapjoy/internal/fi;->j:Ljava/lang/Long;

    .line 47
    sput-object v1, Lcom/tapjoy/internal/fi;->k:Ljava/lang/Integer;

    .line 49
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/internal/fi;->l:Ljava/lang/Double;

    .line 51
    sput-object v0, Lcom/tapjoy/internal/fi;->m:Ljava/lang/Long;

    .line 53
    sput-object v2, Lcom/tapjoy/internal/fi;->n:Ljava/lang/Double;

    .line 57
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/tapjoy/internal/fi;->o:Ljava/lang/Boolean;

    .line 61
    sput-object v1, Lcom/tapjoy/internal/fi;->p:Ljava/lang/Integer;

    .line 63
    sput-object v1, Lcom/tapjoy/internal/fi;->q:Ljava/lang/Integer;

    .line 75
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/tapjoy/internal/fi;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lcom/tapjoy/internal/iw;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/tapjoy/internal/ff;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            "Ljava/lang/Long;",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lcom/tapjoy/internal/iw;",
            ")V"
        }
    .end annotation

    .line 240
    move-object v0, p0

    sget-object v1, Lcom/tapjoy/internal/fi;->c:Lcom/tapjoy/internal/ek;

    move-object/from16 v2, p27

    invoke-direct {p0, v1, v2}, Lcom/tapjoy/internal/ei;-><init>(Lcom/tapjoy/internal/ek;Lcom/tapjoy/internal/iw;)V

    .line 241
    move-object v1, p1

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->s:Ljava/lang/Long;

    .line 242
    move-object v1, p2

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->t:Ljava/lang/String;

    .line 243
    move-object v1, p3

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->u:Ljava/lang/Integer;

    .line 244
    move-object v1, p4

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->v:Ljava/lang/Integer;

    .line 245
    const-string v1, "pushes"

    move-object v2, p5

    invoke-static {v1, p5}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->w:Ljava/util/List;

    .line 246
    move-object v1, p6

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->x:Ljava/lang/Integer;

    .line 247
    move-object v1, p7

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->y:Ljava/lang/Long;

    .line 248
    move-object v1, p8

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->z:Ljava/lang/Long;

    .line 249
    move-object v1, p9

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->A:Ljava/lang/Long;

    .line 250
    move-object v1, p10

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->B:Ljava/lang/String;

    .line 251
    move-object v1, p11

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->C:Ljava/lang/Integer;

    .line 252
    move-object v1, p12

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->D:Ljava/lang/Double;

    .line 253
    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->E:Ljava/lang/Long;

    .line 254
    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->F:Ljava/lang/Double;

    .line 255
    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->G:Ljava/lang/String;

    .line 256
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->H:Ljava/lang/Boolean;

    .line 257
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->I:Ljava/lang/String;

    .line 258
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->J:Ljava/lang/Integer;

    .line 259
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->K:Ljava/lang/Integer;

    .line 260
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->L:Ljava/lang/String;

    .line 261
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->M:Ljava/lang/String;

    .line 262
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->N:Ljava/lang/String;

    .line 263
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->O:Ljava/lang/String;

    .line 264
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->P:Ljava/lang/String;

    .line 265
    const-string v1, "tags"

    move-object/from16 v2, p25

    invoke-static {v1, v2}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->Q:Ljava/util/List;

    .line 266
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/tapjoy/internal/fi;->R:Ljava/lang/Boolean;

    .line 267
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 304
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 305
    :cond_4
    instance-of v1, p1, Lcom/tapjoy/internal/fi;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 306
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/tapjoy/internal/fi;

    .line 307
    invoke-virtual {p0}, Lcom/tapjoy/internal/fi;->a()Lcom/tapjoy/internal/iw;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tapjoy/internal/fi;->a()Lcom/tapjoy/internal/iw;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tapjoy/internal/iw;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->s:Ljava/lang/Long;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->s:Ljava/lang/Long;

    .line 308
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->t:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->t:Ljava/lang/String;

    .line 309
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->u:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->u:Ljava/lang/Integer;

    .line 310
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->v:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->v:Ljava/lang/Integer;

    .line 311
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->w:Ljava/util/List;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->w:Ljava/util/List;

    .line 312
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->x:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->x:Ljava/lang/Integer;

    .line 313
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->y:Ljava/lang/Long;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->y:Ljava/lang/Long;

    .line 314
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->z:Ljava/lang/Long;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->z:Ljava/lang/Long;

    .line 315
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->A:Ljava/lang/Long;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->A:Ljava/lang/Long;

    .line 316
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->B:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->B:Ljava/lang/String;

    .line 317
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->C:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->C:Ljava/lang/Integer;

    .line 318
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->D:Ljava/lang/Double;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->D:Ljava/lang/Double;

    .line 319
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->E:Ljava/lang/Long;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->E:Ljava/lang/Long;

    .line 320
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->F:Ljava/lang/Double;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->F:Ljava/lang/Double;

    .line 321
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->G:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->G:Ljava/lang/String;

    .line 322
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->H:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->H:Ljava/lang/Boolean;

    .line 323
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->I:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->I:Ljava/lang/String;

    .line 324
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->J:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->J:Ljava/lang/Integer;

    .line 325
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->K:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->K:Ljava/lang/Integer;

    .line 326
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->L:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->L:Ljava/lang/String;

    .line 327
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->M:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->M:Ljava/lang/String;

    .line 328
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->N:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->N:Ljava/lang/String;

    .line 329
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->O:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->O:Ljava/lang/String;

    .line 330
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->P:Ljava/lang/String;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->P:Ljava/lang/String;

    .line 331
    invoke-static {v3, v4}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->Q:Ljava/util/List;

    iget-object v4, v1, Lcom/tapjoy/internal/fi;->Q:Ljava/util/List;

    .line 332
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/tapjoy/internal/fi;->R:Ljava/lang/Boolean;

    iget-object v1, v1, Lcom/tapjoy/internal/fi;->R:Ljava/lang/Boolean;

    .line 333
    invoke-static {v3, v1}, Lcom/tapjoy/internal/ep;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_120

    return v0

    :cond_120
    nop

    .line 307
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 338
    iget v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 339
    if-nez v0, :cond_157

    .line 340
    invoke-virtual {p0}, Lcom/tapjoy/internal/fi;->a()Lcom/tapjoy/internal/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/iw;->hashCode()I

    move-result v0

    .line 341
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->s:Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    add-int/2addr v0, v1

    .line 342
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->t:Ljava/lang/String;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    add-int/2addr v0, v1

    .line 343
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->u:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    add-int/2addr v0, v1

    .line 344
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->v:Ljava/lang/Integer;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    add-int/2addr v0, v1

    .line 345
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 346
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->x:Ljava/lang/Integer;

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    :goto_56
    add-int/2addr v0, v1

    .line 347
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->y:Ljava/lang/Long;

    if-eqz v1, :cond_62

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_63

    :cond_62
    const/4 v1, 0x0

    :goto_63
    add-int/2addr v0, v1

    .line 348
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->z:Ljava/lang/Long;

    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_70

    :cond_6f
    const/4 v1, 0x0

    :goto_70
    add-int/2addr v0, v1

    .line 349
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->A:Ljava/lang/Long;

    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_7d

    :cond_7c
    const/4 v1, 0x0

    :goto_7d
    add-int/2addr v0, v1

    .line 350
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->B:Ljava/lang/String;

    if-eqz v1, :cond_89

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8a

    :cond_89
    const/4 v1, 0x0

    :goto_8a
    add-int/2addr v0, v1

    .line 351
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->C:Ljava/lang/Integer;

    if-eqz v1, :cond_96

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_97

    :cond_96
    const/4 v1, 0x0

    :goto_97
    add-int/2addr v0, v1

    .line 352
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->D:Ljava/lang/Double;

    if-eqz v1, :cond_a3

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_a4

    :cond_a3
    const/4 v1, 0x0

    :goto_a4
    add-int/2addr v0, v1

    .line 353
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->E:Ljava/lang/Long;

    if-eqz v1, :cond_b0

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_b1

    :cond_b0
    const/4 v1, 0x0

    :goto_b1
    add-int/2addr v0, v1

    .line 354
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->F:Ljava/lang/Double;

    if-eqz v1, :cond_bd

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_be

    :cond_bd
    const/4 v1, 0x0

    :goto_be
    add-int/2addr v0, v1

    .line 355
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->G:Ljava/lang/String;

    if-eqz v1, :cond_ca

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_cb

    :cond_ca
    const/4 v1, 0x0

    :goto_cb
    add-int/2addr v0, v1

    .line 356
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->H:Ljava/lang/Boolean;

    if-eqz v1, :cond_d7

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_d8

    :cond_d7
    const/4 v1, 0x0

    :goto_d8
    add-int/2addr v0, v1

    .line 357
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->I:Ljava/lang/String;

    if-eqz v1, :cond_e4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e5

    :cond_e4
    const/4 v1, 0x0

    :goto_e5
    add-int/2addr v0, v1

    .line 358
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->J:Ljava/lang/Integer;

    if-eqz v1, :cond_f1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_f2

    :cond_f1
    const/4 v1, 0x0

    :goto_f2
    add-int/2addr v0, v1

    .line 359
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->K:Ljava/lang/Integer;

    if-eqz v1, :cond_fe

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_ff

    :cond_fe
    const/4 v1, 0x0

    :goto_ff
    add-int/2addr v0, v1

    .line 360
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->L:Ljava/lang/String;

    if-eqz v1, :cond_10b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_10c

    :cond_10b
    const/4 v1, 0x0

    :goto_10c
    add-int/2addr v0, v1

    .line 361
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->M:Ljava/lang/String;

    if-eqz v1, :cond_118

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_119

    :cond_118
    const/4 v1, 0x0

    :goto_119
    add-int/2addr v0, v1

    .line 362
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->N:Ljava/lang/String;

    if-eqz v1, :cond_125

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_126

    :cond_125
    const/4 v1, 0x0

    :goto_126
    add-int/2addr v0, v1

    .line 363
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->O:Ljava/lang/String;

    if-eqz v1, :cond_132

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_133

    :cond_132
    const/4 v1, 0x0

    :goto_133
    add-int/2addr v0, v1

    .line 364
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->P:Ljava/lang/String;

    if-eqz v1, :cond_13f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_140

    :cond_13f
    const/4 v1, 0x0

    :goto_140
    add-int/2addr v0, v1

    .line 365
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->Q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->R:Ljava/lang/Boolean;

    if-eqz v1, :cond_154

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :cond_154
    add-int/2addr v0, v2

    .line 367
    iput v0, p0, Lcom/tapjoy/internal/ei;->b:I

    .line 369
    :cond_157
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->s:Ljava/lang/Long;

    if-eqz v1, :cond_14

    const-string v1, ", installed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->s:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 376
    :cond_14
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->t:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_23
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->u:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    const-string v1, ", fq7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->u:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    :cond_32
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->v:Ljava/lang/Integer;

    if-eqz v1, :cond_41

    const-string v1, ", fq30="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->v:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    :cond_41
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    const-string v1, ", pushes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->w:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    :cond_54
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->x:Ljava/lang/Integer;

    if-eqz v1, :cond_63

    const-string v1, ", sessionTotalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->x:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 381
    :cond_63
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->y:Ljava/lang/Long;

    if-eqz v1, :cond_72

    const-string v1, ", sessionTotalDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->y:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    :cond_72
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->z:Ljava/lang/Long;

    if-eqz v1, :cond_81

    const-string v1, ", sessionLastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->z:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    :cond_81
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->A:Ljava/lang/Long;

    if-eqz v1, :cond_90

    const-string v1, ", sessionLastDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->A:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    :cond_90
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->B:Ljava/lang/String;

    if-eqz v1, :cond_9f

    const-string v1, ", purchaseCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_9f
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->C:Ljava/lang/Integer;

    if-eqz v1, :cond_ae

    const-string v1, ", purchaseTotalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->C:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    :cond_ae
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->D:Ljava/lang/Double;

    if-eqz v1, :cond_bd

    const-string v1, ", purchaseTotalPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->D:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    :cond_bd
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->E:Ljava/lang/Long;

    if-eqz v1, :cond_cc

    const-string v1, ", purchaseLastTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->E:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    :cond_cc
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->F:Ljava/lang/Double;

    if-eqz v1, :cond_db

    const-string v1, ", purchaseLastPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->F:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    :cond_db
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->G:Ljava/lang/String;

    if-eqz v1, :cond_ea

    const-string v1, ", idfa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_ea
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->H:Ljava/lang/Boolean;

    if-eqz v1, :cond_f9

    const-string v1, ", idfaOptout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->H:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    :cond_f9
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->I:Ljava/lang/String;

    if-eqz v1, :cond_108

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_108
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->J:Ljava/lang/Integer;

    if-eqz v1, :cond_117

    const-string v1, ", userLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->J:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    :cond_117
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->K:Ljava/lang/Integer;

    if-eqz v1, :cond_126

    const-string v1, ", friendCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->K:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    :cond_126
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->L:Ljava/lang/String;

    if-eqz v1, :cond_135

    const-string v1, ", uv1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_135
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->M:Ljava/lang/String;

    if-eqz v1, :cond_144

    const-string v1, ", uv2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_144
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->N:Ljava/lang/String;

    if-eqz v1, :cond_153

    const-string v1, ", uv3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_153
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->O:Ljava/lang/String;

    if-eqz v1, :cond_162

    const-string v1, ", uv4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->O:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_162
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->P:Ljava/lang/String;

    if-eqz v1, :cond_171

    const-string v1, ", uv5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_171
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->Q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_184

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->Q:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    :cond_184
    iget-object v1, p0, Lcom/tapjoy/internal/fi;->R:Ljava/lang/Boolean;

    if-eqz v1, :cond_193

    const-string v1, ", pushOptout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->R:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 401
    :cond_193
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "User{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
