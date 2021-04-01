.class public Lcom/mintegral/msdk/widget/MTGAdChoice;
.super Lcom/mintegral/msdk/widget/MTGImageView;
.source "MTGAdChoice.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "MTGAdChoice"

    sput-object v0, Lcom/mintegral/msdk/widget/MTGAdChoice;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/widget/MTGImageView;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->b:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->c:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->d:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->e:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/mintegral/msdk/widget/MTGAdChoice;->b()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/widget/MTGImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->b:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->c:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->d:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->e:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/mintegral/msdk/widget/MTGAdChoice;->b()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/widget/MTGImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->b:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->c:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->d:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->e:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/mintegral/msdk/widget/MTGAdChoice;->b()V

    .line 53
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/mintegral/msdk/widget/MTGAdChoice;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .registers 2

    .prologue
    .line 57
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/widget/MTGAdChoice;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/widget/MTGAdChoice;->setClickable(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public performClick()Z
    .registers 4

    .prologue
    .line 106
    .line 1111
    iget-object v0, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1112
    iget-object v0, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 107
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public setCampaign(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    instance-of v2, p1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v2, :cond_8f

    check-cast p1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1065
    if-eqz p1, :cond_90

    .line 1066
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdchoice()Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 1067
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdchoice()Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_90

    .line 1068
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdchoice()Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_90

    .line 1069
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdchoice()Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_90

    move v2, v0

    .line 1070
    :goto_3f
    if-nez v2, :cond_94

    .line 1071
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v2

    .line 1072
    if-eqz v2, :cond_92

    .line 1073
    invoke-virtual {v2}, Lcom/mintegral/msdk/c/a;->bc()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_92

    .line 1074
    invoke-virtual {v2}, Lcom/mintegral/msdk/c/a;->be()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_92

    .line 1075
    invoke-virtual {v2}, Lcom/mintegral/msdk/c/a;->bd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_92

    .line 1077
    :goto_74
    iget-object v1, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/widget/MTGAdChoice;->setImageUrl(Ljava/lang/String;)V

    .line 82
    if-eqz v0, :cond_8f

    .line 1089
    iget-object v0, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->e:Landroid/content/Context;

    if-eqz v0, :cond_8f

    .line 1090
    iget-object v0, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/widget/MTGAdChoice;->b:Ljava/lang/String;

    new-instance v2, Lcom/mintegral/msdk/widget/MTGAdChoice$1;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/widget/MTGAdChoice$1;-><init>(Lcom/mintegral/msdk/widget/MTGAdChoice;)V

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    .line 86
    :cond_8f
    return-void

    :cond_90
    move v2, v1

    .line 1069
    goto :goto_3f

    :cond_92
    move v0, v1

    .line 1075
    goto :goto_74

    :cond_94
    move v0, v2

    goto :goto_74
.end method
