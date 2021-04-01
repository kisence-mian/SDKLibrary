.class public Lcom/mintegral/msdk/videocommon/d/a;
.super Ljava/lang/Object;
.source "VideoReport.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/mintegral/msdk/videocommon/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/videocommon/d/a;->a:Ljava/lang/String;

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
    sget-object v0, Lcom/mintegral/msdk/videocommon/d/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;ILjava/lang/String;)V
    .registers 12

    .prologue
    .line 61
    if-eqz p0, :cond_33

    if-eqz p1, :cond_33

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 62
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    .line 63
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000023"

    .line 64
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoLength()I

    move-result v3

    .line 65
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_34

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v4

    :goto_20
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBty()I

    move-result v6

    invoke-static {p0, v2}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    .line 67
    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/q;->e(Lcom/mintegral/msdk/base/entity/q;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {p0, v0, p3}, Lcom/mintegral/msdk/videocommon/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_33
    return-void

    .line 65
    :cond_34
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v4

    goto :goto_20
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 74
    if-eqz p0, :cond_69

    .line 75
    :try_start_2
    invoke-static {p0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/w;->c()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_69

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 78
    const-string v1, "2000025"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 80
    const-string v2, "2000024"

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/b/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 82
    const-string v3, "2000044"

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/b/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-static {v2}, Lcom/mintegral/msdk/base/entity/q;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v1}, Lcom/mintegral/msdk/base/entity/q;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/q;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_4f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 98
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/mintegral/msdk/videocommon/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_69} :catch_6a

    .line 108
    :cond_69
    :goto_69
    return-void

    .line 106
    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 32
    if-eqz p0, :cond_24

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 34
    :try_start_e
    new-instance v0, Lcom/mintegral/msdk/base/common/e/d/a;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/common/e/d/a;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/e/d/a;->c()V

    .line 36
    invoke-static {p1, p0, p2}, Lcom/mintegral/msdk/base/common/e/c;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/base/common/net/l;

    move-result-object v1

    .line 37
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->f:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/videocommon/d/a$1;

    invoke-direct {v3}, Lcom/mintegral/msdk/videocommon/d/a$1;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Lcom/mintegral/msdk/base/common/e/d/a;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_25

    .line 54
    :cond_24
    :goto_24
    return-void

    .line 49
    :catch_25
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    sget-object v1, Lcom/mintegral/msdk/videocommon/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method
