.class Lcom/bytedance/sdk/openadsdk/core/widget/a$b;
.super Landroid/widget/ArrayAdapter;
.source "AppDetailFullDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/a$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/bytedance/sdk/openadsdk/core/widget/a$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/a;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/widget/a$c;",
            ">;)V"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$b;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    .line 276
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 277
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 282
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/a$b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/widget/a$c;

    .line 285
    const/4 v0, 0x0

    if-nez p2, :cond_5e

    .line 286
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a$b;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$b;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v2, "tt_app_detail_listview_item"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 287
    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/widget/a$b$a;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a$b$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/a$b;)V

    .line 288
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$b;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v2, "tt_item_title_tv"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/bytedance/sdk/openadsdk/core/widget/a$b$a;->a:Landroid/widget/TextView;

    .line 289
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$b;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v2, "tt_item_desc_tv"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/bytedance/sdk/openadsdk/core/widget/a$b$a;->b:Landroid/widget/TextView;

    .line 290
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$b;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a:Landroid/content/Context;

    const-string v2, "tt_item_select_img"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/bytedance/sdk/openadsdk/core/widget/a$b$a;->c:Landroid/widget/ImageView;

    .line 291
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_65

    .line 293
    :cond_5e
    nop

    .line 294
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/widget/a$b$a;

    .line 296
    :goto_65
    iget-object v1, p3, Lcom/bytedance/sdk/openadsdk/core/widget/a$b$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/a$c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8865\u5145\u4e2d\uff0c\u53ef\u4e8e\u5e94\u7528\u5b98\u7f51\u67e5\u770b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 298
    iget-object v0, p3, Lcom/bytedance/sdk/openadsdk/core/widget/a$b$a;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    :cond_7c
    iget-object v0, p3, Lcom/bytedance/sdk/openadsdk/core/widget/a$b$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/a$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/widget/a$b$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/a$c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    return-object p2
.end method
