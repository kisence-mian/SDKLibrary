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
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOption(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .registers 3

    .prologue
    .line 48
    if-nez p1, :cond_3

    .line 55
    :goto_2
    return-void

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->d:Ljava/util/List;

    if-nez v0, :cond_e

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->d:Ljava/util/List;

    .line 54
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSelected()Z
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->c:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->d:Ljava/util/List;

    return-object v0
.end method

.method public hasSecondOptions()Z
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->d:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setIsSelected(Z)V
    .registers 2

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->c:Z

    .line 41
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/FilterWord;->b:Ljava/lang/String;

    .line 33
    return-void
.end method
