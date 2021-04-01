.class public final Lcom/mintegral/msdk/mtgnative/a/a;
.super Lcom/mintegral/msdk/mtgnative/a/b;
.source "APICache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/mtgnative/a/b",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/mintegral/msdk/out/Campaign;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/base/b/f;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgnative/a/b;-><init>()V

    .line 20
    iput p1, p0, Lcom/mintegral/msdk/mtgnative/a/a;->b:I

    .line 22
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/a/a;->a:Lcom/mintegral/msdk/base/b/f;

    .line 23
    return-void
.end method

.method private static a(Ljava/util/List;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 47
    if-eqz p0, :cond_4a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4a

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 49
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTimestamp()J

    move-result-wide v6

    .line 50
    const-wide/16 v2, 0x0

    .line 51
    packed-switch p1, :pswitch_data_4c

    .line 60
    :goto_1c
    sub-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_48

    .line 61
    const/4 v0, 0x1

    .line 66
    :goto_22
    return v0

    .line 53
    :pswitch_23
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/a/a;->a()J

    move-result-wide v2

    goto :goto_1c

    .line 1086
    :pswitch_28
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    .line 1087
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 1086
    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1088
    if-nez v0, :cond_40

    .line 1089
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1092
    :cond_40
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->ak()J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    .line 56
    goto :goto_1c

    :cond_48
    move v0, v1

    .line 63
    goto :goto_22

    :cond_4a
    move v0, v1

    .line 66
    goto :goto_22

    .line 51
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_23
        :pswitch_28
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 1126
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/a/a;->a:Lcom/mintegral/msdk/base/b/f;

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/a/a;->b:I

    invoke-virtual {v1, p1, p2, v3, v2}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v1

    .line 1128
    if-nez v1, :cond_f

    .line 1129
    :goto_e
    return-object v0

    .line 1131
    :cond_f
    invoke-static {v1, v3}, Lcom/mintegral/msdk/mtgnative/a/a;->a(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1133
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/a/a;->a:Lcom/mintegral/msdk/base/b/f;

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/a/a;->b:I

    invoke-virtual {v1, p1, v2}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;I)V

    goto :goto_e

    .line 1135
    :cond_1d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_e
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 14
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    .line 4071
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 4072
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3a

    .line 4074
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/a/a;->a:Lcom/mintegral/msdk/base/b/f;

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/a/a;->b:I

    invoke-virtual {v1, p1, v4, v2, v0}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;IIZ)V

    .line 4075
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/a/a;->a:Lcom/mintegral/msdk/base/b/f;

    const/4 v2, 0x2

    iget v3, p0, Lcom/mintegral/msdk/mtgnative/a/a;->b:I

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;IIZ)V

    move v1, v0

    .line 4076
    :goto_22
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3a

    .line 4077
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 4078
    invoke-virtual {v0, v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCacheLevel(I)V

    .line 4079
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/a/a;->a:Lcom/mintegral/msdk/base/b/f;

    invoke-virtual {v2, v0, p1, v4}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;I)J

    .line 4076
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 14
    :cond_3a
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 14
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    .line 3087
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    move v0, v1

    .line 3090
    :goto_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 3091
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3f

    .line 3093
    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/a/a;->a:Lcom/mintegral/msdk/base/b/f;

    iget v4, p0, Lcom/mintegral/msdk/mtgnative/a/a;->b:I

    invoke-virtual {v3, p1, v1, v4, v0}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;IIZ)V

    .line 3094
    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/a/a;->a:Lcom/mintegral/msdk/base/b/f;

    const/4 v4, 0x2

    iget v5, p0, Lcom/mintegral/msdk/mtgnative/a/a;->b:I

    invoke-virtual {v3, p1, v4, v5, v0}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;IIZ)V

    .line 3095
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3f

    .line 3096
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 3097
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCacheLevel(I)V

    .line 3098
    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/a/a;->a:Lcom/mintegral/msdk/base/b/f;

    invoke-virtual {v3, v0, p1, v1}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;I)J

    .line 3095
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 14
    :cond_3f
    return-void

    :cond_40
    move v0, v2

    goto :goto_d
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 188
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 159
    const/4 v6, 0x1

    .line 160
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 161
    const/4 v6, 0x0

    .line 163
    :cond_8
    if-eqz p2, :cond_3b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 165
    :try_start_10
    check-cast p2, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 166
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/a/a;->a:Lcom/mintegral/msdk/base/b/f;

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTab()I

    move-result v2

    .line 167
    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCacheLevel()I

    move-result v4

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getType()I

    move-result v5

    move-object v3, p1

    .line 166
    invoke-virtual/range {v0 .. v6}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 168
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/a/a;->a:Lcom/mintegral/msdk/base/b/f;

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCacheLevel()I

    move-result v4

    iget v5, p0, Lcom/mintegral/msdk/mtgnative/a/a;->b:I

    move-object v3, p1

    .line 168
    invoke-virtual/range {v1 .. v6}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;Ljava/lang/String;IIZ)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3b} :catch_3c

    .line 175
    :cond_3b
    :goto_3b
    return-void

    .line 172
    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public final synthetic b(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 2107
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/a/a;->a:Lcom/mintegral/msdk/base/b/f;

    iget v1, p0, Lcom/mintegral/msdk/mtgnative/a/a;->b:I

    invoke-virtual {v0, p1, p2, v5, v1}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;III)Ljava/util/List;

    move-result-object v3

    .line 2109
    if-nez v3, :cond_f

    .line 2110
    :goto_e
    return-object v2

    .line 2112
    :cond_f
    invoke-static {v3, v5}, Lcom/mintegral/msdk/mtgnative/a/a;->a(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3032
    const/4 v0, 0x0

    move v1, v0

    :goto_17
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_30

    .line 3033
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 3034
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCacheLevel(I)V

    .line 3035
    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/a/a;->a:Lcom/mintegral/msdk/base/b/f;

    invoke-virtual {v4, v0, p1, v5}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;I)J

    .line 3032
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    :cond_30
    move-object v0, v2

    :goto_31
    move-object v2, v0

    .line 14
    goto :goto_e

    .line 2115
    :cond_33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2116
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_31
.end method
