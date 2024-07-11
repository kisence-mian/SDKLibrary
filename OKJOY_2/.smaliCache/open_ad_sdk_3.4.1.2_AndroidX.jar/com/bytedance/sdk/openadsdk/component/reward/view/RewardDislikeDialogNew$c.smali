.class Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$c;
.super Ljava/lang/Object;
.source "RewardDislikeDialogNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

.field private b:Lcom/bytedance/sdk/openadsdk/FilterWord;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;Lcom/bytedance/sdk/openadsdk/FilterWord;I)V
    .registers 4

    .line 309
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$c;->b:Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 311
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$c;->c:I

    .line 312
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 316
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->c(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;)Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$c;->c:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$c;->b:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$a;->a(ILcom/bytedance/sdk/openadsdk/FilterWord;)V

    .line 317
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$c;->b:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->a(Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/util/List;)V

    .line 320
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew$c;->a:Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RewardDislikeDialogNew;->a(Z)V

    .line 321
    return-void
.end method
