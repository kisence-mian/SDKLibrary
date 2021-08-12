.class Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$4;
.super Ljava/lang/Object;
.source "LandingDislikeDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$4;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

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

    .line 133
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$4;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->c(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;)Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 135
    :try_start_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$4;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->c(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;)Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$4;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a(Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->al()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-interface {p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$a;->a(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_22

    .line 137
    goto :goto_23

    .line 136
    :catchall_22
    move-exception p1

    .line 140
    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog$4;->a:Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/dislike/LandingDislikeDialog;->a(Z)V

    .line 141
    return-void
.end method
