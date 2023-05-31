.class public Lcom/bytedance/sdk/openadsdk/dislike/c$b;
.super Landroid/widget/BaseAdapter;
.source "TTDislikeDialogDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/dislike/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/dislike/c$b$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a:Z

    .line 248
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->b:Ljava/util/List;

    .line 249
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->c:Landroid/view/LayoutInflater;

    .line 250
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->notifyDataSetChanged()V

    .line 320
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 315
    :cond_8
    :goto_8
    return-void

    .line 311
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 312
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->notifyDataSetChanged()V

    goto :goto_8
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a:Z

    .line 254
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->b:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 268
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 275
    if-nez p2, :cond_95

    .line 276
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/c$b$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/c$b$a;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/c$1;)V

    .line 277
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->c:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_dialog_listview_item"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 278
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "tt_item_tv"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/dislike/c$b$a;->a:Landroid/widget/TextView;

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "tt_item_arrow"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/dislike/c$b$a;->b:Landroid/widget/ImageView;

    .line 280
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 285
    :goto_46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 286
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/dislike/c$b$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_9d

    .line 288
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/dislike/c$b$a;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tt_dislike_middle_seletor"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 293
    :goto_72
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->a:Z

    if-eqz v2, :cond_89

    if-nez p1, :cond_89

    .line 294
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/dislike/c$b$a;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tt_dislike_top_seletor"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 297
    :cond_89
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 298
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/dislike/c$b$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    :goto_94
    return-object p2

    .line 282
    :cond_95
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/dislike/c$b$a;

    move-object v1, v0

    goto :goto_46

    .line 290
    :cond_9d
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/dislike/c$b$a;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/dislike/c$b;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tt_dislike_bottom_seletor"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_72

    .line 300
    :cond_af
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/dislike/c$b$a;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_94
.end method
