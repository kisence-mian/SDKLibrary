.class public final Lcom/mintegral/msdk/d/a;
.super Ljava/lang/Object;
.source "ShortCutsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/d/a$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field private static e:Ljava/lang/String;


# instance fields
.field private f:Lcom/mintegral/msdk/click/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string v0, "ShortCutsDataManager"

    sput-object v0, Lcom/mintegral/msdk/d/a;->e:Ljava/lang/String;

    .line 37
    const/4 v0, 0x3

    sput v0, Lcom/mintegral/msdk/d/a;->a:I

    .line 38
    const/4 v0, 0x1

    sput v0, Lcom/mintegral/msdk/d/a;->b:I

    .line 39
    const/4 v0, 0x4

    sput v0, Lcom/mintegral/msdk/d/a;->c:I

    .line 40
    const/4 v0, 0x5

    sput v0, Lcom/mintegral/msdk/d/a;->d:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mintegral/msdk/d/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/mintegral/msdk/d/a;
    .registers 1

    .prologue
    .line 50
    invoke-static {}, Lcom/mintegral/msdk/d/a$a;->a()Lcom/mintegral/msdk/d/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/d/a;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 10

    .prologue
    const/4 v6, 0x2

    .line 1151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1152
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_53

    .line 1153
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1156
    if-eqz v0, :cond_4b

    .line 1157
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 1158
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWtick()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2d

    if-eqz v3, :cond_2d

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1159
    :cond_2d
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2127
    if-eqz v0, :cond_4b

    .line 2128
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4b

    .line 2132
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getJmPd()I

    move-result v3

    packed-switch v3, :pswitch_data_54

    .line 2141
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4b

    .line 2142
    invoke-virtual {p0, p1, v0, v6}, Lcom/mintegral/msdk/d/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;I)V

    .line 1152
    :cond_4b
    :goto_4b
    :pswitch_4b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 2136
    :pswitch_4f
    invoke-virtual {p0, p1, v0, v6}, Lcom/mintegral/msdk/d/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;I)V

    goto :goto_4b

    .line 35
    :cond_53
    return-object v2

    .line 2132
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4f
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILcom/mintegral/msdk/d/a/a;)V
    .registers 6

    .prologue
    .line 55
    new-instance v0, Lcom/mintegral/msdk/d/a$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/mintegral/msdk/d/a$1;-><init>(Lcom/mintegral/msdk/d/a;Landroid/content/Context;Lcom/mintegral/msdk/d/a/a;I)V

    .line 123
    new-instance v1, Lcom/mintegral/msdk/base/common/f/b;

    invoke-direct {v1, p1}, Lcom/mintegral/msdk/base/common/f/b;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/common/f/b;->b(Lcom/mintegral/msdk/base/common/f/a;)V

    .line 125
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;I)V
    .registers 6

    .prologue
    .line 180
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 181
    if-nez v0, :cond_18

    .line 182
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 184
    :cond_18
    iget-object v1, p0, Lcom/mintegral/msdk/d/a;->f:Lcom/mintegral/msdk/click/a;

    if-nez v1, :cond_27

    .line 185
    new-instance v1, Lcom/mintegral/msdk/click/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/mintegral/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mintegral/msdk/d/a;->f:Lcom/mintegral/msdk/click/a;

    .line 187
    :cond_27
    const/4 v0, 0x1

    if-ne p3, v0, :cond_30

    .line 188
    iget-object v0, p0, Lcom/mintegral/msdk/d/a;->f:Lcom/mintegral/msdk/click/a;

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 193
    :cond_2f
    :goto_2f
    return-void

    .line 189
    :cond_30
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2f

    .line 190
    iget-object v0, p0, Lcom/mintegral/msdk/d/a;->f:Lcom/mintegral/msdk/click/a;

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    goto :goto_2f
.end method

.method public final a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/d/a/a;)V
    .registers 5

    .prologue
    .line 173
    sget v0, Lcom/mintegral/msdk/d/a;->d:I

    invoke-virtual {p0, p1, v0, p3}, Lcom/mintegral/msdk/d/a;->a(Landroid/content/Context;ILcom/mintegral/msdk/d/a/a;)V

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mintegral/msdk/d/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;I)V

    .line 175
    return-void
.end method
