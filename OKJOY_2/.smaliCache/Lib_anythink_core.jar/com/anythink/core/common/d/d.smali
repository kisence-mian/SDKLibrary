.class public final Lcom/anythink/core/common/d/d;
.super Lcom/anythink/core/common/d/aa;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2


# instance fields
.field protected A:I

.field protected B:I

.field protected C:I

.field D:Z

.field E:I

.field F:Ljava/lang/String;

.field G:J

.field H:J

.field I:Ljava/lang/String;

.field private aA:Ljava/lang/String;

.field private aB:Ljava/lang/String;

.field private aC:I

.field private aD:Ljava/lang/String;

.field private aE:Ljava/lang/String;

.field private aF:Ljava/lang/String;

.field private aG:Lcom/anythink/core/api/ATRewardInfo;

.field private aH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/ATRewardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private aI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private aJ:J

.field private aK:J

.field private aL:Ljava/lang/String;

.field private aM:J

.field private al:I

.field private am:I

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field private ap:I

.field private aq:I

.field private ar:Ljava/lang/String;

.field private as:I

.field private at:I

.field private au:I

.field private av:I

.field private aw:Z

.field private ax:J

.field private ay:J

.field private az:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field s:I

.field t:D

.field u:Ljava/lang/String;

.field public v:I

.field w:I

.field x:I

.field public y:Ljava/lang/String;

.field protected z:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/anythink/core/common/d/aa;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/common/d/d;->l:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/common/d/d;->m:I

    .line 57
    iput v0, p0, Lcom/anythink/core/common/d/d;->n:I

    .line 58
    iput v0, p0, Lcom/anythink/core/common/d/d;->o:I

    return-void
.end method

.method private I()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->u:Ljava/lang/String;

    return-object v0
.end method

.method private J()J
    .registers 3

    .line 119
    iget-wide v0, p0, Lcom/anythink/core/common/d/d;->aJ:J

    return-wide v0
.end method

.method private K()J
    .registers 3

    .line 127
    iget-wide v0, p0, Lcom/anythink/core/common/d/d;->aK:J

    return-wide v0
.end method

.method private L()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->y:Ljava/lang/String;

    return-object v0
.end method

.method private M()I
    .registers 2

    .line 249
    iget v0, p0, Lcom/anythink/core/common/d/d;->v:I

    return v0
.end method

.method private N()V
    .registers 2

    .line 253
    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/d/d;->v:I

    .line 254
    return-void
.end method

.method private O()Ljava/lang/String;
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->q:Ljava/lang/String;

    return-object v0
.end method

.method private P()Ljava/lang/String;
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->an:Ljava/lang/String;

    return-object v0
.end method

.method private Q()Ljava/lang/String;
    .registers 2

    .line 401
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method private R()I
    .registers 2

    .line 409
    iget v0, p0, Lcom/anythink/core/common/d/d;->m:I

    return v0
.end method

.method private S()I
    .registers 2

    .line 418
    iget v0, p0, Lcom/anythink/core/common/d/d;->n:I

    return v0
.end method

.method private T()I
    .registers 2

    .line 444
    iget v0, p0, Lcom/anythink/core/common/d/d;->p:I

    return v0
.end method

.method private U()Z
    .registers 2

    .line 457
    iget-boolean v0, p0, Lcom/anythink/core/common/d/d;->D:Z

    return v0
.end method

.method private V()I
    .registers 2

    .line 465
    iget v0, p0, Lcom/anythink/core/common/d/d;->E:I

    return v0
.end method

.method private W()Ljava/lang/String;
    .registers 2

    .line 473
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->F:Ljava/lang/String;

    return-object v0
.end method

.method private X()J
    .registers 3

    .line 487
    iget-wide v0, p0, Lcom/anythink/core/common/d/d;->G:J

    return-wide v0
.end method

.method private Y()J
    .registers 3

    .line 495
    iget-wide v0, p0, Lcom/anythink/core/common/d/d;->H:J

    return-wide v0
.end method

.method private Z()Ljava/lang/String;
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->I:Ljava/lang/String;

    return-object v0
.end method

.method private t(I)V
    .registers 2

    .line 405
    iput p1, p0, Lcom/anythink/core/common/d/d;->m:I

    .line 406
    return-void
.end method

.method private t(Ljava/lang/String;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->y:Ljava/lang/String;

    .line 230
    return-void
.end method

.method private u(I)V
    .registers 2

    .line 414
    iput p1, p0, Lcom/anythink/core/common/d/d;->n:I

    .line 415
    return-void
.end method

.method private u(Ljava/lang/String;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->q:Ljava/lang/String;

    .line 278
    return-void
.end method

.method private v(I)V
    .registers 2

    .line 423
    iput p1, p0, Lcom/anythink/core/common/d/d;->o:I

    .line 424
    return-void
.end method

.method private v(Ljava/lang/String;)V
    .registers 2

    .line 389
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->r:Ljava/lang/String;

    .line 390
    return-void
.end method

.method private w(I)V
    .registers 2

    .line 448
    iput p1, p0, Lcom/anythink/core/common/d/d;->p:I

    .line 449
    return-void
.end method


# virtual methods
.method public final A()J
    .registers 3

    .line 427
    iget-wide v0, p0, Lcom/anythink/core/common/d/d;->ax:J

    return-wide v0
.end method

.method public final B()J
    .registers 3

    .line 439
    iget-wide v0, p0, Lcom/anythink/core/common/d/d;->ay:J

    return-wide v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->aL:Ljava/lang/String;

    return-object v0
.end method

.method public final a(D)V
    .registers 3

    .line 269
    iput-wide p1, p0, Lcom/anythink/core/common/d/d;->t:D

    .line 270
    return-void
.end method

.method public final a(I)V
    .registers 2

    .line 135
    iput p1, p0, Lcom/anythink/core/common/d/d;->z:I

    .line 136
    return-void
.end method

.method public final a(J)V
    .registers 3

    .line 123
    iput-wide p1, p0, Lcom/anythink/core/common/d/d;->aJ:J

    .line 124
    return-void
.end method

.method public final a(Lcom/anythink/core/api/ATRewardInfo;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->aG:Lcom/anythink/core/api/ATRewardInfo;

    .line 214
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->aL:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/ATRewardInfo;",
            ">;)V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->aH:Ljava/util/Map;

    .line 206
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 293
    iput-boolean p1, p0, Lcom/anythink/core/common/d/d;->aw:Z

    .line 294
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->aA:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .registers 2

    .line 139
    iput p1, p0, Lcom/anythink/core/common/d/d;->A:I

    .line 140
    return-void
.end method

.method public final b(J)V
    .registers 3

    .line 131
    iput-wide p1, p0, Lcom/anythink/core/common/d/d;->aK:J

    .line 132
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->u:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public final b(Ljava/util/Map;)V
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

    .line 221
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->aI:Ljava/util/Map;

    .line 222
    return-void
.end method

.method public final b(Z)V
    .registers 2

    .line 461
    iput-boolean p1, p0, Lcom/anythink/core/common/d/d;->D:Z

    .line 462
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->aB:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .registers 2

    .line 143
    iput p1, p0, Lcom/anythink/core/common/d/d;->B:I

    .line 144
    return-void
.end method

.method public final c(J)V
    .registers 3

    .line 431
    iput-wide p1, p0, Lcom/anythink/core/common/d/d;->ax:J

    .line 432
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->aA:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public final d()I
    .registers 2

    .line 169
    iget v0, p0, Lcom/anythink/core/common/d/d;->aC:I

    return v0
.end method

.method public final d(I)V
    .registers 2

    .line 147
    iput p1, p0, Lcom/anythink/core/common/d/d;->C:I

    .line 148
    return-void
.end method

.method public final d(J)V
    .registers 3

    .line 435
    iput-wide p1, p0, Lcom/anythink/core/common/d/d;->ay:J

    .line 436
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->aB:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->aD:Ljava/lang/String;

    return-object v0
.end method

.method public final e(I)V
    .registers 2

    .line 173
    iput p1, p0, Lcom/anythink/core/common/d/d;->aC:I

    .line 174
    return-void
.end method

.method public final e(J)V
    .registers 3

    .line 491
    iput-wide p1, p0, Lcom/anythink/core/common/d/d;->G:J

    .line 492
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->aD:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->aE:Ljava/lang/String;

    return-object v0
.end method

.method public final f(I)V
    .registers 2

    .line 237
    iput p1, p0, Lcom/anythink/core/common/d/d;->w:I

    .line 238
    return-void
.end method

.method public final f(J)V
    .registers 3

    .line 499
    iput-wide p1, p0, Lcom/anythink/core/common/d/d;->H:J

    .line 500
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->aE:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->aF:Ljava/lang/String;

    return-object v0
.end method

.method public final g(I)V
    .registers 2

    .line 245
    iput p1, p0, Lcom/anythink/core/common/d/d;->x:I

    .line 246
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->aF:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public final h()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/ATRewardInfo;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->aH:Ljava/util/Map;

    return-object v0
.end method

.method public final h(I)V
    .registers 2

    .line 261
    iput p1, p0, Lcom/anythink/core/common/d/d;->s:I

    .line 262
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->az:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public final i()Lcom/anythink/core/api/ATRewardInfo;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->aG:Lcom/anythink/core/api/ATRewardInfo;

    return-object v0
.end method

.method public final i(I)V
    .registers 2

    .line 301
    iput p1, p0, Lcom/anythink/core/common/d/d;->au:I

    .line 302
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->ar:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public final j()Ljava/util/Map;
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

    .line 217
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->aI:Ljava/util/Map;

    return-object v0
.end method

.method public final j(I)V
    .registers 2

    .line 309
    iput p1, p0, Lcom/anythink/core/common/d/d;->av:I

    .line 310
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->ao:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public final k()I
    .registers 2

    .line 233
    iget v0, p0, Lcom/anythink/core/common/d/d;->w:I

    return v0
.end method

.method public final k(I)V
    .registers 2

    .line 317
    iput p1, p0, Lcom/anythink/core/common/d/d;->ap:I

    .line 318
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .registers 2

    .line 376
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->an:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public final l()I
    .registers 2

    .line 241
    iget v0, p0, Lcom/anythink/core/common/d/d;->x:I

    return v0
.end method

.method public final l(I)V
    .registers 2

    .line 325
    iput p1, p0, Lcom/anythink/core/common/d/d;->aq:I

    .line 326
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .registers 3

    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 396
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->l:Ljava/lang/String;

    .line 398
    :cond_8
    return-void
.end method

.method public final m()I
    .registers 2

    .line 257
    iget v0, p0, Lcom/anythink/core/common/d/d;->s:I

    return v0
.end method

.method public final m(I)V
    .registers 2

    .line 341
    iput p1, p0, Lcom/anythink/core/common/d/d;->as:I

    .line 342
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .registers 2

    .line 477
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->F:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public final n()D
    .registers 3

    .line 265
    iget-wide v0, p0, Lcom/anythink/core/common/d/d;->t:D

    return-wide v0
.end method

.method public final n(I)V
    .registers 2

    .line 349
    iput p1, p0, Lcom/anythink/core/common/d/d;->at:I

    .line 350
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .registers 2

    .line 507
    iput-object p1, p0, Lcom/anythink/core/common/d/d;->I:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public final o()Ljava/lang/String;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->az:Ljava/lang/String;

    return-object v0
.end method

.method public final o(I)V
    .registers 2

    .line 368
    iput p1, p0, Lcom/anythink/core/common/d/d;->am:I

    .line 369
    return-void
.end method

.method public final p(I)V
    .registers 2

    .line 385
    iput p1, p0, Lcom/anythink/core/common/d/d;->al:I

    .line 386
    return-void
.end method

.method public final p()Z
    .registers 2

    .line 289
    iget-boolean v0, p0, Lcom/anythink/core/common/d/d;->aw:Z

    return v0
.end method

.method public final q()I
    .registers 2

    .line 297
    iget v0, p0, Lcom/anythink/core/common/d/d;->au:I

    return v0
.end method

.method public final q(I)V
    .registers 2

    .line 469
    iput p1, p0, Lcom/anythink/core/common/d/d;->E:I

    .line 470
    return-void
.end method

.method public final r()I
    .registers 2

    .line 305
    iget v0, p0, Lcom/anythink/core/common/d/d;->av:I

    return v0
.end method

.method public final r(I)Lorg/json/JSONObject;
    .registers 22

    .line 515
    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Lcom/anythink/core/common/d/aa;->r(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 517
    :try_start_6
    const-string v0, "nw_ver"

    iget-object v3, v1, Lcom/anythink/core/common/d/d;->q:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string v0, "refresh"

    iget v3, v1, Lcom/anythink/core/common/d/d;->at:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_303

    .line 519
    const-string v0, "myoffer_showtype"

    const-string v3, "bidresponselist"

    const-string v4, "reason"

    const-string v5, "scenario"

    const-string v6, "[]"

    const-string v7, "phs"

    const-string v8, "pds"

    const-string v9, "ahs"

    const-string v10, "ads"

    const-string v11, "aprn_auto_req"

    const-string v12, "asid"

    const-string v13, "bid_id"

    const-string v14, "bidprice"

    const-string v15, "bidtype"

    move-object/from16 v16, v6

    const-string v6, "auto_req"

    move-object/from16 v17, v11

    const-string v11, "nw_firm_id"

    move-object/from16 v18, v4

    const-string v4, "unit_id"

    move-object/from16 v19, v7

    const-string v7, "gro_id"

    packed-switch p1, :pswitch_data_308

    :pswitch_43
    goto/16 :goto_302

    .line 670
    :pswitch_45
    :try_start_45
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->af:Ljava/lang/String;

    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    iget v0, v1, Lcom/anythink/core/common/d/d;->al:I

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 672
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    move-object/from16 v6, v16

    goto :goto_61

    :cond_5a
    new-instance v6, Lorg/json/JSONArray;

    iget-object v0, v1, Lcom/anythink/core/common/d/d;->I:Ljava/lang/String;

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_61
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_302

    .line 624
    :pswitch_66
    iget-object v3, v1, Lcom/anythink/core/common/d/d;->az:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    iget v3, v1, Lcom/anythink/core/common/d/d;->am:I

    invoke-virtual {v2, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 626
    iget v3, v1, Lcom/anythink/core/common/d/d;->al:I

    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 627
    iget v3, v1, Lcom/anythink/core/common/d/d;->s:I

    invoke-virtual {v2, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 628
    iget-wide v3, v1, Lcom/anythink/core/common/d/d;->t:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 629
    iget-object v3, v1, Lcom/anythink/core/common/d/d;->u:Ljava/lang/String;

    invoke-virtual {v2, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    const-string v3, "as_result"

    iget-object v4, v1, Lcom/anythink/core/common/d/d;->F:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_95

    move-object/from16 v4, v16

    goto :goto_9c

    :cond_95
    new-instance v4, Lorg/json/JSONArray;

    iget-object v7, v1, Lcom/anythink/core/common/d/d;->F:Ljava/lang/String;

    invoke-direct {v4, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_9c
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    const-string v3, "new_req_id"

    iget-object v4, v1, Lcom/anythink/core/common/d/d;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    iget v3, v1, Lcom/anythink/core/common/d/d;->m:I

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 634
    iget-object v3, v1, Lcom/anythink/core/common/d/d;->r:Ljava/lang/String;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_ad} :catch_303

    const-string v4, "req_id_match"

    if-nez v3, :cond_b9

    :try_start_b1
    iget-object v3, v1, Lcom/anythink/core/common/d/d;->ad:Ljava/lang/String;

    if-nez v3, :cond_b9

    .line 635
    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 638
    :cond_b9
    iget-object v3, v1, Lcom/anythink/core/common/d/d;->r:Ljava/lang/String;

    if-eqz v3, :cond_d5

    iget-object v3, v1, Lcom/anythink/core/common/d/d;->ad:Ljava/lang/String;

    if-eqz v3, :cond_d5

    .line 639
    iget-object v3, v1, Lcom/anythink/core/common/d/d;->r:Ljava/lang/String;

    iget-object v6, v1, Lcom/anythink/core/common/d/d;->ad:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 640
    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_d9

    .line 642
    :cond_d0
    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_d9

    .line 645
    :cond_d5
    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 649
    :goto_d9
    iget v3, v1, Lcom/anythink/core/common/d/d;->v:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 651
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_eb

    .line 652
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->y:Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    :cond_eb
    iget v0, v1, Lcom/anythink/core/common/d/d;->z:I

    invoke-virtual {v2, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 657
    iget v0, v1, Lcom/anythink/core/common/d/d;->A:I

    invoke-virtual {v2, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 658
    iget v0, v1, Lcom/anythink/core/common/d/d;->B:I

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 659
    iget v0, v1, Lcom/anythink/core/common/d/d;->C:I

    move-object/from16 v12, v19

    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 660
    goto/16 :goto_307

    .line 616
    :pswitch_103
    const-string v0, "loadtime"

    iget-wide v3, v1, Lcom/anythink/core/common/d/d;->ay:J

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 617
    iget v0, v1, Lcom/anythink/core/common/d/d;->al:I

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 618
    iget v0, v1, Lcom/anythink/core/common/d/d;->E:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_302

    .line 619
    move-object/from16 v4, v18

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_307

    .line 662
    :pswitch_11b
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->af:Ljava/lang/String;

    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    iget v0, v1, Lcom/anythink/core/common/d/d;->al:I

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 664
    const-string v0, "bidrequesttime"

    iget-wide v4, v1, Lcom/anythink/core/common/d/d;->G:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 665
    const-string v0, "bidresponsetime"

    iget-wide v4, v1, Lcom/anythink/core/common/d/d;->H:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 666
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13e

    move-object/from16 v6, v16

    goto :goto_145

    :cond_13e
    new-instance v6, Lorg/json/JSONArray;

    iget-object v0, v1, Lcom/anythink/core/common/d/d;->I:Ljava/lang/String;

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_145
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    goto/16 :goto_307

    .line 610
    :pswitch_14a
    move-object/from16 v4, v18

    const/4 v3, 0x0

    const/4 v6, 0x1

    const-string v0, "isload"

    iget-boolean v5, v1, Lcom/anythink/core/common/d/d;->D:Z

    if-eqz v5, :cond_155

    move v3, v6

    :cond_155
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 611
    iget v0, v1, Lcom/anythink/core/common/d/d;->E:I

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 612
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->af:Ljava/lang/String;

    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 613
    iget v0, v1, Lcom/anythink/core/common/d/d;->al:I

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 614
    goto/16 :goto_307

    .line 595
    :pswitch_169
    const/4 v3, 0x0

    const/16 v16, 0x1

    iget-object v0, v1, Lcom/anythink/core/common/d/d;->az:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 596
    iget v0, v1, Lcom/anythink/core/common/d/d;->am:I

    invoke-virtual {v2, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 597
    iget v0, v1, Lcom/anythink/core/common/d/d;->al:I

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 598
    iget v0, v1, Lcom/anythink/core/common/d/d;->m:I

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 599
    nop

    .line 5289
    iget-boolean v0, v1, Lcom/anythink/core/common/d/d;->aw:Z

    .line 599
    if-eqz v0, :cond_188

    move/from16 v7, v16

    goto :goto_189

    :cond_188
    move v7, v3

    :goto_189
    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 600
    iget v0, v1, Lcom/anythink/core/common/d/d;->s:I

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 601
    iget-wide v3, v1, Lcom/anythink/core/common/d/d;->t:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 602
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->u:Ljava/lang/String;

    invoke-virtual {v2, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 604
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_302

    .line 605
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->y:Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_307

    .line 582
    :pswitch_1b0
    move-object/from16 v0, v17

    const/4 v3, 0x0

    const/16 v16, 0x1

    iget-object v5, v1, Lcom/anythink/core/common/d/d;->az:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    iget v4, v1, Lcom/anythink/core/common/d/d;->am:I

    invoke-virtual {v2, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 584
    iget v4, v1, Lcom/anythink/core/common/d/d;->al:I

    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 585
    iget v4, v1, Lcom/anythink/core/common/d/d;->m:I

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 586
    nop

    .line 4289
    iget-boolean v4, v1, Lcom/anythink/core/common/d/d;->aw:Z

    .line 586
    if-eqz v4, :cond_1d1

    move/from16 v7, v16

    goto :goto_1d2

    :cond_1d1
    move v7, v3

    :goto_1d2
    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 587
    const-string v0, "progress"

    iget v3, v1, Lcom/anythink/core/common/d/d;->p:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 588
    iget v0, v1, Lcom/anythink/core/common/d/d;->s:I

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 589
    iget-wide v3, v1, Lcom/anythink/core/common/d/d;->t:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 590
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->u:Ljava/lang/String;

    invoke-virtual {v2, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 591
    goto/16 :goto_307

    .line 519
    :pswitch_1f1
    move-object/from16 v3, v17

    move-object/from16 v12, v19

    const/16 v16, 0x1

    move-object/from16 v17, v5

    goto :goto_216

    .line 549
    :pswitch_1fa
    move-object/from16 v3, v17

    move-object/from16 v12, v19

    const/16 v16, 0x1

    move-object/from16 v17, v5

    iget v5, v1, Lcom/anythink/core/common/d/d;->z:I

    invoke-virtual {v2, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 550
    iget v5, v1, Lcom/anythink/core/common/d/d;->A:I

    invoke-virtual {v2, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 551
    iget v5, v1, Lcom/anythink/core/common/d/d;->B:I

    invoke-virtual {v2, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 552
    iget v5, v1, Lcom/anythink/core/common/d/d;->C:I

    invoke-virtual {v2, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 555
    :goto_216
    iget-object v5, v1, Lcom/anythink/core/common/d/d;->az:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    iget v4, v1, Lcom/anythink/core/common/d/d;->am:I

    invoke-virtual {v2, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 557
    iget v4, v1, Lcom/anythink/core/common/d/d;->al:I

    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 558
    iget v4, v1, Lcom/anythink/core/common/d/d;->m:I

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 559
    nop

    .line 3289
    iget-boolean v4, v1, Lcom/anythink/core/common/d/d;->aw:Z

    .line 559
    if-eqz v4, :cond_232

    move/from16 v7, v16

    goto :goto_233

    :cond_232
    const/4 v7, 0x0

    :goto_233
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 561
    iget v3, v1, Lcom/anythink/core/common/d/d;->s:I

    invoke-virtual {v2, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 562
    iget-wide v3, v1, Lcom/anythink/core/common/d/d;->t:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    iget-object v3, v1, Lcom/anythink/core/common/d/d;->u:Ljava/lang/String;

    invoke-virtual {v2, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    iget v3, v1, Lcom/anythink/core/common/d/d;->v:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 568
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25d

    .line 569
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->y:Ljava/lang/String;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    :cond_25d
    iget v0, v1, Lcom/anythink/core/common/d/d;->z:I

    invoke-virtual {v2, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 574
    iget v0, v1, Lcom/anythink/core/common/d/d;->A:I

    invoke-virtual {v2, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 575
    iget v0, v1, Lcom/anythink/core/common/d/d;->B:I

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 576
    iget v0, v1, Lcom/anythink/core/common/d/d;->C:I

    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 578
    goto/16 :goto_307

    .line 533
    :pswitch_273
    move-object/from16 v3, v17

    const/16 v16, 0x1

    iget-object v0, v1, Lcom/anythink/core/common/d/d;->af:Ljava/lang/String;

    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 534
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->az:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    iget v0, v1, Lcom/anythink/core/common/d/d;->am:I

    invoke-virtual {v2, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 536
    iget v0, v1, Lcom/anythink/core/common/d/d;->al:I

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 537
    iget v0, v1, Lcom/anythink/core/common/d/d;->m:I

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 538
    nop

    .line 2289
    iget-boolean v0, v1, Lcom/anythink/core/common/d/d;->aw:Z

    .line 538
    if-eqz v0, :cond_298

    move/from16 v7, v16

    goto :goto_299

    :cond_298
    const/4 v7, 0x0

    :goto_299
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 539
    const-string v0, "status"

    iget v3, v1, Lcom/anythink/core/common/d/d;->n:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 540
    const-string v0, "filledtime"

    iget-wide v3, v1, Lcom/anythink/core/common/d/d;->ay:J

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 541
    const-string v0, "flag"

    iget v3, v1, Lcom/anythink/core/common/d/d;->o:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 542
    iget v0, v1, Lcom/anythink/core/common/d/d;->s:I

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 543
    iget-wide v3, v1, Lcom/anythink/core/common/d/d;->t:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->u:Ljava/lang/String;

    invoke-virtual {v2, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    goto :goto_307

    .line 521
    :pswitch_2c5
    move-object/from16 v3, v17

    const/16 v16, 0x1

    iget-object v0, v1, Lcom/anythink/core/common/d/d;->af:Ljava/lang/String;

    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->az:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    iget v0, v1, Lcom/anythink/core/common/d/d;->am:I

    invoke-virtual {v2, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 524
    iget v0, v1, Lcom/anythink/core/common/d/d;->al:I

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 525
    iget v0, v1, Lcom/anythink/core/common/d/d;->m:I

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 526
    nop

    .line 1289
    iget-boolean v0, v1, Lcom/anythink/core/common/d/d;->aw:Z

    .line 526
    if-eqz v0, :cond_2ea

    move/from16 v7, v16

    goto :goto_2eb

    :cond_2ea
    const/4 v7, 0x0

    :goto_2eb
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 527
    iget v0, v1, Lcom/anythink/core/common/d/d;->s:I

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 528
    iget-wide v3, v1, Lcom/anythink/core/common/d/d;->t:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    iget-object v0, v1, Lcom/anythink/core/common/d/d;->u:Ljava/lang/String;

    invoke-virtual {v2, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_301
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_301} :catch_303

    .line 530
    goto :goto_307

    .line 677
    :cond_302
    :goto_302
    goto :goto_307

    .line 676
    :catch_303
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 679
    :goto_307
    return-object v2

    :pswitch_data_308
    .packed-switch 0x1
        :pswitch_2c5
        :pswitch_273
        :pswitch_43
        :pswitch_1fa
        :pswitch_43
        :pswitch_1f1
        :pswitch_1b0
        :pswitch_169
        :pswitch_169
        :pswitch_14a
        :pswitch_11b
        :pswitch_103
        :pswitch_66
        :pswitch_43
        :pswitch_45
    .end packed-switch
.end method

.method public final s()I
    .registers 2

    .line 313
    iget v0, p0, Lcom/anythink/core/common/d/d;->ap:I

    return v0
.end method

.method public final t()I
    .registers 2

    .line 321
    iget v0, p0, Lcom/anythink/core/common/d/d;->aq:I

    return v0
.end method

.method public final u()Ljava/lang/String;
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->ar:Ljava/lang/String;

    return-object v0
.end method

.method public final v()I
    .registers 2

    .line 337
    iget v0, p0, Lcom/anythink/core/common/d/d;->as:I

    return v0
.end method

.method public final w()I
    .registers 2

    .line 345
    iget v0, p0, Lcom/anythink/core/common/d/d;->at:I

    return v0
.end method

.method public final x()Ljava/lang/String;
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/anythink/core/common/d/d;->ao:Ljava/lang/String;

    return-object v0
.end method

.method public final y()I
    .registers 2

    .line 363
    iget v0, p0, Lcom/anythink/core/common/d/d;->am:I

    return v0
.end method

.method public final z()I
    .registers 2

    .line 381
    iget v0, p0, Lcom/anythink/core/common/d/d;->al:I

    return v0
.end method
