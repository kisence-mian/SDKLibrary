.class public final Lcom/mintegral/msdk/rover/c;
.super Ljava/lang/Object;
.source "RoverDoing.java"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field a:Lcom/mintegral/msdk/rover/d;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/rover/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "0"

    sput-object v0, Lcom/mintegral/msdk/rover/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;)V
    .registers 9

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/rover/c;->c:Ljava/util/List;

    .line 26
    new-instance v0, Lcom/mintegral/msdk/rover/c$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/rover/c$1;-><init>(Lcom/mintegral/msdk/rover/c;)V

    iput-object v0, p0, Lcom/mintegral/msdk/rover/c;->a:Lcom/mintegral/msdk/rover/d;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/rover/c;->f:Ljava/util/Map;

    .line 122
    new-instance v0, Lcom/mintegral/msdk/click/CommonJumpLoader;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/mintegral/msdk/click/CommonJumpLoader;-><init>(Landroid/content/Context;Z)V

    .line 123
    iput-object p1, p0, Lcom/mintegral/msdk/rover/c;->d:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 124
    iput-object p2, p0, Lcom/mintegral/msdk/rover/c;->e:Landroid/content/Context;

    .line 125
    const-string v1, "2"

    sget-object v2, Lcom/mintegral/msdk/rover/c;->b:Ljava/lang/String;

    new-instance v4, Lcom/mintegral/msdk/rover/c$3;

    invoke-direct {v4, p0}, Lcom/mintegral/msdk/rover/c$3;-><init>(Lcom/mintegral/msdk/rover/c;)V

    iget-object v5, p0, Lcom/mintegral/msdk/rover/c;->a:Lcom/mintegral/msdk/rover/d;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/click/CommonJumpLoader;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/d;Lcom/mintegral/msdk/rover/d;)V

    .line 156
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/rover/c;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mintegral/msdk/rover/c;->d:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/rover/c;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 20
    .line 1083
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/rover/c;->f:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 1084
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/rover/c;->f:Ljava/util/Map;

    .line 1086
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/rover/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1119
    :cond_13
    :goto_13
    return-void

    .line 1089
    :cond_14
    iget-object v0, p0, Lcom/mintegral/msdk/rover/c;->f:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "data:*/*;charset=utf-8;base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1096
    :cond_28
    new-instance v1, Lcom/mintegral/msdk/rover/e;

    invoke-direct {v1}, Lcom/mintegral/msdk/rover/e;-><init>()V

    .line 1097
    invoke-virtual {v1, p1}, Lcom/mintegral/msdk/rover/e;->a(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v1, p2}, Lcom/mintegral/msdk/rover/e;->a(I)V

    .line 1099
    invoke-virtual {v1, p3}, Lcom/mintegral/msdk/rover/e;->b(I)V

    .line 1100
    invoke-virtual {v1, p4}, Lcom/mintegral/msdk/rover/e;->c(I)V

    .line 1102
    invoke-static {p5}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1103
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/rover/e;->b(Ljava/lang/String;)V

    .line 1106
    if-nez p6, :cond_5a

    const-string v0, ""

    .line 1107
    :goto_44
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/rover/e;->c(Ljava/lang/String;)V

    .line 1108
    iget-object v0, p0, Lcom/mintegral/msdk/rover/c;->c:Ljava/util/List;

    if-eqz v0, :cond_5f

    .line 1109
    iget-object v0, p0, Lcom/mintegral/msdk/rover/c;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    goto :goto_13

    .line 1115
    :catch_51
    move-exception v0

    .line 1116
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 1117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 1106
    :cond_5a
    :try_start_5a
    invoke-static {p6}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 1111
    :cond_5f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/rover/c;->c:Ljava/util/List;

    .line 1112
    iget-object v0, p0, Lcom/mintegral/msdk/rover/c;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6b} :catch_51

    goto :goto_13
.end method

.method static synthetic b(Lcom/mintegral/msdk/rover/c;)V
    .registers 5

    .prologue
    .line 20
    .line 2055
    iget-object v0, p0, Lcom/mintegral/msdk/rover/c;->e:Landroid/content/Context;

    if-eqz v0, :cond_31

    .line 2056
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v1, p0, Lcom/mintegral/msdk/rover/c;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    .line 2057
    new-instance v1, Lcom/mintegral/msdk/rover/c$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/rover/c$2;-><init>(Lcom/mintegral/msdk/rover/c;)V

    .line 2071
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1d

    .line 2072
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2074
    :cond_1d
    iget-object v2, p0, Lcom/mintegral/msdk/rover/c;->d:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v3, p0, Lcom/mintegral/msdk/rover/c;->c:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v1}, Lcom/mintegral/msdk/base/common/e/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/util/List;Lcom/mintegral/msdk/rover/f;)V

    .line 2075
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_31

    .line 2076
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 20
    :cond_31
    return-void
.end method
