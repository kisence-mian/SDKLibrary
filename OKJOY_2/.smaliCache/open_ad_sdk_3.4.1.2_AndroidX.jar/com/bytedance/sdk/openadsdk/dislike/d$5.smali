.class Lcom/bytedance/sdk/openadsdk/dislike/d$5;
.super Ljava/lang/Object;
.source "TTDislikeDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/dislike/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/d;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 198
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/d;)Lcom/bytedance/sdk/openadsdk/dislike/d$a;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 200
    :try_start_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->a(Lcom/bytedance/sdk/openadsdk/dislike/d;)Lcom/bytedance/sdk/openadsdk/dislike/d$a;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/dislike/d;->c(Lcom/bytedance/sdk/openadsdk/dislike/d;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->al()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-interface {p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/dislike/d$a;->a(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_22

    .line 202
    goto :goto_23

    .line 201
    :catchall_22
    move-exception p1

    .line 204
    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/d$5;->a:Lcom/bytedance/sdk/openadsdk/dislike/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/dislike/d;->dismiss()V

    .line 205
    return-void
.end method
