.class public Lcom/anythink/myoffer/ui/MyOfferAdActivity;
.super Landroid/app/Activity;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:I = 0x1

.field public static final c:I = 0x3

.field private static final l:Ljava/lang/String; = "extra_request_id"

.field private static final m:Ljava/lang/String; = "extra_scenario"

.field private static final n:Ljava/lang/String; = "extra_ad_format"

.field private static final o:Ljava/lang/String; = "extra_myoffer_ad"

.field private static final p:Ljava/lang/String; = "extra_placement_id"

.field private static final q:Ljava/lang/String; = "extra_offer_id"

.field private static final r:Ljava/lang/String; = "extra_myoffer_setting"

.field private static final s:Ljava/lang/String; = "extra_timestamp"

.field private static final t:Ljava/lang/String; = "extra_is_show_end_card"


# instance fields
.field private A:Lcom/anythink/myoffer/ui/c;

.field private B:Lcom/anythink/myoffer/ui/d;

.field private C:J

.field private D:I

.field private E:I

.field private F:Z

.field private G:Lcom/anythink/myoffer/a/d;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/anythink/myoffer/c/a;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/anythink/myoffer/c/c;

.field private k:J

.field private u:Z

.field private v:Lcom/anythink/myoffer/e/a/c$b;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Lcom/anythink/myoffer/ui/f;

.field private y:Lcom/anythink/myoffer/ui/e;

.field private z:Lcom/anythink/myoffer/ui/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_5c

    .line 106
    :try_start_6
    const-string v0, "extra_request_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->d:Ljava/lang/String;

    .line 107
    const-string v0, "extra_scenario"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->e:Ljava/lang/String;

    .line 108
    const-string v0, "extra_ad_format"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->f:I

    .line 109
    const-string v0, "extra_myoffer_ad"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/c/a;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    .line 110
    const-string v0, "extra_placement_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h:Ljava/lang/String;

    .line 111
    const-string v0, "extra_offer_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->i:Ljava/lang/String;

    .line 112
    const-string v0, "extra_myoffer_setting"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/c/c;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j:Lcom/anythink/myoffer/c/c;

    .line 113
    const-string v0, "extra_timestamp"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->k:J

    .line 115
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j:Lcom/anythink/myoffer/c/c;

    if-eqz v0, :cond_5c

    .line 116
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j:Lcom/anythink/myoffer/c/c;

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/c;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->C:J
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5c} :catch_5d

    .line 122
    :cond_5c
    :goto_5c
    return-void

    .line 120
    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/anythink/myoffer/c/a;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/myoffer/c/c;IJ)V
    .registers 14

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    const/4 v1, 0x2

    if-ne p8, v1, :cond_3e

    .line 84
    const-class v1, Lcom/anythink/myoffer/ui/MyOfferLandscapeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 89
    :goto_d
    const-string v1, "extra_request_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "extra_scenario"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v1, "extra_ad_format"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const-string v1, "extra_myoffer_ad"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 93
    const-string v1, "extra_placement_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "extra_offer_id"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "extra_myoffer_setting"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    const-string v1, "extra_timestamp"

    invoke-virtual {v0, v1, p9, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 98
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void

    .line 86
    :cond_3e
    const-class v1, Lcom/anythink/myoffer/ui/MyOfferPortraitActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_d
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 153
    if-eqz p1, :cond_a

    .line 154
    const-string v0, "extra_is_show_end_card"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->u:Z

    .line 156
    :cond_a
    return-void
.end method

.method static synthetic a(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V
    .registers 4

    .prologue
    .line 4388
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "click \u3002\u3002\u3002\u3002\u3002"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4390
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->F:Z

    if-eqz v0, :cond_13

    .line 4391
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "during click \u3002\u3002\u3002\u3002\u3002"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4392
    :cond_12
    :goto_12
    return-void

    .line 4394
    :cond_13
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    if-eqz v0, :cond_12

    .line 4398
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->v:Lcom/anythink/myoffer/e/a/c$b;

    if-eqz v0, :cond_20

    .line 4399
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->v:Lcom/anythink/myoffer/e/a/c$b;

    invoke-interface {v0}, Lcom/anythink/myoffer/e/a/c$b;->f()V

    .line 4401
    :cond_20
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/a;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Ljava/lang/String;)V

    .line 4403
    new-instance v0, Lcom/anythink/myoffer/a/d;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    invoke-direct {v0, p0, v1}, Lcom/anythink/myoffer/a/d;-><init>(Landroid/content/Context;Lcom/anythink/myoffer/c/a;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->G:Lcom/anythink/myoffer/a/d;

    .line 4404
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->G:Lcom/anythink/myoffer/a/d;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->d:Ljava/lang/String;

    new-instance v2, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    invoke-direct {v2, p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;-><init>(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/myoffer/a/d;->a(Ljava/lang/String;Lcom/anythink/myoffer/a/d$a;)V

    goto :goto_12
.end method

.method static synthetic a(Lcom/anythink/myoffer/ui/MyOfferAdActivity;Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Lcom/anythink/network/myoffer/MyOfferError;)V

    return-void
.end method

.method private a(Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->v:Lcom/anythink/myoffer/e/a/c$b;

    if-eqz v0, :cond_9

    .line 323
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->v:Lcom/anythink/myoffer/e/a/c$b;

    invoke-interface {v0, p1}, Lcom/anythink/myoffer/e/a/c$b;->a(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 325
    :cond_9
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->finish()V

    .line 326
    return-void
.end method

.method static synthetic a(Lcom/anythink/myoffer/ui/MyOfferAdActivity;Z)Z
    .registers 2

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->F:Z

    return p1
.end method

.method private b()I
    .registers 3

    .prologue
    .line 134
    const-string v0, "myoffer_activity_ad"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/c;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j:Lcom/anythink/myoffer/c/c;

    return-object v0
.end method

.method private c()V
    .registers 5

    .prologue
    .line 159
    .line 3181
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3182
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->D:I

    .line 3183
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->E:I

    .line 161
    const-string v0, "myoffer_rl_root"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->w:Landroid/widget/RelativeLayout;

    .line 163
    invoke-static {}, Lcom/anythink/myoffer/e/a/c;->a()Lcom/anythink/myoffer/e/a/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/e/a/c;->a(Ljava/lang/String;)Lcom/anythink/myoffer/e/a/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->v:Lcom/anythink/myoffer/e/a/c$b;

    .line 165
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->u:Z

    if-eqz v0, :cond_4d

    .line 166
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j()V

    .line 178
    :cond_4c
    :goto_4c
    return-void

    .line 167
    :cond_4d
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/a;->D()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 3219
    new-instance v0, Lcom/anythink/myoffer/ui/f;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->w:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;

    invoke-direct {v2, p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;-><init>(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/anythink/myoffer/ui/f;-><init>(Landroid/view/ViewGroup;Lcom/anythink/myoffer/ui/f$a;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    .line 3302
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j:Lcom/anythink/myoffer/c/c;

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/f;->a(Lcom/anythink/myoffer/c/c;)V

    .line 3303
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/f;->a(Ljava/lang/String;)V

    goto :goto_4c

    .line 169
    :cond_76
    const/4 v0, 0x1

    iget v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->f:I

    if-ne v0, v1, :cond_87

    .line 170
    const-string v0, "40002"

    const-string v1, "Video url no exist!"

    invoke-static {v0, v1}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Lcom/anythink/network/myoffer/MyOfferError;)V

    goto :goto_4c

    .line 172
    :cond_87
    const/4 v0, 0x3

    iget v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->f:I

    if-ne v0, v1, :cond_4c

    .line 174
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j()V

    .line 175
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h()V

    goto :goto_4c
.end method

.method static synthetic c(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h()V

    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 182
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->D:I

    .line 183
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->E:I

    .line 191
    return-void
.end method

.method static synthetic d(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V
    .registers 2

    .prologue
    .line 31
    .line 5307
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->v:Lcom/anythink/myoffer/e/a/c$b;

    if-eqz v0, :cond_9

    .line 5308
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->v:Lcom/anythink/myoffer/e/a/c$b;

    invoke-interface {v0}, Lcom/anythink/myoffer/e/a/c$b;->b()V

    .line 5310
    :cond_9
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/a;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method static synthetic e(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/ui/a;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->z:Lcom/anythink/myoffer/ui/a;

    return-object v0
.end method

.method private e()V
    .registers 5

    .prologue
    .line 194
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->z:Lcom/anythink/myoffer/ui/a;

    if-eqz v0, :cond_5

    .line 216
    :goto_4
    return-void

    .line 197
    :cond_5
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .line 198
    const/4 v1, 0x1

    if-le v0, v1, :cond_1a

    .line 199
    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-lez v0, :cond_1a

    .line 200
    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    .line 199
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 203
    :cond_1a
    new-instance v0, Lcom/anythink/myoffer/ui/a;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->w:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    new-instance v3, Lcom/anythink/myoffer/ui/MyOfferAdActivity$1;

    invoke-direct {v3, p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity$1;-><init>(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/myoffer/ui/a;-><init>(Landroid/view/ViewGroup;Lcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/ui/a$a;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->z:Lcom/anythink/myoffer/ui/a;

    goto :goto_4
.end method

.method static synthetic f(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)J
    .registers 3

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->C:J

    return-wide v0
.end method

.method private f()V
    .registers 4

    .prologue
    .line 219
    new-instance v0, Lcom/anythink/myoffer/ui/f;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->w:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;

    invoke-direct {v2, p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;-><init>(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/anythink/myoffer/ui/f;-><init>(Landroid/view/ViewGroup;Lcom/anythink/myoffer/ui/f$a;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    .line 302
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j:Lcom/anythink/myoffer/c/c;

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/f;->a(Lcom/anythink/myoffer/c/c;)V

    .line 303
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/f;->a(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private g()V
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->v:Lcom/anythink/myoffer/e/a/c$b;

    if-eqz v0, :cond_9

    .line 308
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->v:Lcom/anythink/myoffer/e/a/c$b;

    invoke-interface {v0}, Lcom/anythink/myoffer/e/a/c$b;->b()V

    .line 310
    :cond_9
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/a;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method static synthetic g(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V
    .registers 1

    .prologue
    .line 31
    .line 5384
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->e()V

    .line 31
    return-void
.end method

.method static synthetic h(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/a;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    return-object v0
.end method

.method private h()V
    .registers 4

    .prologue
    .line 314
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->v:Lcom/anythink/myoffer/e/a/c$b;

    if-eqz v0, :cond_9

    .line 315
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->v:Lcom/anythink/myoffer/e/a/c$b;

    invoke-interface {v0}, Lcom/anythink/myoffer/e/a/c$b;->a()V

    .line 317
    :cond_9
    new-instance v0, Lcom/anythink/myoffer/d/b;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/anythink/myoffer/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/anythink/myoffer/d/b;->a(ILcom/anythink/core/b/e/e;)V

    .line 318
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/a;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method static synthetic i(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/e/a/c$b;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->v:Lcom/anythink/myoffer/e/a/c$b;

    return-object v0
.end method

.method private i()V
    .registers 7

    .prologue
    .line 329
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->y:Lcom/anythink/myoffer/ui/e;

    if-nez v0, :cond_18

    .line 330
    new-instance v0, Lcom/anythink/myoffer/ui/e;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->w:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->D:I

    iget v3, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->E:I

    iget-object v4, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    new-instance v5, Lcom/anythink/myoffer/ui/MyOfferAdActivity$3;

    invoke-direct {v5, p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity$3;-><init>(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    invoke-direct/range {v0 .. v5}, Lcom/anythink/myoffer/ui/e;-><init>(Landroid/view/ViewGroup;IILcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/ui/e$a;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->y:Lcom/anythink/myoffer/ui/e;

    .line 3384
    :cond_18
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->e()V

    .line 343
    return-void
.end method

.method private j()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 346
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "showEndCard......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->u:Z

    .line 348
    new-instance v0, Lcom/anythink/myoffer/ui/c;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->w:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->D:I

    iget v3, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->E:I

    iget-object v4, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    new-instance v5, Lcom/anythink/myoffer/ui/MyOfferAdActivity$4;

    invoke-direct {v5, p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity$4;-><init>(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    invoke-direct/range {v0 .. v5}, Lcom/anythink/myoffer/ui/c;-><init>(Landroid/view/ViewGroup;IILcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/ui/c$a;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->A:Lcom/anythink/myoffer/ui/c;

    .line 4384
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->e()V

    .line 371
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    if-eqz v0, :cond_2f

    .line 372
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->w:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 373
    iput-object v6, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    .line 375
    :cond_2f
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->y:Lcom/anythink/myoffer/ui/e;

    if-eqz v0, :cond_3c

    .line 376
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->w:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->y:Lcom/anythink/myoffer/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 377
    iput-object v6, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->y:Lcom/anythink/myoffer/ui/e;

    .line 380
    :cond_3c
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/a;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method static synthetic j(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j()V

    return-void
.end method

.method static synthetic k(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/ui/f;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    return-object v0
.end method

.method private k()V
    .registers 1

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->e()V

    .line 385
    return-void
.end method

.method private l()V
    .registers 4

    .prologue
    .line 388
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "click \u3002\u3002\u3002\u3002\u3002"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->F:Z

    if-eqz v0, :cond_13

    .line 391
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "during click \u3002\u3002\u3002\u3002\u3002"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_12
    :goto_12
    return-void

    .line 394
    :cond_13
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    if-eqz v0, :cond_12

    .line 398
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->v:Lcom/anythink/myoffer/e/a/c$b;

    if-eqz v0, :cond_20

    .line 399
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->v:Lcom/anythink/myoffer/e/a/c$b;

    invoke-interface {v0}, Lcom/anythink/myoffer/e/a/c$b;->f()V

    .line 401
    :cond_20
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/a;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Ljava/lang/String;)V

    .line 403
    new-instance v0, Lcom/anythink/myoffer/a/d;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    invoke-direct {v0, p0, v1}, Lcom/anythink/myoffer/a/d;-><init>(Landroid/content/Context;Lcom/anythink/myoffer/c/a;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->G:Lcom/anythink/myoffer/a/d;

    .line 404
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->G:Lcom/anythink/myoffer/a/d;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->d:Ljava/lang/String;

    new-instance v2, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;

    invoke-direct {v2, p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity$5;-><init>(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/myoffer/a/d;->a(Ljava/lang/String;Lcom/anythink/myoffer/a/d$a;)V

    goto :goto_12
.end method

.method static synthetic l(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V
    .registers 3

    .prologue
    .line 31
    .line 5458
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->B:Lcom/anythink/myoffer/ui/d;

    if-nez v0, :cond_d

    .line 5459
    new-instance v0, Lcom/anythink/myoffer/ui/d;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->w:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Lcom/anythink/myoffer/ui/d;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->B:Lcom/anythink/myoffer/ui/d;

    .line 5461
    :cond_d
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->B:Lcom/anythink/myoffer/ui/d;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/d;->a()V

    .line 31
    return-void
.end method

.method private m()V
    .registers 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->B:Lcom/anythink/myoffer/ui/d;

    if-nez v0, :cond_d

    .line 459
    new-instance v0, Lcom/anythink/myoffer/ui/d;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->w:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Lcom/anythink/myoffer/ui/d;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->B:Lcom/anythink/myoffer/ui/d;

    .line 461
    :cond_d
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->B:Lcom/anythink/myoffer/ui/d;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/d;->a()V

    .line 462
    return-void
.end method

.method static synthetic m(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V
    .registers 2

    .prologue
    .line 31
    .line 5465
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->B:Lcom/anythink/myoffer/ui/d;

    if-eqz v0, :cond_9

    .line 5466
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->B:Lcom/anythink/myoffer/ui/d;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/d;->b()V

    .line 31
    :cond_9
    return-void
.end method

.method static synthetic n(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->B:Lcom/anythink/myoffer/ui/d;

    if-eqz v0, :cond_9

    .line 466
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->B:Lcom/anythink/myoffer/ui/d;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/d;->b()V

    .line 468
    :cond_9
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 471
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "sendTk --> "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v0, Lcom/anythink/myoffer/d/a;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->d:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/anythink/myoffer/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/d/a;->c(Ljava/lang/String;)V

    .line 474
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/anythink/myoffer/d/a;->a(ILcom/anythink/core/b/e/e;)V

    .line 475
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/16 v1, 0x400

    const/4 v4, 0x1

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0, v4}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->requestWindowFeature(I)Z

    .line 143
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 1103
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1105
    if-eqz v1, :cond_6c

    .line 1106
    :try_start_16
    const-string v0, "extra_request_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->d:Ljava/lang/String;

    .line 1107
    const-string v0, "extra_scenario"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->e:Ljava/lang/String;

    .line 1108
    const-string v0, "extra_ad_format"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->f:I

    .line 1109
    const-string v0, "extra_myoffer_ad"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/c/a;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    .line 1110
    const-string v0, "extra_placement_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h:Ljava/lang/String;

    .line 1111
    const-string v0, "extra_offer_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->i:Ljava/lang/String;

    .line 1112
    const-string v0, "extra_myoffer_setting"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/c/c;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j:Lcom/anythink/myoffer/c/c;

    .line 1113
    const-string v0, "extra_timestamp"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->k:J

    .line 1115
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j:Lcom/anythink/myoffer/c/c;

    if-eqz v0, :cond_6c

    .line 1116
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j:Lcom/anythink/myoffer/c/c;

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/c;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->C:J
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_6c} :catch_ce

    .line 1153
    :cond_6c
    :goto_6c
    if-eqz p1, :cond_76

    .line 1154
    const-string v0, "extra_is_show_end_card"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->u:Z

    .line 2134
    :cond_76
    const-string v0, "myoffer_activity_ad"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->setContentView(I)V

    .line 2181
    invoke-virtual {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2182
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->D:I

    .line 2183
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->E:I

    .line 2161
    const-string v0, "myoffer_rl_root"

    const-string v1, "id"

    invoke-static {p0, v0, v1}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->w:Landroid/widget/RelativeLayout;

    .line 2163
    invoke-static {}, Lcom/anythink/myoffer/e/a/c;->a()Lcom/anythink/myoffer/e/a/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/e/a/c;->a(Ljava/lang/String;)Lcom/anythink/myoffer/e/a/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->v:Lcom/anythink/myoffer/e/a/c$b;

    .line 2165
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->u:Z

    if-eqz v0, :cond_d3

    .line 2166
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j()V

    .line 2171
    :cond_cd
    :goto_cd
    return-void

    .line 1120
    :catch_ce
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6c

    .line 2167
    :cond_d3
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/a;->D()Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 2219
    new-instance v0, Lcom/anythink/myoffer/ui/f;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->w:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;

    invoke-direct {v2, p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;-><init>(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/anythink/myoffer/ui/f;-><init>(Landroid/view/ViewGroup;Lcom/anythink/myoffer/ui/f$a;)V

    iput-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    .line 2302
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j:Lcom/anythink/myoffer/c/c;

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/f;->a(Lcom/anythink/myoffer/c/c;)V

    .line 2303
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/f;->a(Ljava/lang/String;)V

    goto :goto_cd

    .line 2169
    :cond_fc
    iget v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->f:I

    if-ne v4, v0, :cond_10c

    .line 2170
    const-string v0, "40002"

    const-string v1, "Video url no exist!"

    invoke-static {v0, v1}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Lcom/anythink/network/myoffer/MyOfferError;)V

    goto :goto_cd

    .line 2172
    :cond_10c
    const/4 v0, 0x3

    iget v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->f:I

    if-ne v0, v1, :cond_cd

    .line 2174
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j()V

    .line 2175
    invoke-direct {p0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h()V

    goto :goto_cd
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->G:Lcom/anythink/myoffer/a/d;

    if-eqz v0, :cond_9

    .line 513
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->G:Lcom/anythink/myoffer/a/d;

    invoke-virtual {v0}, Lcom/anythink/myoffer/a/d;->a()V

    .line 516
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 517
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 521
    const/4 v0, 0x4

    if-ne v0, p1, :cond_5

    .line 522
    const/4 v0, 0x1

    .line 524
    :goto_4
    return v0

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 502
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 504
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    if-eqz v0, :cond_c

    .line 505
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/f;->c()V

    .line 507
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 489
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 492
    :try_start_3
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/f;->e()Z

    move-result v0

    if-nez v0, :cond_14

    .line 493
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->x:Lcom/anythink/myoffer/ui/f;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/f;->b()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_15

    .line 498
    :cond_14
    :goto_14
    return-void

    .line 496
    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 479
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 480
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "onSaveInstanceState..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-boolean v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->u:Z

    if-eqz v0, :cond_1b

    .line 482
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "onSaveInstanceState... mIsShowEndCard - true"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v0, "extra_is_show_end_card"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 485
    :cond_1b
    return-void
.end method
