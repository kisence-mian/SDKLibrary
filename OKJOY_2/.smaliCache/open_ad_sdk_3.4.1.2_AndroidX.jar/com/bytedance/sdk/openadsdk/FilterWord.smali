.class public Lcom/bytedance/sdk/openadsdk/FilterWord;
.super Ljava/lang/Object;
.source "FilterWord.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->b:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public addOption(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .registers 3

    .line 55
    if-nez p1, :cond_3

    .line 56
    return-void

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->d:Ljava/util/List;

    if-nez v0, :cond_e

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->d:Ljava/util/List;

    .line 61
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSelected()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->c:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->d:Ljava/util/List;

    return-object v0
.end method

.method public hasSecondOptions()Z
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->d:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setIsSelected(Z)V
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->c:Z

    .line 48
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->b:Ljava/lang/String;

    .line 40
    return-void
.end method
