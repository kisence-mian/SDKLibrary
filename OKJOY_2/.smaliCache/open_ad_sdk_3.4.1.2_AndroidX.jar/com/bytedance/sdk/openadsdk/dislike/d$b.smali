.class public Lcom/bytedance/sdk/openadsdk/dislike/d$b;
.super Landroid/widget/BaseAdapter;
.source "TTDislikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/dislike/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/dislike/d$b$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/dislike/d;

.field private b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/d;Landroid/view/LayoutInflater;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 217
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->b:Z

    .line 222
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->c:Ljava/util/List;

    .line 223
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->d:Landroid/view/LayoutInflater;

    .line 224
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .line 289
    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_17

    .line 293
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->notifyDataSetChanged()V

    .line 297
    return-void

    .line 290
    :cond_17
    :goto_17
    return-void
.end method

.method public getCount()I
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->c:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 242
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    .line 249
    const/4 v0, 0x0

    if-nez p2, :cond_45

    .line 250
    new-instance p2, Lcom/bytedance/sdk/openadsdk/dislike/d$b$a;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/d$b$a;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/d$b;Lcom/bytedance/sdk/openadsdk/dislike/d$1;)V

    .line 251
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->d:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_dialog_listview_item"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 252
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->d:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_item_tv"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/bytedance/sdk/openadsdk/dislike/d$b$a;->a:Landroid/widget/TextView;

    .line 253
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->d:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_item_tv_son"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;

    iput-object v1, p2, Lcom/bytedance/sdk/openadsdk/dislike/d$b$a;->b:Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;

    .line 254
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4e

    .line 256
    :cond_45
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/dislike/d$b$a;

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    .line 259
    :goto_4e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 260
    iget-object v2, p2, Lcom/bytedance/sdk/openadsdk/dislike/d$b$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result v2

    if-nez v2, :cond_92

    .line 262
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_81

    .line 263
    iget-object v2, p2, Lcom/bytedance/sdk/openadsdk/dislike/d$b$a;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->d:Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tt_dislike_middle_seletor"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_92

    .line 265
    :cond_81
    iget-object v2, p2, Lcom/bytedance/sdk/openadsdk/dislike/d$b$a;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->d:Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tt_dislike_bottom_seletor"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 268
    :cond_92
    :goto_92
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->b:Z

    if-eqz v2, :cond_a9

    if-nez p1, :cond_a9

    .line 269
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/dislike/d$b$a;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->d:Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_dislike_top_seletor"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 271
    :cond_a9
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result p1

    if-eqz p1, :cond_106

    .line 272
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/dislike/d$b$a;->b:Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->removeAllViews()V

    .line 274
    move p1, v0

    :goto_b5
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_100

    .line 275
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->d:Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tt_dislike_flowlayout_tv"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p2, Lcom/bytedance/sdk/openadsdk/dislike/d$b$a;->b:Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 276
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    new-instance v3, Lcom/bytedance/sdk/openadsdk/dislike/d$c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$b;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getOptions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-direct {v3, v4, v5, p1}, Lcom/bytedance/sdk/openadsdk/dislike/d$c;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/d;Lcom/bytedance/sdk/openadsdk/FilterWord;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v3, p2, Lcom/bytedance/sdk/openadsdk/dislike/d$b$a;->b:Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->addView(Landroid/view/View;)V

    .line 274
    add-int/lit8 p1, p1, 0x1

    goto :goto_b5

    .line 280
    :cond_100
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/dislike/d$b$a;->b:Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->setVisibility(I)V

    goto :goto_10d

    .line 283
    :cond_106
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/dislike/d$b$a;->b:Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/dislike/FlowLayout;->setVisibility(I)V

    .line 285
    :goto_10d
    return-object p3
.end method
