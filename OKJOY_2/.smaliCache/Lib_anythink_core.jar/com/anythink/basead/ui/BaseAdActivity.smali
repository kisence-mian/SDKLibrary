.class public Lcom/anythink/basead/ui/BaseAdActivity;
.super Landroid/app/Activity;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/anythink/basead/ui/FullScreenAdView;

.field private c:Lcom/anythink/core/common/d/i;

.field private d:Lcom/anythink/core/common/d/h;

.field private e:Ljava/lang/String;

.field private f:Lcom/anythink/basead/f/b$b;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:J

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/anythink/basead/ui/BaseAdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/basead/ui/BaseAdActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/ui/BaseAdActivity;)Lcom/anythink/basead/f/b$b;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->f:Lcom/anythink/basead/f/b$b;

    return-object p0
.end method

.method private a()V
    .registers 4

    .line 72
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_5d

    .line 75
    :try_start_6
    const-string v1, "extra_scenario"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->g:Ljava/lang/String;

    .line 76
    const-string v1, "extra_ad_format"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->h:I

    .line 77
    const-string v1, "extra_offer_ad"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/d/h;

    iput-object v1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->d:Lcom/anythink/core/common/d/h;

    .line 78
    const-string v1, "extra_request_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/d/i;

    iput-object v1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->c:Lcom/anythink/core/common/d/i;

    .line 79
    const-string v1, "extra_event_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->e:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->c:Lcom/anythink/core/common/d/i;

    if-eqz v0, :cond_77

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    if-eqz v0, :cond_77

    .line 82
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->c:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->l()I

    move-result v0

    if-lez v0, :cond_51

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->c:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->l()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_5a

    :cond_51
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->c:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->l()I

    move-result v0

    int-to-long v0, v0

    :goto_5a
    iput-wide v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->i:J

    return-void

    .line 85
    :cond_5d
    sget-object v0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/anythink/basead/ui/BaseAdActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Intent is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_77} :catch_78

    .line 89
    :cond_77
    return-void

    .line 88
    :catch_78
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/basead/c/a;)V
    .registers 5

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    iget v1, p1, Lcom/anythink/basead/c/a;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    .line 56
    const-class v1, Lcom/anythink/basead/ui/AdLandscapeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_15

    .line 58
    :cond_10
    const-class v1, Lcom/anythink/basead/ui/AdPortraitActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    :goto_15
    iget-object v1, p1, Lcom/anythink/basead/c/a;->b:Ljava/lang/String;

    const-string v2, "extra_scenario"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget v1, p1, Lcom/anythink/basead/c/a;->a:I

    const-string v2, "extra_ad_format"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    iget-object v1, p1, Lcom/anythink/basead/c/a;->c:Lcom/anythink/core/common/d/h;

    const-string v2, "extra_offer_ad"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 64
    iget-object v1, p1, Lcom/anythink/basead/c/a;->d:Ljava/lang/String;

    const-string v2, "extra_event_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object p1, p1, Lcom/anythink/basead/c/a;->g:Lcom/anythink/core/common/d/i;

    const-string v1, "extra_request_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 67
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 3

    .line 161
    if-eqz p1, :cond_a

    .line 162
    const-string v0, "extra_is_show_end_card"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->k:Z

    .line 164
    :cond_a
    return-void
.end method

.method private b()Lcom/anythink/basead/ui/FullScreenAdView;
    .registers 9

    .line 102
    new-instance v7, Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseAdActivity;->c:Lcom/anythink/core/common/d/i;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseAdActivity;->d:Lcom/anythink/core/common/d/h;

    iget-object v4, p0, Lcom/anythink/basead/ui/BaseAdActivity;->g:Ljava/lang/String;

    iget v5, p0, Lcom/anythink/basead/ui/BaseAdActivity;->h:I

    iget v6, p0, Lcom/anythink/basead/ui/BaseAdActivity;->j:I

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/anythink/basead/ui/FullScreenAdView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;II)V

    return-object v7
.end method

.method private c()V
    .registers 4

    .line 168
    new-instance v0, Lcom/anythink/basead/ui/BaseAdActivity$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BaseAdActivity$1;-><init>(Lcom/anythink/basead/ui/BaseAdActivity;)V

    .line 229
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->b:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v1, v0}, Lcom/anythink/basead/ui/FullScreenAdView;->setListener(Lcom/anythink/basead/f/b$b;)V

    .line 230
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->b:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-wide v1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->i:J

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/ui/FullScreenAdView;->setShowBannerTime(J)V

    .line 231
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->b:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-boolean v1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->k:Z

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/FullScreenAdView;->setIsShowEndCard(Z)V

    .line 234
    :try_start_18
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->b:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->init()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1e

    .line 239
    return-void

    .line 236
    :catchall_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdActivity;->finish()V

    .line 240
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_18

    .line 113
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Landroid/content/Context;)V

    .line 116
    :cond_18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseAdActivity;->requestWindowFeature(I)Z

    .line 117
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 119
    instance-of v1, p0, Lcom/anythink/basead/ui/AdLandscapeActivity;

    if-eqz v1, :cond_2d

    .line 120
    const/4 v1, 0x2

    iput v1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->j:I

    goto :goto_2f

    .line 122
    :cond_2d
    iput v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->j:I

    .line 124
    :goto_2f
    nop

    .line 1072
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1074
    if-eqz v1, :cond_8c

    .line 1075
    :try_start_36
    const-string v2, "extra_scenario"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/basead/ui/BaseAdActivity;->g:Ljava/lang/String;

    .line 1076
    const-string v2, "extra_ad_format"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->h:I

    .line 1077
    const-string v0, "extra_offer_ad"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/d/h;

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->d:Lcom/anythink/core/common/d/h;

    .line 1078
    const-string v0, "extra_request_info"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/d/i;

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->c:Lcom/anythink/core/common/d/i;

    .line 1079
    const-string v0, "extra_event_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->e:Ljava/lang/String;

    .line 1081
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->c:Lcom/anythink/core/common/d/i;

    if-eqz v0, :cond_a6

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    if-eqz v0, :cond_a6

    .line 1082
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->c:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->l()I

    move-result v0

    if-lez v0, :cond_80

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->c:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->l()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_89

    :cond_80
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->c:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->l()I

    move-result v0

    int-to-long v0, v0

    :goto_89
    iput-wide v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->i:J

    goto :goto_ab

    .line 1085
    :cond_8c
    sget-object v0, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/anythink/basead/ui/BaseAdActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Intent is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_a6} :catch_a7

    .line 1089
    :cond_a6
    goto :goto_ab

    .line 1088
    :catch_a7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    :goto_ab
    invoke-static {}, Lcom/anythink/basead/f/b;->a()Lcom/anythink/basead/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/f/b;->a(Ljava/lang/String;)Lcom/anythink/basead/f/b$b;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->f:Lcom/anythink/basead/f/b$b;

    .line 127
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->c:Lcom/anythink/core/common/d/i;

    const-string v1, "40002"

    if-eqz v0, :cond_14f

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    if-nez v0, :cond_c3

    goto/16 :goto_14f

    .line 140
    :cond_c3
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->d:Lcom/anythink/core/common/d/h;

    if-nez v0, :cond_106

    .line 141
    sget-object p1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/anythink/basead/ui/BaseAdActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " onCreate: OfferAd = null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_e1
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->f:Lcom/anythink/basead/f/b$b;

    if-eqz p1, :cond_fd

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/f/b$b;->a(Lcom/anythink/basead/c/f;)V
    :try_end_fd
    .catchall {:try_start_e1 .. :try_end_fd} :catchall_fe

    .line 148
    :cond_fd
    goto :goto_102

    .line 147
    :catchall_fe
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    :goto_102
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdActivity;->finish()V

    .line 150
    return-void

    .line 153
    :cond_106
    nop

    .line 1161
    if-eqz p1, :cond_111

    .line 1162
    const-string v0, "extra_is_show_end_card"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->k:Z

    .line 154
    :cond_111
    nop

    .line 2102
    new-instance p1, Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseAdActivity;->c:Lcom/anythink/core/common/d/i;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseAdActivity;->d:Lcom/anythink/core/common/d/h;

    iget-object v4, p0, Lcom/anythink/basead/ui/BaseAdActivity;->g:Ljava/lang/String;

    iget v5, p0, Lcom/anythink/basead/ui/BaseAdActivity;->h:I

    iget v6, p0, Lcom/anythink/basead/ui/BaseAdActivity;->j:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/anythink/basead/ui/FullScreenAdView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;II)V

    .line 154
    iput-object p1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->b:Lcom/anythink/basead/ui/FullScreenAdView;

    .line 156
    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BaseAdActivity;->setContentView(Landroid/view/View;)V

    .line 157
    nop

    .line 2168
    new-instance p1, Lcom/anythink/basead/ui/BaseAdActivity$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/BaseAdActivity$1;-><init>(Lcom/anythink/basead/ui/BaseAdActivity;)V

    .line 2229
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->b:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/FullScreenAdView;->setListener(Lcom/anythink/basead/f/b$b;)V

    .line 2230
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->b:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-wide v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->i:J

    invoke-virtual {p1, v0, v1}, Lcom/anythink/basead/ui/FullScreenAdView;->setShowBannerTime(J)V

    .line 2231
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->b:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->k:Z

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/FullScreenAdView;->setIsShowEndCard(Z)V

    .line 2234
    :try_start_141
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->b:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/FullScreenAdView;->init()V
    :try_end_146
    .catchall {:try_start_141 .. :try_end_146} :catchall_147

    .line 2239
    return-void

    .line 2236
    :catchall_147
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2238
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdActivity;->finish()V

    .line 158
    return-void

    .line 128
    :cond_14f
    :goto_14f
    sget-object p1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/anythink/basead/ui/BaseAdActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Start FullScreen Ad Error."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :try_start_169
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseAdActivity;->f:Lcom/anythink/basead/f/b$b;

    if-eqz p1, :cond_185

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/f/b$b;->a(Lcom/anythink/basead/c/f;)V
    :try_end_185
    .catchall {:try_start_169 .. :try_end_185} :catchall_186

    .line 135
    :cond_185
    goto :goto_18a

    .line 134
    :catchall_186
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    :goto_18a
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdActivity;->finish()V

    .line 137
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->b:Lcom/anythink/basead/ui/FullScreenAdView;

    if-eqz v0, :cond_7

    .line 274
    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->n()V

    .line 277
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 278
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 282
    const/4 v0, 0x4

    if-ne v0, p1, :cond_5

    .line 283
    const/4 p1, 0x1

    return p1

    .line 285
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .registers 2

    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 265
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->b:Lcom/anythink/basead/ui/FullScreenAdView;

    if-eqz v0, :cond_a

    .line 266
    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->m()V

    .line 268
    :cond_a
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 256
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->b:Lcom/anythink/basead/ui/FullScreenAdView;

    if-eqz v0, :cond_a

    .line 257
    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->l()V

    .line 259
    :cond_a
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 245
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 246
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdActivity;->b:Lcom/anythink/basead/ui/FullScreenAdView;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->isShowEndCard()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 247
    sget-object v0, Lcom/anythink/basead/ui/BaseAdActivity;->a:Ljava/lang/String;

    const-string v1, "onSaveInstanceState... mFullScreenAdView.isShowEndCard() - true"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x1

    const-string v1, "extra_is_show_end_card"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    :cond_1a
    return-void
.end method
