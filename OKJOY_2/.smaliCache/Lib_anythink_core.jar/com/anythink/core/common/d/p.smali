.class public final Lcom/anythink/core/common/d/p;
.super Lcom/anythink/core/common/d/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/d/h<",
        "Lcom/anythink/core/common/d/r;",
        ">;"
    }
.end annotation


# instance fields
.field public A:J

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:J

.field private M:I

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field public z:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 203
    invoke-direct {p0}, Lcom/anythink/core/common/d/h;-><init>()V

    .line 204
    return-void
.end method

.method private J()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/anythink/core/common/d/p;->R:Ljava/lang/String;

    return-object v0
.end method

.method private K()I
    .registers 2

    .line 178
    iget v0, p0, Lcom/anythink/core/common/d/p;->z:I

    return v0
.end method

.method private L()J
    .registers 3

    .line 186
    iget-wide v0, p0, Lcom/anythink/core/common/d/p;->A:J

    return-wide v0
.end method

.method private M()J
    .registers 3

    .line 195
    iget-wide v0, p0, Lcom/anythink/core/common/d/p;->L:J

    return-wide v0
.end method

.method private b(Lcom/anythink/core/common/d/r;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/d/r;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    nop

    .line 225
    invoke-virtual {p1}, Lcom/anythink/core/common/d/r;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 229
    invoke-virtual {p1}, Lcom/anythink/core/common/d/r;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_f7

    .line 230
    invoke-virtual {p1}, Lcom/anythink/core/common/d/r;->h()Ljava/lang/String;

    move-result-object v1

    .line 231
    nop

    .line 232
    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1cc

    :cond_32
    goto :goto_5a

    :sswitch_33
    const-string v5, "728x90"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v4, 0x2

    goto :goto_5a

    :sswitch_3d
    const-string v5, "320x90"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    move v4, v3

    goto :goto_5a

    :sswitch_47
    const-string v5, "320x50"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v4, 0x3

    goto :goto_5a

    :sswitch_51
    const-string v5, "300x250"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    move v4, v2

    :goto_5a
    packed-switch v4, :pswitch_data_1de

    .line 268
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->N:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 269
    nop

    .line 270
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    move v4, v1

    goto/16 :goto_d8

    .line 256
    :pswitch_6f
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->Q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 257
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    move v1, v2

    move v4, v1

    goto/16 :goto_d8

    .line 259
    :cond_80
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 260
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    .line 262
    :cond_8e
    nop

    .line 264
    move v1, v3

    move v4, v1

    goto :goto_d8

    .line 245
    :pswitch_92
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->P:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 246
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    move v1, v2

    move v4, v1

    goto :goto_d8

    .line 248
    :cond_a2
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 249
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    .line 251
    :cond_b0
    nop

    .line 253
    move v1, v3

    move v4, v1

    goto :goto_d8

    .line 234
    :pswitch_b4
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->O:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c4

    .line 235
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    move v1, v2

    move v4, v1

    goto :goto_d8

    .line 237
    :cond_c4
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d2

    .line 238
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    .line 240
    :cond_d2
    nop

    .line 242
    move v1, v3

    move v4, v1

    goto :goto_d8

    .line 275
    :cond_d6
    :goto_d6
    move v4, v2

    move v1, v3

    :goto_d8
    if-nez v1, :cond_e9

    .line 276
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e8

    .line 277
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    .line 279
    :cond_e8
    move v4, v3

    .line 283
    :cond_e9
    :goto_e9
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f8

    .line 284
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f8

    .line 229
    :cond_f7
    move v4, v2

    .line 289
    :cond_f8
    :goto_f8
    invoke-virtual {p1}, Lcom/anythink/core/common/d/r;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_142

    .line 290
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_116

    .line 291
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_117

    .line 293
    :cond_116
    move v4, v3

    .line 296
    :goto_117
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_124

    .line 297
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_124
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_132

    .line 301
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_133

    .line 303
    :cond_132
    move v4, v3

    .line 306
    :goto_133
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_141

    .line 307
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_142

    .line 309
    :cond_141
    move v4, v3

    .line 313
    :cond_142
    :goto_142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/common/d/r;->j()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "3"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_199

    .line 314
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_169

    .line 315
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16a

    .line 317
    :cond_169
    move v4, v3

    .line 320
    :goto_16a
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_177

    .line 321
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_177
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_185

    .line 325
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_186

    .line 327
    :cond_185
    move v4, v3

    .line 330
    :goto_186
    iget v1, p0, Lcom/anythink/core/common/d/p;->r:I

    if-ne v1, v2, :cond_199

    .line 331
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_198

    .line 332
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_199

    .line 334
    :cond_198
    move v4, v3

    .line 341
    :cond_199
    :goto_199
    invoke-virtual {p1}, Lcom/anythink/core/common/d/r;->j()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "4"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c5

    .line 342
    iget-object p1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1b6

    .line 343
    iget-object p1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_1b6
    iget-object p1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c4

    .line 347
    iget-object p1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c5

    .line 349
    :cond_1c4
    goto :goto_1c6

    .line 354
    :cond_1c5
    :goto_1c5
    move v3, v4

    :goto_1c6
    if-eqz v3, :cond_1c9

    .line 355
    return-object v0

    .line 357
    :cond_1c9
    const/4 p1, 0x0

    return-object p1

    nop

    :sswitch_data_1cc
    .sparse-switch
        -0x215ddd38 -> :sswitch_51
        0x59df59c2 -> :sswitch_47
        0x59df5a3e -> :sswitch_3d
        0x60b65fb2 -> :sswitch_33
    .end sparse-switch

    :pswitch_data_1de
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_92
        :pswitch_6f
    .end packed-switch
.end method

.method private b(J)V
    .registers 3

    .line 190
    iput-wide p1, p0, Lcom/anythink/core/common/d/p;->A:J

    .line 191
    return-void
.end method

.method private f(I)V
    .registers 2

    .line 182
    iput p1, p0, Lcom/anythink/core/common/d/p;->z:I

    .line 183
    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/anythink/core/common/d/p;->C:Ljava/lang/String;

    return-object v0
.end method

.method public final A(Ljava/lang/String;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/anythink/core/common/d/p;->G:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public final B()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/anythink/core/common/d/p;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final B(Ljava/lang/String;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/anythink/core/common/d/p;->H:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public final C()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/anythink/core/common/d/p;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final C(Ljava/lang/String;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/anythink/core/common/d/p;->I:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public final D()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/anythink/core/common/d/p;->F:Ljava/lang/String;

    return-object v0
.end method

.method public final D(Ljava/lang/String;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/anythink/core/common/d/p;->J:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public final E()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/anythink/core/common/d/p;->G:Ljava/lang/String;

    return-object v0
.end method

.method public final E(Ljava/lang/String;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/anythink/core/common/d/p;->K:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public final F()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/anythink/core/common/d/p;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final F(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 375
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/anythink/core/common/d/p;->R:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 380
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 381
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\\{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_36

    .line 383
    goto :goto_b

    .line 384
    :cond_35
    return-object p1

    .line 385
    :catchall_36
    move-exception v0

    .line 388
    return-object p1
.end method

.method public final G()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/anythink/core/common/d/p;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/anythink/core/common/d/p;->J:Ljava/lang/String;

    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/anythink/core/common/d/p;->K:Ljava/lang/String;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/anythink/core/common/d/p;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic a(Lcom/anythink/core/common/d/j;)Ljava/util/List;
    .registers 8

    .line 20
    check-cast p1, Lcom/anythink/core/common/d/r;

    .line 1222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1223
    nop

    .line 1225
    invoke-virtual {p1}, Lcom/anythink/core/common/d/r;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1229
    invoke-virtual {p1}, Lcom/anythink/core/common/d/r;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_f9

    .line 1230
    invoke-virtual {p1}, Lcom/anythink/core/common/d/r;->h()Ljava/lang/String;

    move-result-object v1

    .line 1231
    nop

    .line 1232
    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1ce

    :cond_34
    goto :goto_5c

    :sswitch_35
    const-string v5, "728x90"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v4, 0x2

    goto :goto_5c

    :sswitch_3f
    const-string v5, "320x90"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v4, v3

    goto :goto_5c

    :sswitch_49
    const-string v5, "320x50"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v4, 0x3

    goto :goto_5c

    :sswitch_53
    const-string v5, "300x250"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v4, v2

    :goto_5c
    packed-switch v4, :pswitch_data_1e0

    .line 1268
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->N:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d8

    .line 1269
    nop

    .line 1270
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    move v4, v1

    goto/16 :goto_da

    .line 1256
    :pswitch_71
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->Q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 1257
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    move v1, v2

    move v4, v1

    goto/16 :goto_da

    .line 1259
    :cond_82
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 1260
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d8

    .line 1262
    :cond_90
    nop

    .line 1264
    move v1, v3

    move v4, v1

    goto :goto_da

    .line 1245
    :pswitch_94
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->P:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a4

    .line 1246
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    move v1, v2

    move v4, v1

    goto :goto_da

    .line 1248
    :cond_a4
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b2

    .line 1249
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d8

    .line 1251
    :cond_b2
    nop

    .line 1253
    move v1, v3

    move v4, v1

    goto :goto_da

    .line 1234
    :pswitch_b6
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->O:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c6

    .line 1235
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    move v1, v2

    move v4, v1

    goto :goto_da

    .line 1237
    :cond_c6
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 1238
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d8

    .line 1240
    :cond_d4
    nop

    .line 1242
    move v1, v3

    move v4, v1

    goto :goto_da

    .line 1275
    :cond_d8
    :goto_d8
    move v4, v2

    move v1, v3

    :goto_da
    if-nez v1, :cond_eb

    .line 1276
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ea

    .line 1277
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_eb

    .line 1279
    :cond_ea
    move v4, v3

    .line 1283
    :cond_eb
    :goto_eb
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_fa

    .line 1284
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fa

    .line 1229
    :cond_f9
    move v4, v2

    .line 1289
    :cond_fa
    :goto_fa
    invoke-virtual {p1}, Lcom/anythink/core/common/d/r;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "1"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_144

    .line 1290
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_118

    .line 1291
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_119

    .line 1293
    :cond_118
    move v4, v3

    .line 1296
    :goto_119
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_126

    .line 1297
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    :cond_126
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_134

    .line 1301
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_135

    .line 1303
    :cond_134
    move v4, v3

    .line 1306
    :goto_135
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_143

    .line 1307
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_144

    .line 1309
    :cond_143
    move v4, v3

    .line 1313
    :cond_144
    :goto_144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/common/d/r;->j()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "3"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19b

    .line 1314
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16b

    .line 1315
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16c

    .line 1317
    :cond_16b
    move v4, v3

    .line 1320
    :goto_16c
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_179

    .line 1321
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    :cond_179
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_187

    .line 1325
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_188

    .line 1327
    :cond_187
    move v4, v3

    .line 1330
    :goto_188
    iget v1, p0, Lcom/anythink/core/common/d/p;->r:I

    if-ne v1, v2, :cond_19b

    .line 1331
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19a

    .line 1332
    iget-object v1, p0, Lcom/anythink/core/common/d/p;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19b

    .line 1334
    :cond_19a
    move v4, v3

    .line 1341
    :cond_19b
    :goto_19b
    invoke-virtual {p1}, Lcom/anythink/core/common/d/r;->j()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "4"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c7

    .line 1342
    iget-object p1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1b8

    .line 1343
    iget-object p1, p0, Lcom/anythink/core/common/d/p;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    :cond_1b8
    iget-object p1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c6

    .line 1347
    iget-object p1, p0, Lcom/anythink/core/common/d/p;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c7

    .line 1349
    :cond_1c6
    goto :goto_1c8

    .line 1354
    :cond_1c7
    :goto_1c7
    move v3, v4

    :goto_1c8
    if-eqz v3, :cond_1cb

    .line 1355
    return-object v0

    .line 1357
    :cond_1cb
    const/4 p1, 0x0

    .line 20
    return-object p1

    nop

    :sswitch_data_1ce
    .sparse-switch
        -0x215ddd38 -> :sswitch_53
        0x59df59c2 -> :sswitch_49
        0x59df5a3e -> :sswitch_3f
        0x60b65fb2 -> :sswitch_35
    .end sparse-switch

    :pswitch_data_1e0
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_94
        :pswitch_71
    .end packed-switch
.end method

.method public final a(J)V
    .registers 3

    .line 199
    iput-wide p1, p0, Lcom/anythink/core/common/d/p;->L:J

    .line 200
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/anythink/core/common/d/p;->R:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public final a(Lcom/anythink/core/common/d/r;)Z
    .registers 7

    .line 207
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 208
    return v0

    .line 211
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/anythink/core/common/d/p;->L:J

    sub-long/2addr v1, v3

    invoke-virtual {p1}, Lcom/anythink/core/common/d/r;->p()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-lez p1, :cond_14

    .line 212
    return v0

    .line 214
    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .registers 2

    .line 364
    const/4 v0, 0x1

    return v0
.end method

.method public final e(I)V
    .registers 2

    .line 93
    iput p1, p0, Lcom/anythink/core/common/d/p;->M:I

    .line 94
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/anythink/core/common/d/p;->N:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/anythink/core/common/d/p;->O:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/anythink/core/common/d/p;->P:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/anythink/core/common/d/p;->Q:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public final v()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/anythink/core/common/d/p;->O:Ljava/lang/String;

    return-object v0
.end method

.method public final v(Ljava/lang/String;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/anythink/core/common/d/p;->B:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public final w()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/anythink/core/common/d/p;->P:Ljava/lang/String;

    return-object v0
.end method

.method public final w(Ljava/lang/String;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/anythink/core/common/d/p;->C:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public final x()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/anythink/core/common/d/p;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public final x(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/anythink/core/common/d/p;->D:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public final y()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/anythink/core/common/d/p;->M:I

    return v0
.end method

.method public final y(Ljava/lang/String;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/anythink/core/common/d/p;->E:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public final z()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/anythink/core/common/d/p;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final z(Ljava/lang/String;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/anythink/core/common/d/p;->F:Ljava/lang/String;

    .line 135
    return-void
.end method
