.class public final Lcom/mintegral/msdk/reward/c/b;
.super Lcom/mintegral/msdk/reward/c/c;
.source "DeductionShowRewardListener.java"


# instance fields
.field private a:Lcom/mintegral/msdk/reward/a/d;

.field private b:Lcom/mintegral/msdk/videocommon/e/c;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/mintegral/msdk/videocommon/e/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/reward/a/d;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/c/c;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->g:Z

    .line 46
    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->h:Z

    .line 49
    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->i:Z

    .line 52
    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->j:Z

    .line 54
    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->k:Z

    .line 57
    iput-object p5, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    .line 58
    invoke-static {p3, p4}, Lcom/mintegral/msdk/reward/c/b;->a(Lcom/mintegral/msdk/videocommon/e/c;Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->g:Z

    .line 59
    iput-object p3, p0, Lcom/mintegral/msdk/reward/c/b;->b:Lcom/mintegral/msdk/videocommon/e/c;

    .line 60
    iput-object p6, p0, Lcom/mintegral/msdk/reward/c/b;->c:Ljava/lang/String;

    .line 61
    iput-boolean p2, p0, Lcom/mintegral/msdk/reward/c/b;->d:Z

    .line 62
    iput-object p1, p0, Lcom/mintegral/msdk/reward/c/b;->e:Landroid/content/Context;

    .line 63
    iput-object p4, p0, Lcom/mintegral/msdk/reward/c/b;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 64
    return-void
.end method

.method private a(I)Z
    .registers 7

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 207
    iget-object v2, p0, Lcom/mintegral/msdk/reward/c/b;->b:Lcom/mintegral/msdk/videocommon/e/c;

    if-eqz v2, :cond_29

    .line 208
    iget-object v2, p0, Lcom/mintegral/msdk/reward/c/b;->b:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->K()Lcom/mintegral/msdk/videocommon/b/c;

    move-result-object v2

    .line 209
    if-eqz v2, :cond_29

    .line 210
    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/b/c;->a()I

    move-result v3

    .line 211
    if-nez v3, :cond_1a

    .line 212
    if-le p1, v4, :cond_18

    .line 226
    :cond_17
    :goto_17
    return v0

    :cond_18
    move v0, v1

    .line 215
    goto :goto_17

    .line 217
    :cond_1a
    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/b/c;->b()Ljava/util/List;

    move-result-object v2

    .line 218
    if-eqz v2, :cond_29

    .line 219
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_17

    .line 223
    :cond_29
    if-gt p1, v4, :cond_17

    move v0, v1

    .line 226
    goto :goto_17
.end method

.method private static a(Lcom/mintegral/msdk/videocommon/e/c;Lcom/mintegral/msdk/base/entity/CampaignEx;)Z
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    .line 156
    :try_start_4
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_73

    .line 158
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {v4}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v4

    .line 159
    if-nez v4, :cond_22

    .line 160
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v4

    .line 163
    :cond_22
    invoke-virtual {v4}, Lcom/mintegral/msdk/c/a;->ak()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 165
    :goto_29
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->b()Lcom/mintegral/msdk/videocommon/e/a;

    move-result-object v6

    .line 166
    if-eqz v6, :cond_36

    .line 167
    invoke-virtual {v6}, Lcom/mintegral/msdk/videocommon/e/a;->e()J

    move-result-wide v2

    .line 169
    :cond_36
    if-eqz p1, :cond_43

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isSpareOffer(JJ)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 170
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setSpareOfferFlag(I)V

    .line 184
    :cond_42
    :goto_42
    return v0

    .line 173
    :cond_43
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setSpareOfferFlag(I)V

    .line 174
    if-eqz p1, :cond_71

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v2

    if-nez v2, :cond_71

    if-eqz p0, :cond_71

    .line 175
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/e/c;->B()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5d

    move v0, v1

    .line 176
    goto :goto_42

    .line 178
    :cond_5d
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/e/c;->B()D

    move-result-wide v2

    .line 179
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_69} :catch_70

    move-result-wide v4

    .line 180
    cmpl-double v2, v4, v2

    if-gtz v2, :cond_42

    move v0, v1

    goto :goto_42

    :catch_70
    move-exception v0

    :cond_71
    move v0, v1

    .line 184
    goto :goto_42

    :cond_73
    move-wide v4, v2

    goto :goto_29
.end method

.method private a(Z)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 284
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/reward/c/b;->b:Lcom/mintegral/msdk/videocommon/e/c;

    if-nez v1, :cond_7

    move p1, v0

    .line 301
    :goto_6
    :pswitch_6
    return p1

    .line 287
    :cond_7
    iget-object v1, p0, Lcom/mintegral/msdk/reward/c/b;->b:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->N()I

    move-result v1

    packed-switch v1, :pswitch_data_2c

    :goto_10
    move p1, v0

    .line 301
    goto :goto_6

    .line 292
    :pswitch_12
    if-eqz p1, :cond_1c

    invoke-direct {p0}, Lcom/mintegral/msdk/reward/c/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 p1, 0x1

    goto :goto_6

    :cond_1c
    move p1, v0

    goto :goto_6

    .line 295
    :pswitch_1e
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/c/b;->d()Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_21} :catch_23

    move-result p1

    goto :goto_6

    .line 297
    :catch_23
    move-exception v1

    .line 298
    const-string v2, "DeductionShowRewardListener"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 287
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_12
        :pswitch_1e
    .end packed-switch
.end method

.method private b(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    iget-object v2, p0, Lcom/mintegral/msdk/reward/c/b;->b:Lcom/mintegral/msdk/videocommon/e/c;

    if-eqz v2, :cond_23

    .line 236
    iget-boolean v2, p0, Lcom/mintegral/msdk/reward/c/b;->d:Z

    if-eqz v2, :cond_17

    .line 237
    iget-object v2, p0, Lcom/mintegral/msdk/reward/c/b;->b:Lcom/mintegral/msdk/videocommon/e/c;

    const/16 v3, 0x11f

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/videocommon/e/c;->d(I)I

    move-result v2

    if-ne p1, v2, :cond_15

    .line 245
    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 237
    goto :goto_14

    .line 239
    :cond_17
    iget-object v2, p0, Lcom/mintegral/msdk/reward/c/b;->b:Lcom/mintegral/msdk/videocommon/e/c;

    const/16 v3, 0x5e

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/videocommon/e/c;->d(I)I

    move-result v2

    if-eq p1, v2, :cond_14

    move v0, v1

    goto :goto_14

    .line 242
    :cond_23
    iget-boolean v2, p0, Lcom/mintegral/msdk/reward/c/b;->d:Z

    if-eqz v2, :cond_2c

    .line 243
    const/4 v2, 0x3

    if-eq p1, v2, :cond_14

    move v0, v1

    goto :goto_14

    .line 245
    :cond_2c
    const/4 v2, 0x2

    if-eq p1, v2, :cond_14

    move v0, v1

    goto :goto_14
.end method

.method private c()V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 251
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/reward/c/b;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/mintegral/msdk/reward/c/b;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 252
    iget-object v1, p0, Lcom/mintegral/msdk/reward/c/b;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->r()[Ljava/lang/String;

    move-result-object v7

    .line 253
    if-eqz v7, :cond_3c

    .line 254
    array-length v8, v7

    move v6, v0

    :goto_1b
    if-ge v6, v8, :cond_3c

    aget-object v3, v7, v6

    .line 255
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 256
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/c/b;->f:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/c/b;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_34

    .line 254
    :cond_30
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1b

    .line 261
    :catch_34
    move-exception v0

    .line 262
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_3c

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    :cond_3c
    return-void
.end method

.method private d()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 311
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/reward/c/b;->b:Lcom/mintegral/msdk/videocommon/e/c;

    if-nez v1, :cond_6

    .line 323
    :cond_5
    :goto_5
    return v0

    .line 314
    :cond_6
    iget-object v1, p0, Lcom/mintegral/msdk/reward/c/b;->b:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->P()D

    move-result-wide v2

    .line 315
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_5

    .line 318
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1a} :catch_21

    move-result-wide v4

    .line 319
    cmpl-double v1, v4, v2

    if-lez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    .line 320
    :catch_21
    move-exception v1

    .line 321
    const-string v2, "DeductionShowRewardListener"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 68
    invoke-super {p0}, Lcom/mintegral/msdk/reward/c/c;->a()V

    .line 69
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->h:Z

    if-nez v0, :cond_31

    .line 70
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->g:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->g:Z

    if-eqz v0, :cond_28

    invoke-direct {p0, v2}, Lcom/mintegral/msdk/reward/c/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 71
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    invoke-interface {v0}, Lcom/mintegral/msdk/reward/a/d;->a()V

    .line 72
    invoke-direct {p0, v2}, Lcom/mintegral/msdk/reward/c/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 73
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/c/b;->c()V

    .line 76
    :cond_28
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/c/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/reward/a/d;->d(Ljava/lang/String;)V

    .line 77
    iput-boolean v2, p0, Lcom/mintegral/msdk/reward/c/b;->h:Z

    .line 79
    :cond_31
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 104
    invoke-super {p0, p1}, Lcom/mintegral/msdk/reward/c/c;->a(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->i:Z

    if-nez v0, :cond_21

    .line 106
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->g:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->g:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0, v1}, Lcom/mintegral/msdk/reward/c/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 107
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/reward/a/d;->a(Ljava/lang/String;)V

    .line 109
    :cond_1f
    iput-boolean v1, p0, Lcom/mintegral/msdk/reward/c/b;->i:Z

    .line 111
    :cond_21
    return-void
.end method

.method public final a(ZLcom/mintegral/msdk/videocommon/b/d;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/reward/c/c;->a(ZLcom/mintegral/msdk/videocommon/b/d;)V

    .line 84
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->j:Z

    if-nez v0, :cond_17

    .line 85
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->g:Z

    if-nez v0, :cond_18

    .line 86
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/reward/a/d;->a(ZLcom/mintegral/msdk/videocommon/b/d;)V

    .line 87
    iput-boolean v1, p0, Lcom/mintegral/msdk/reward/c/b;->j:Z

    .line 100
    :cond_17
    :goto_17
    return-void

    .line 90
    :cond_18
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/reward/c/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1192
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->b:Lcom/mintegral/msdk/videocommon/e/c;

    if-eqz v0, :cond_46

    .line 1193
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->b:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/c;->K()Lcom/mintegral/msdk/videocommon/b/c;

    move-result-object v0

    .line 1194
    if-eqz v0, :cond_46

    .line 1195
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/b/c;->a()I

    move-result v0

    .line 91
    :goto_2f
    if-nez v0, :cond_3e

    invoke-direct {p0, v1}, Lcom/mintegral/msdk/reward/c/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 92
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    const-string v2, "mediaplayer cannot play"

    invoke-interface {v0, v2}, Lcom/mintegral/msdk/reward/a/d;->a(Ljava/lang/String;)V

    .line 94
    :cond_3e
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/reward/a/d;->a(ZLcom/mintegral/msdk/videocommon/b/d;)V

    .line 98
    :goto_43
    iput-boolean v1, p0, Lcom/mintegral/msdk/reward/c/b;->j:Z

    goto :goto_17

    :cond_46
    move v0, v1

    .line 1198
    goto :goto_2f

    .line 96
    :cond_48
    iput-boolean v1, p0, Lcom/mintegral/msdk/reward/c/b;->k:Z

    goto :goto_43
.end method

.method public final a(ZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/reward/c/c;->a(ZLjava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->g:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->g:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/reward/c/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 117
    :cond_16
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/reward/c/b;->a(Z)Z

    move-result v0

    if-nez v0, :cond_21

    .line 118
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/reward/a/d;->a(ZLjava/lang/String;)V

    .line 121
    :cond_21
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x2

    .line 136
    invoke-super {p0, p1}, Lcom/mintegral/msdk/reward/c/c;->b(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->g:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->g:Z

    if-eqz v0, :cond_24

    invoke-direct {p0, v1}, Lcom/mintegral/msdk/reward/c/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 138
    :cond_16
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/reward/a/d;->b(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/reward/c/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 140
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/c/b;->c()V

    .line 143
    :cond_24
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->k:Z

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x3

    .line 125
    invoke-super {p0, p1}, Lcom/mintegral/msdk/reward/c/c;->c(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->g:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/c/b;->g:Z

    if-eqz v0, :cond_24

    invoke-direct {p0, v1}, Lcom/mintegral/msdk/reward/c/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 127
    :cond_16
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/b;->a:Lcom/mintegral/msdk/reward/a/d;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/reward/a/d;->c(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/reward/c/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 129
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/c/b;->c()V

    .line 132
    :cond_24
    return-void
.end method
