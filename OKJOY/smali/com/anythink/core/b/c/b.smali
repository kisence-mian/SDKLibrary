.class public final Lcom/anythink/core/b/c/b;
.super Lcom/anythink/core/b/c/n;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2


# instance fields
.field A:Z

.field B:I

.field C:Ljava/lang/String;

.field D:J

.field E:J

.field F:Ljava/lang/String;

.field private aA:Ljava/lang/String;

.field private aB:Lcom/anythink/core/api/ATRewardInfo;

.field private aC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/ATRewardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private aD:Ljava/util/Map;
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

.field private ah:I

.field private ai:I

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:I

.field private am:I

.field private an:Ljava/lang/String;

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:Z

.field private as:J

.field private at:J

.field private au:Ljava/lang/String;

.field private av:Ljava/lang/String;

.field private aw:Ljava/lang/String;

.field private ax:I

.field private ay:Ljava/lang/String;

.field private az:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field q:I

.field r:D

.field public s:I

.field t:I

.field u:I

.field public v:Ljava/lang/String;

.field protected w:I

.field protected x:I

.field protected y:I

.field protected z:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/anythink/core/b/c/n;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/b/c/b;->j:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/anythink/core/b/c/b;->k:I

    .line 51
    iput v1, p0, Lcom/anythink/core/b/c/b;->l:I

    .line 52
    iput v1, p0, Lcom/anythink/core/b/c/b;->m:I

    return-void
.end method

.method private H()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method private I()I
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Lcom/anythink/core/b/c/b;->s:I

    return v0
.end method

.method private J()V
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/b/c/b;->s:I

    .line 207
    return-void
.end method

.method private K()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method private L()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->aj:Ljava/lang/String;

    return-object v0
.end method

.method private M()Ljava/lang/String;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method private N()I
    .registers 2

    .prologue
    .line 354
    iget v0, p0, Lcom/anythink/core/b/c/b;->k:I

    return v0
.end method

.method private O()I
    .registers 2

    .prologue
    .line 363
    iget v0, p0, Lcom/anythink/core/b/c/b;->l:I

    return v0
.end method

.method private P()I
    .registers 2

    .prologue
    .line 389
    iget v0, p0, Lcom/anythink/core/b/c/b;->n:I

    return v0
.end method

.method private Q()Z
    .registers 2

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/anythink/core/b/c/b;->A:Z

    return v0
.end method

.method private R()I
    .registers 2

    .prologue
    .line 410
    iget v0, p0, Lcom/anythink/core/b/c/b;->B:I

    return v0
.end method

.method private S()Ljava/lang/String;
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->C:Ljava/lang/String;

    return-object v0
.end method

.method private T()J
    .registers 3

    .prologue
    .line 432
    iget-wide v0, p0, Lcom/anythink/core/b/c/b;->D:J

    return-wide v0
.end method

.method private U()J
    .registers 3

    .prologue
    .line 440
    iget-wide v0, p0, Lcom/anythink/core/b/c/b;->E:J

    return-wide v0
.end method

.method private V()Ljava/lang/String;
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->F:Ljava/lang/String;

    return-object v0
.end method

.method private r(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 182
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->v:Ljava/lang/String;

    .line 183
    return-void
.end method

.method private s(I)V
    .registers 2

    .prologue
    .line 350
    iput p1, p0, Lcom/anythink/core/b/c/b;->k:I

    .line 351
    return-void
.end method

.method private s(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 230
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->o:Ljava/lang/String;

    .line 231
    return-void
.end method

.method private t(I)V
    .registers 2

    .prologue
    .line 359
    iput p1, p0, Lcom/anythink/core/b/c/b;->l:I

    .line 360
    return-void
.end method

.method private t(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 334
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->p:Ljava/lang/String;

    .line 335
    return-void
.end method

.method private u(I)V
    .registers 2

    .prologue
    .line 368
    iput p1, p0, Lcom/anythink/core/b/c/b;->m:I

    .line 369
    return-void
.end method

.method private v(I)V
    .registers 2

    .prologue
    .line 393
    iput p1, p0, Lcom/anythink/core/b/c/b;->n:I

    .line 394
    return-void
.end method


# virtual methods
.method public final A()J
    .registers 3

    .prologue
    .line 384
    iget-wide v0, p0, Lcom/anythink/core/b/c/b;->at:J

    return-wide v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->av:Ljava/lang/String;

    return-object v0
.end method

.method public final a(D)V
    .registers 4

    .prologue
    .line 222
    iput-wide p1, p0, Lcom/anythink/core/b/c/b;->r:D

    .line 223
    return-void
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 89
    iput p1, p0, Lcom/anythink/core/b/c/b;->w:I

    .line 90
    return-void
.end method

.method public final a(J)V
    .registers 4

    .prologue
    .line 376
    iput-wide p1, p0, Lcom/anythink/core/b/c/b;->as:J

    .line 377
    return-void
.end method

.method public final a(Lcom/anythink/core/api/ATRewardInfo;)V
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->aB:Lcom/anythink/core/api/ATRewardInfo;

    .line 167
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->av:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/ATRewardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->aC:Ljava/util/Map;

    .line 159
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/anythink/core/b/c/b;->A:Z

    .line 407
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->aw:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .registers 2

    .prologue
    .line 93
    iput p1, p0, Lcom/anythink/core/b/c/b;->x:I

    .line 94
    return-void
.end method

.method public final b(J)V
    .registers 4

    .prologue
    .line 380
    iput-wide p1, p0, Lcom/anythink/core/b/c/b;->at:J

    .line 381
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->aw:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->aD:Ljava/util/Map;

    .line 175
    return-void
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Lcom/anythink/core/b/c/b;->ax:I

    return v0
.end method

.method public final c(I)V
    .registers 2

    .prologue
    .line 97
    iput p1, p0, Lcom/anythink/core/b/c/b;->y:I

    .line 98
    return-void
.end method

.method public final c(J)V
    .registers 4

    .prologue
    .line 436
    iput-wide p1, p0, Lcom/anythink/core/b/c/b;->D:J

    .line 437
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->ay:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->ay:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)V
    .registers 2

    .prologue
    .line 101
    iput p1, p0, Lcom/anythink/core/b/c/b;->z:I

    .line 102
    return-void
.end method

.method public final d(J)V
    .registers 4

    .prologue
    .line 444
    iput-wide p1, p0, Lcom/anythink/core/b/c/b;->E:J

    .line 445
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 142
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->az:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->az:Ljava/lang/String;

    return-object v0
.end method

.method public final e(I)V
    .registers 2

    .prologue
    .line 126
    iput p1, p0, Lcom/anythink/core/b/c/b;->ax:I

    .line 127
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->aA:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->aA:Ljava/lang/String;

    return-object v0
.end method

.method public final f(I)V
    .registers 2

    .prologue
    .line 190
    iput p1, p0, Lcom/anythink/core/b/c/b;->t:I

    .line 191
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 238
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->au:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public final g()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/ATRewardInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->aC:Ljava/util/Map;

    return-object v0
.end method

.method public final g(I)V
    .registers 2

    .prologue
    .line 198
    iput p1, p0, Lcom/anythink/core/b/c/b;->u:I

    .line 199
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 278
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->an:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public final h()Lcom/anythink/core/api/ATRewardInfo;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->aB:Lcom/anythink/core/api/ATRewardInfo;

    return-object v0
.end method

.method public final h(I)V
    .registers 2

    .prologue
    .line 214
    iput p1, p0, Lcom/anythink/core/b/c/b;->q:I

    .line 215
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 303
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->ak:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public final i()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->aD:Ljava/util/Map;

    return-object v0
.end method

.method public final i(I)V
    .registers 2

    .prologue
    .line 254
    iput p1, p0, Lcom/anythink/core/b/c/b;->aq:I

    .line 255
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 321
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->aj:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public final j()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/anythink/core/b/c/b;->t:I

    return v0
.end method

.method public final j(I)V
    .registers 2

    .prologue
    .line 262
    iput p1, p0, Lcom/anythink/core/b/c/b;->al:I

    .line 263
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 341
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->j:Ljava/lang/String;

    .line 343
    :cond_8
    return-void
.end method

.method public final k()I
    .registers 2

    .prologue
    .line 194
    iget v0, p0, Lcom/anythink/core/b/c/b;->u:I

    return v0
.end method

.method public final k(I)V
    .registers 2

    .prologue
    .line 270
    iput p1, p0, Lcom/anythink/core/b/c/b;->am:I

    .line 271
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 422
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->C:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public final l()I
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Lcom/anythink/core/b/c/b;->q:I

    return v0
.end method

.method public final l(I)V
    .registers 2

    .prologue
    .line 286
    iput p1, p0, Lcom/anythink/core/b/c/b;->ao:I

    .line 287
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 452
    iput-object p1, p0, Lcom/anythink/core/b/c/b;->F:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public final m()D
    .registers 3

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/anythink/core/b/c/b;->r:D

    return-wide v0
.end method

.method public final m(I)V
    .registers 2

    .prologue
    .line 294
    iput p1, p0, Lcom/anythink/core/b/c/b;->ap:I

    .line 295
    return-void
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->au:Ljava/lang/String;

    return-object v0
.end method

.method public final n(I)V
    .registers 2

    .prologue
    .line 313
    iput p1, p0, Lcom/anythink/core/b/c/b;->ai:I

    .line 314
    return-void
.end method

.method public final o(I)V
    .registers 2

    .prologue
    .line 330
    iput p1, p0, Lcom/anythink/core/b/c/b;->ah:I

    .line 331
    return-void
.end method

.method public final o()Z
    .registers 2

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/anythink/core/b/c/b;->ar:Z

    return v0
.end method

.method public final p()V
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/b/c/b;->ar:Z

    .line 247
    return-void
.end method

.method public final p(I)V
    .registers 2

    .prologue
    .line 414
    iput p1, p0, Lcom/anythink/core/b/c/b;->B:I

    .line 415
    return-void
.end method

.method public final q()I
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Lcom/anythink/core/b/c/b;->aq:I

    return v0
.end method

.method public final q(I)Lorg/json/JSONObject;
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 460
    invoke-super {p0, p1}, Lcom/anythink/core/b/c/n;->q(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 462
    :try_start_6
    const-string v3, "nw_ver"

    iget-object v4, p0, Lcom/anythink/core/b/c/b;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    const-string v3, "refresh"

    iget v4, p0, Lcom/anythink/core/b/c/b;->ap:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 464
    packed-switch p1, :pswitch_data_318

    .line 618
    :cond_17
    :goto_17
    :pswitch_17
    return-object v2

    .line 466
    :pswitch_18
    const-string v3, "asid"

    iget-object v4, p0, Lcom/anythink/core/b/c/b;->Z:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    const-string v3, "unit_id"

    iget-object v4, p0, Lcom/anythink/core/b/c/b;->au:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    const-string v3, "nw_firm_id"

    iget v4, p0, Lcom/anythink/core/b/c/b;->ai:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 469
    const-string v3, "gro_id"

    iget v4, p0, Lcom/anythink/core/b/c/b;->ah:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 470
    const-string v3, "auto_req"

    iget v4, p0, Lcom/anythink/core/b/c/b;->k:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 471
    const-string v3, "aprn_auto_req"

    .line 1242
    iget-boolean v4, p0, Lcom/anythink/core/b/c/b;->ar:Z

    .line 471
    if-eqz v4, :cond_5c

    :goto_41
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 472
    const-string v0, "bidtype"

    iget v1, p0, Lcom/anythink/core/b/c/b;->q:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 473
    const-string v0, "bidprice"

    iget-wide v4, p0, Lcom/anythink/core/b/c/b;->r:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_56} :catch_57

    goto :goto_17

    .line 615
    :catch_57
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    :cond_5c
    move v0, v1

    .line 471
    goto :goto_41

    .line 477
    :pswitch_5e
    :try_start_5e
    const-string v3, "asid"

    iget-object v4, p0, Lcom/anythink/core/b/c/b;->Z:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    const-string v3, "unit_id"

    iget-object v4, p0, Lcom/anythink/core/b/c/b;->au:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    const-string v3, "nw_firm_id"

    iget v4, p0, Lcom/anythink/core/b/c/b;->ai:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 480
    const-string v3, "gro_id"

    iget v4, p0, Lcom/anythink/core/b/c/b;->ah:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 481
    const-string v3, "auto_req"

    iget v4, p0, Lcom/anythink/core/b/c/b;->k:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 482
    const-string v3, "aprn_auto_req"

    .line 2242
    iget-boolean v4, p0, Lcom/anythink/core/b/c/b;->ar:Z

    .line 482
    if-eqz v4, :cond_b3

    :goto_87
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 483
    const-string v0, "status"

    iget v1, p0, Lcom/anythink/core/b/c/b;->l:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 484
    const-string v0, "filledtime"

    iget-wide v4, p0, Lcom/anythink/core/b/c/b;->at:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 485
    const-string v0, "flag"

    iget v1, p0, Lcom/anythink/core/b/c/b;->m:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 486
    const-string v0, "bidtype"

    iget v1, p0, Lcom/anythink/core/b/c/b;->q:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 487
    const-string v0, "bidprice"

    iget-wide v4, p0, Lcom/anythink/core/b/c/b;->r:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_17

    :cond_b3
    move v0, v1

    .line 482
    goto :goto_87

    .line 492
    :pswitch_b5
    const-string v3, "ads"

    iget v4, p0, Lcom/anythink/core/b/c/b;->w:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 493
    const-string v3, "ahs"

    iget v4, p0, Lcom/anythink/core/b/c/b;->x:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 494
    const-string v3, "pds"

    iget v4, p0, Lcom/anythink/core/b/c/b;->y:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 495
    const-string v3, "phs"

    iget v4, p0, Lcom/anythink/core/b/c/b;->z:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 498
    :pswitch_d1
    const-string v3, "unit_id"

    iget-object v4, p0, Lcom/anythink/core/b/c/b;->au:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    const-string v3, "nw_firm_id"

    iget v4, p0, Lcom/anythink/core/b/c/b;->ai:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 500
    const-string v3, "gro_id"

    iget v4, p0, Lcom/anythink/core/b/c/b;->ah:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 501
    const-string v3, "auto_req"

    iget v4, p0, Lcom/anythink/core/b/c/b;->k:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 502
    const-string v3, "aprn_auto_req"

    .line 3242
    iget-boolean v4, p0, Lcom/anythink/core/b/c/b;->ar:Z

    .line 502
    if-eqz v4, :cond_13c

    :goto_f3
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 504
    const-string v0, "bidtype"

    iget v1, p0, Lcom/anythink/core/b/c/b;->q:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 505
    const-string v0, "bidprice"

    iget-wide v4, p0, Lcom/anythink/core/b/c/b;->r:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    const-string v0, "myoffer_showtype"

    iget v1, p0, Lcom/anythink/core/b/c/b;->s:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 510
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11e

    .line 511
    const-string v0, "scenario"

    iget-object v1, p0, Lcom/anythink/core/b/c/b;->v:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    :cond_11e
    const-string v0, "ads"

    iget v1, p0, Lcom/anythink/core/b/c/b;->w:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 516
    const-string v0, "ahs"

    iget v1, p0, Lcom/anythink/core/b/c/b;->x:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 517
    const-string v0, "pds"

    iget v1, p0, Lcom/anythink/core/b/c/b;->y:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 518
    const-string v0, "phs"

    iget v1, p0, Lcom/anythink/core/b/c/b;->z:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_17

    :cond_13c
    move v0, v1

    .line 502
    goto :goto_f3

    .line 524
    :pswitch_13e
    const-string v3, "unit_id"

    iget-object v4, p0, Lcom/anythink/core/b/c/b;->au:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    const-string v3, "nw_firm_id"

    iget v4, p0, Lcom/anythink/core/b/c/b;->ai:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 526
    const-string v3, "gro_id"

    iget v4, p0, Lcom/anythink/core/b/c/b;->ah:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 527
    const-string v3, "auto_req"

    iget v4, p0, Lcom/anythink/core/b/c/b;->k:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 528
    const-string v3, "aprn_auto_req"

    .line 4242
    iget-boolean v4, p0, Lcom/anythink/core/b/c/b;->ar:Z

    .line 528
    if-eqz v4, :cond_17e

    :goto_160
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 529
    const-string v0, "progress"

    iget v1, p0, Lcom/anythink/core/b/c/b;->n:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 530
    const-string v0, "bidtype"

    iget v1, p0, Lcom/anythink/core/b/c/b;->q:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 531
    const-string v0, "bidprice"

    iget-wide v4, p0, Lcom/anythink/core/b/c/b;->r:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_17

    :cond_17e
    move v0, v1

    .line 528
    goto :goto_160

    .line 536
    :pswitch_180
    const-string v3, "unit_id"

    iget-object v4, p0, Lcom/anythink/core/b/c/b;->au:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 537
    const-string v3, "nw_firm_id"

    iget v4, p0, Lcom/anythink/core/b/c/b;->ai:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 538
    const-string v3, "gro_id"

    iget v4, p0, Lcom/anythink/core/b/c/b;->ah:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 539
    const-string v3, "auto_req"

    iget v4, p0, Lcom/anythink/core/b/c/b;->k:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 540
    const-string v3, "aprn_auto_req"

    .line 5242
    iget-boolean v4, p0, Lcom/anythink/core/b/c/b;->ar:Z

    .line 540
    if-eqz v4, :cond_1c8

    :goto_1a2
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 541
    const-string v0, "bidtype"

    iget v1, p0, Lcom/anythink/core/b/c/b;->q:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 542
    const-string v0, "bidprice"

    iget-wide v4, p0, Lcom/anythink/core/b/c/b;->r:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 545
    const-string v0, "scenario"

    iget-object v1, p0, Lcom/anythink/core/b/c/b;->v:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_17

    :cond_1c8
    move v0, v1

    .line 540
    goto :goto_1a2

    .line 550
    :pswitch_1ca
    const-string v3, "isload"

    iget-boolean v4, p0, Lcom/anythink/core/b/c/b;->A:Z

    if-eqz v4, :cond_1ea

    :goto_1d0
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 551
    const-string v0, "reason"

    iget v1, p0, Lcom/anythink/core/b/c/b;->B:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 552
    const-string v0, "asid"

    iget-object v1, p0, Lcom/anythink/core/b/c/b;->Z:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-string v0, "gro_id"

    iget v1, p0, Lcom/anythink/core/b/c/b;->ah:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_17

    :cond_1ea
    move v0, v1

    .line 550
    goto :goto_1d0

    .line 556
    :pswitch_1ec
    const-string v0, "loadtime"

    iget-wide v4, p0, Lcom/anythink/core/b/c/b;->at:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 557
    const-string v0, "gro_id"

    iget v1, p0, Lcom/anythink/core/b/c/b;->ah:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 558
    iget v0, p0, Lcom/anythink/core/b/c/b;->B:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_17

    .line 559
    const-string v0, "reason"

    iget v1, p0, Lcom/anythink/core/b/c/b;->B:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_17

    .line 564
    :pswitch_208
    const-string v0, "unit_id"

    iget-object v1, p0, Lcom/anythink/core/b/c/b;->au:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    const-string v0, "nw_firm_id"

    iget v1, p0, Lcom/anythink/core/b/c/b;->ai:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 566
    const-string v0, "gro_id"

    iget v1, p0, Lcom/anythink/core/b/c/b;->ah:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 567
    const-string v0, "bidtype"

    iget v1, p0, Lcom/anythink/core/b/c/b;->q:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 568
    const-string v0, "bidprice"

    iget-wide v4, p0, Lcom/anythink/core/b/c/b;->r:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    const-string v1, "as_result"

    iget-object v0, p0, Lcom/anythink/core/b/c/b;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a6

    const-string v0, "[]"

    :goto_23b
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    const-string v0, "new_req_id"

    iget-object v1, p0, Lcom/anythink/core/b/c/b;->p:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    const-string v0, "auto_req"

    iget v1, p0, Lcom/anythink/core/b/c/b;->k:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 573
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->p:Ljava/lang/String;

    if-nez v0, :cond_25a

    iget-object v0, p0, Lcom/anythink/core/b/c/b;->X:Ljava/lang/String;

    if-nez v0, :cond_25a

    .line 574
    const-string v0, "req_id_match"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 577
    :cond_25a
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->p:Ljava/lang/String;

    if-eqz v0, :cond_2b5

    iget-object v0, p0, Lcom/anythink/core/b/c/b;->X:Ljava/lang/String;

    if-eqz v0, :cond_2b5

    .line 578
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/b/c/b;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ae

    .line 579
    const-string v0, "req_id_match"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 588
    :goto_272
    const-string v0, "myoffer_showtype"

    iget v1, p0, Lcom/anythink/core/b/c/b;->s:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 590
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_288

    .line 591
    const-string v0, "scenario"

    iget-object v1, p0, Lcom/anythink/core/b/c/b;->v:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 595
    :cond_288
    const-string v0, "ads"

    iget v1, p0, Lcom/anythink/core/b/c/b;->w:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 596
    const-string v0, "ahs"

    iget v1, p0, Lcom/anythink/core/b/c/b;->x:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 597
    const-string v0, "pds"

    iget v1, p0, Lcom/anythink/core/b/c/b;->y:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 598
    const-string v0, "phs"

    iget v1, p0, Lcom/anythink/core/b/c/b;->z:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_17

    .line 569
    :cond_2a6
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/anythink/core/b/c/b;->C:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_23b

    .line 581
    :cond_2ae
    const-string v0, "req_id_match"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_272

    .line 584
    :cond_2b5
    const-string v0, "req_id_match"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_272

    .line 601
    :pswitch_2bc
    const-string v0, "asid"

    iget-object v1, p0, Lcom/anythink/core/b/c/b;->Z:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 602
    const-string v0, "gro_id"

    iget v1, p0, Lcom/anythink/core/b/c/b;->ah:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 603
    const-string v0, "bidrequesttime"

    iget-wide v4, p0, Lcom/anythink/core/b/c/b;->D:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 604
    const-string v0, "bidresponsetime"

    iget-wide v4, p0, Lcom/anythink/core/b/c/b;->E:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 605
    const-string v1, "bidresponselist"

    iget-object v0, p0, Lcom/anythink/core/b/c/b;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e9

    const-string v0, "[]"

    :goto_2e4
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_17

    :cond_2e9
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/anythink/core/b/c/b;->F:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_2e4

    .line 609
    :pswitch_2f1
    const-string v0, "asid"

    iget-object v1, p0, Lcom/anythink/core/b/c/b;->Z:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 610
    const-string v0, "gro_id"

    iget v1, p0, Lcom/anythink/core/b/c/b;->ah:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 611
    const-string v1, "bidresponselist"

    iget-object v0, p0, Lcom/anythink/core/b/c/b;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_310

    const-string v0, "[]"

    :goto_30b
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_17

    :cond_310
    new-instance v0, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/anythink/core/b/c/b;->F:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_317
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_317} :catch_57

    goto :goto_30b

    .line 464
    :pswitch_data_318
    .packed-switch 0x1
        :pswitch_18
        :pswitch_5e
        :pswitch_17
        :pswitch_b5
        :pswitch_17
        :pswitch_d1
        :pswitch_13e
        :pswitch_180
        :pswitch_180
        :pswitch_1ca
        :pswitch_2bc
        :pswitch_1ec
        :pswitch_208
        :pswitch_17
        :pswitch_2f1
    .end packed-switch
.end method

.method public final r()I
    .registers 2

    .prologue
    .line 258
    iget v0, p0, Lcom/anythink/core/b/c/b;->al:I

    return v0
.end method

.method public final s()I
    .registers 2

    .prologue
    .line 266
    iget v0, p0, Lcom/anythink/core/b/c/b;->am:I

    return v0
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->an:Ljava/lang/String;

    return-object v0
.end method

.method public final u()I
    .registers 2

    .prologue
    .line 282
    iget v0, p0, Lcom/anythink/core/b/c/b;->ao:I

    return v0
.end method

.method public final v()I
    .registers 2

    .prologue
    .line 290
    iget v0, p0, Lcom/anythink/core/b/c/b;->ap:I

    return v0
.end method

.method public final w()Ljava/lang/String;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/anythink/core/b/c/b;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public final x()I
    .registers 2

    .prologue
    .line 308
    iget v0, p0, Lcom/anythink/core/b/c/b;->ai:I

    return v0
.end method

.method public final y()I
    .registers 2

    .prologue
    .line 326
    iget v0, p0, Lcom/anythink/core/b/c/b;->ah:I

    return v0
.end method

.method public final z()J
    .registers 3

    .prologue
    .line 372
    iget-wide v0, p0, Lcom/anythink/core/b/c/b;->as:J

    return-wide v0
.end method
