.class public Lcom/mintegral/msdk/reward/d/a;
.super Ljava/lang/Object;
.source "RewardReport.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/mintegral/msdk/reward/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/reward/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/mintegral/msdk/reward/d/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 184
    if-eqz p0, :cond_84

    if-eqz p1, :cond_84

    :try_start_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 185
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "key=2000048&"

    .line 186
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 187
    if-eqz p1, :cond_30

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 190
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network_type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unit_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    if-eqz p1, :cond_7d

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rid_n="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 195
    :cond_7d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/mintegral/msdk/reward/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_84} :catch_85

    .line 201
    :cond_84
    :goto_84
    return-void

    .line 198
    :catch_85
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_84
.end method

.method public static a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 280
    if-eqz p0, :cond_f1

    if-eqz p1, :cond_f1

    :try_start_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f2

    move v2, v0

    :goto_d
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f5

    :goto_13
    and-int/2addr v0, v2

    if-eqz v0, :cond_f1

    .line 281
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "key=2000054&"

    .line 282
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network_type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unit_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reason="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    const-string v1, "result=1&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "creative="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "devid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    if-eqz p1, :cond_f8

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x11f

    if-ne v1, v2, :cond_f8

    .line 291
    const-string v1, "ad_type=3&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    :goto_d1
    if-eqz p1, :cond_ea

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rid_n="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 300
    :cond_ea
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/mintegral/msdk/reward/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_f1
    :goto_f1
    return-void

    :cond_f2
    move v2, v1

    .line 280
    goto/16 :goto_d

    :cond_f5
    move v0, v1

    goto/16 :goto_13

    .line 292
    :cond_f8
    if-eqz p1, :cond_10d

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_10d

    .line 293
    const-string v1, "ad_type=1&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_107
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_107} :catch_108

    goto :goto_d1

    .line 303
    :catch_108
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f1

    .line 295
    :cond_10d
    :try_start_10d
    const-string v1, "ad_type=1&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_112
    .catch Ljava/lang/Throwable; {:try_start_10d .. :try_end_112} :catch_108

    goto :goto_d1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 29
    if-eqz p0, :cond_d5

    .line 30
    :try_start_2
    invoke-static {p0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    move-result-object v0

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d5

    if-eqz v0, :cond_d5

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/w;->c()I

    move-result v1

    if-lez v1, :cond_d5

    .line 33
    const-string v1, "2000022"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 35
    const-string v2, "2000021"

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/b/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 37
    const-string v3, "2000039"

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/b/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 39
    const-string v4, "2000043"

    invoke-virtual {v0, v4}, Lcom/mintegral/msdk/base/b/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 42
    const-string v5, "2000045"

    invoke-virtual {v0, v5}, Lcom/mintegral/msdk/base/b/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 45
    const-string v6, "2000044"

    invoke-virtual {v0, v6}, Lcom/mintegral/msdk/base/b/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-static {v2}, Lcom/mintegral/msdk/base/entity/q;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v1}, Lcom/mintegral/msdk/base/entity/q;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/q;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-static {v4}, Lcom/mintegral/msdk/base/entity/q;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-static {v5}, Lcom/mintegral/msdk/base/entity/q;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/q;->f(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_62

    .line 59
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 62
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_6b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_74

    .line 65
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_74
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 68
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_7d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 71
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    .line 74
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_8f
    sget-object v0, Lcom/mintegral/msdk/reward/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reward \u6279\u91cf\u4e0a\u62a5\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1093
    if-eqz p0, :cond_d5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_bc} :catch_e4

    move-result v1

    if-nez v1, :cond_d5

    .line 1096
    :try_start_bf
    new-instance v1, Lcom/mintegral/msdk/base/common/e/d/a;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/common/e/d/a;-><init>(Landroid/content/Context;)V

    .line 1097
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/common/e/d/a;->c()V

    .line 1098
    invoke-static {v0, p0, p1}, Lcom/mintegral/msdk/base/common/e/c;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/base/common/net/l;

    move-result-object v0

    .line 1099
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->f:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/reward/d/a$1;

    invoke-direct {v3}, Lcom/mintegral/msdk/reward/d/a$1;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/mintegral/msdk/base/common/e/d/a;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_d5} :catch_d6

    .line 1113
    :cond_d5
    :goto_d5
    return-void

    .line 1110
    :catch_d6
    move-exception v0

    .line 1111
    :try_start_d7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1112
    sget-object v1, Lcom/mintegral/msdk/reward/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_e3} :catch_e4

    goto :goto_d5

    .line 83
    :catch_e4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d5
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 121
    if-eqz p0, :cond_24

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 123
    :try_start_e
    new-instance v0, Lcom/mintegral/msdk/base/common/e/d/a;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/common/e/d/a;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/e/d/a;->c()V

    .line 125
    invoke-static {p1, p0, p2}, Lcom/mintegral/msdk/base/common/e/c;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/base/common/net/l;

    move-result-object v1

    .line 126
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->f:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/reward/d/a$2;

    invoke-direct {v3}, Lcom/mintegral/msdk/reward/d/a$2;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Lcom/mintegral/msdk/base/common/e/d/a;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_25

    .line 144
    :cond_24
    :goto_24
    return-void

    .line 139
    :catch_25
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    sget-object v1, Lcom/mintegral/msdk/reward/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .prologue
    .line 211
    if-eqz p0, :cond_c8

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c8

    .line 212
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "key=2000047&"

    .line 213
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network_type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unit_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    sget-object v1, Lcom/mintegral/msdk/base/common/a;->D:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sys_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mintegral/msdk/base/common/a;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    :cond_6b
    sget-object v1, Lcom/mintegral/msdk/base/common/a;->E:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bkup_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mintegral/msdk/base/common/a;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    :cond_8d
    if-eqz p3, :cond_94

    .line 223
    const-string v1, "hb=1&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    :cond_94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reason="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1151
    if-eqz p0, :cond_c8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_af} :catch_d7

    move-result v1

    if-nez v1, :cond_c8

    .line 1153
    :try_start_b2
    new-instance v1, Lcom/mintegral/msdk/base/common/e/d/a;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/common/e/d/a;-><init>(Landroid/content/Context;)V

    .line 1154
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/common/e/d/a;->c()V

    .line 1155
    invoke-static {v0, p0}, Lcom/mintegral/msdk/base/common/e/c;->b(Ljava/lang/String;Landroid/content/Context;)Lcom/mintegral/msdk/base/common/net/l;

    move-result-object v0

    .line 1156
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->f:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/reward/d/a$3;

    invoke-direct {v3}, Lcom/mintegral/msdk/reward/d/a$3;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/mintegral/msdk/base/common/e/d/a;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c8} :catch_c9
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_c8} :catch_d7

    .line 1172
    :cond_c8
    :goto_c8
    return-void

    .line 1169
    :catch_c9
    move-exception v0

    .line 1170
    :try_start_ca
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1171
    sget-object v1, Lcom/mintegral/msdk/reward/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_d6} :catch_d7

    goto :goto_c8

    .line 230
    :catch_d7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c8
.end method

.method public static b(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 243
    if-eqz p0, :cond_d2

    if-eqz p1, :cond_d2

    :try_start_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 244
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "key=2000054&"

    .line 245
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network_type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unit_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    const-string v1, "reason=&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    const-string v1, "result=2&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    if-eqz p1, :cond_d3

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x11f

    if-ne v1, v2, :cond_d3

    .line 252
    const-string v1, "ad_type=3&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    :goto_7a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "creative="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "devid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    if-eqz p1, :cond_cb

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rid_n="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 265
    :cond_cb
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/mintegral/msdk/reward/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_d2
    :goto_d2
    return-void

    .line 253
    :cond_d3
    if-eqz p1, :cond_e8

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_e8

    .line 254
    const-string v1, "ad_type=1&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_e2} :catch_e3

    goto :goto_7a

    .line 268
    :catch_e3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d2

    .line 256
    :cond_e8
    :try_start_e8
    const-string v1, "ad_type=1&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_ed
    .catch Ljava/lang/Throwable; {:try_start_e8 .. :try_end_ed} :catch_e3

    goto :goto_7a
.end method
