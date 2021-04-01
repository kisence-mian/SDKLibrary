.class public final Lcom/alphab/b/a;
.super Ljava/lang/Object;
.source "ExploreGPUrl.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alphab/b/b;

.field private c:Lcom/mintegral/msdk/click/e;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alphab/b/a;->a:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/alphab/b/a;->d:I

    .line 29
    new-instance v0, Lcom/mintegral/msdk/click/e;

    invoke-direct {v0}, Lcom/mintegral/msdk/click/e;-><init>()V

    iput-object v0, p0, Lcom/alphab/b/a;->c:Lcom/mintegral/msdk/click/e;

    .line 30
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/mintegral/msdk/click/e$a;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 72
    .line 74
    :try_start_1
    iget-object v1, p0, Lcom/alphab/b/a;->c:Lcom/mintegral/msdk/click/e;

    if-eqz v1, :cond_13

    .line 75
    iget-object v1, p0, Lcom/alphab/b/a;->c:Lcom/mintegral/msdk/click/e;

    invoke-virtual {v1}, Lcom/mintegral/msdk/click/e;->a()V

    .line 76
    iget-object v1, p0, Lcom/alphab/b/a;->c:Lcom/mintegral/msdk/click/e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/mintegral/msdk/click/e;->a(Ljava/lang/String;ZZLcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/click/e$a;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_14

    move-result-object v0

    .line 83
    :cond_13
    :goto_13
    return-object v0

    .line 78
    :catch_14
    move-exception v1

    .line 79
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_13

    .line 80
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13
.end method


# virtual methods
.method public final a()V
    .registers 6

    .prologue
    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    :try_start_5
    iget-object v0, p0, Lcom/alphab/b/a;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v1, p0, Lcom/alphab/b/a;->a:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    :goto_d
    iget v3, p0, Lcom/alphab/b/a;->d:I

    if-gt v0, v3, :cond_21

    .line 43
    invoke-direct {p0, v1}, Lcom/alphab/b/a;->a(Ljava/lang/String;)Lcom/mintegral/msdk/click/e$a;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_21

    .line 47
    iget v3, v1, Lcom/mintegral/msdk/click/e$a;->f:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2d

    .line 48
    iget v0, v1, Lcom/mintegral/msdk/click/e$a;->e:I

    iput v0, p0, Lcom/alphab/b/a;->e:I
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_21} :catch_3b

    .line 65
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/alphab/b/a;->b:Lcom/alphab/b/b;

    if-eqz v0, :cond_2c

    .line 66
    iget-object v0, p0, Lcom/alphab/b/a;->b:Lcom/alphab/b/b;

    iget v1, p0, Lcom/alphab/b/a;->e:I

    invoke-virtual {v0, v2, v1}, Lcom/alphab/b/b;->a(Ljava/util/List;I)V

    .line 69
    :cond_2c
    return-void

    .line 51
    :cond_2d
    :try_start_2d
    iget-object v1, v1, Lcom/mintegral/msdk/click/e$a;->a:Ljava/lang/String;

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 54
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_38} :catch_3b

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 60
    :catch_3b
    move-exception v0

    .line 61
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_21

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_21
.end method

.method public final a(Lcom/alphab/b/b;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alphab/b/a;->b:Lcom/alphab/b/b;

    .line 34
    return-void
.end method
