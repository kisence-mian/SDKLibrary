.class public final Lcom/mintegral/msdk/videocommon/download/i;
.super Ljava/lang/Object;
.source "ResDownloadCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/videocommon/download/i$a;
    }
.end annotation


# static fields
.field private static b:Ljava/util/Map;
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


# instance fields
.field private a:Ljava/util/Map;
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

.field private c:Ljava/util/Map;
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

.field private d:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/download/i;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/i;->a:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/i;->c:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/i;->d:Ljava/util/Map;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mintegral/msdk/videocommon/download/i;-><init>()V

    return-void
.end method

.method public static a()Lcom/mintegral/msdk/videocommon/download/i;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/i$a;->a:Lcom/mintegral/msdk/videocommon/download/i;

    return-object v0
.end method

.method public static a(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 264
    if-nez p0, :cond_6

    move v0, v2

    .line 279
    :goto_5
    return v0

    .line 267
    :cond_6
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->e()Ljava/util/List;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_83

    .line 269
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;

    .line 270
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;->b:Ljava/util/List;

    if-eqz v1, :cond_10

    .line 271
    iget-object v0, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2283
    sget-object v1, Lcom/mintegral/msdk/videocommon/download/i;->b:Ljava/util/Map;

    .line 3191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_44

    move v1, v2

    .line 2284
    :goto_3d
    if-eqz v1, :cond_6d

    move v0, v2

    .line 272
    :goto_40
    if-nez v0, :cond_28

    move v0, v3

    .line 273
    goto :goto_5

    .line 3194
    :cond_44
    if-eqz v1, :cond_60

    .line 3195
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 3196
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_3d

    .line 3198
    :cond_57
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5e
    move v1, v3

    .line 3204
    goto :goto_3d

    .line 3201
    :cond_60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3202
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 2288
    :cond_6d
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/mintegral/msdk/base/common/c/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    move v0, v2

    .line 2289
    goto :goto_40

    :cond_81
    move v0, v1

    .line 2293
    goto :goto_40

    :cond_83
    move v0, v2

    .line 279
    goto :goto_5
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 81
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/i;->b:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videocommon/download/i;->b:Ljava/util/Map;

    .line 84
    :cond_b
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/i;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/i;->a:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/i;->a:Ljava/util/Map;

    .line 70
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/i;->a:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 47
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 56
    :cond_9
    return-void

    .line 50
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 51
    if-eqz v0, :cond_e

    .line 1088
    if-eqz v0, :cond_b4

    .line 1089
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    .line 1090
    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/i;->a:Ljava/util/Map;

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/i;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 1091
    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/i;->a:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    :cond_37
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v1

    .line 1095
    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/i;->c:Ljava/util/Map;

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/i;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 1096
    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/download/i;->c:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    :cond_50
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v1

    .line 1100
    if-eqz v1, :cond_b4

    .line 1101
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->e()Ljava/util/List;

    move-result-object v1

    .line 1102
    if-eqz v1, :cond_b4

    .line 1103
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;

    .line 1104
    if-eqz v1, :cond_60

    .line 1105
    iget-object v1, v1, Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;->b:Ljava/util/List;

    .line 1114
    if-eqz v1, :cond_60

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_60

    .line 1117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7c
    :goto_7c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7c

    .line 1121
    sget-object v5, Lcom/mintegral/msdk/videocommon/download/i;->b:Ljava/util/Map;

    if-eqz v5, :cond_7c

    sget-object v5, Lcom/mintegral/msdk/videocommon/download/i;->b:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    .line 1122
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/mintegral/msdk/base/common/c/b;->b(Ljava/lang/String;)Z

    move-result v5

    .line 1123
    sget-object v6, Lcom/mintegral/msdk/videocommon/download/i;->b:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    .line 53
    :cond_b4
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2059
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/i;->d:Ljava/util/Map;

    if-nez v1, :cond_c3

    .line 2060
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mintegral/msdk/videocommon/download/i;->d:Ljava/util/Map;

    .line 2062
    :cond_c3
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/i;->d:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/i;->c:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/i;->c:Ljava/util/Map;

    .line 77
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/i;->c:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method
