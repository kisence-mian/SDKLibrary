.class final Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->onBannerAdLoad(Lcom/bytedance/sdk/openadsdk/TTBannerAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATBannerAdapter$1;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 5

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_ab

    .line 71
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 72
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 74
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v1, :cond_ab

    .line 75
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 76
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    iget-object v3, v3, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget v3, v3, Lcom/anythink/network/toutiao/TTATBannerAdapter;->f:I

    mul-int/2addr v1, v3

    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    iget-object v3, v3, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget v3, v3, Lcom/anythink/network/toutiao/TTATBannerAdapter;->e:I

    div-int/2addr v1, v3

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 77
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    iget-object v1, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v1, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-le v1, v0, :cond_9c

    .line 78
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    iget-object v1, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v1, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 79
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    iget-object v1, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v1, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget v2, v2, Lcom/anythink/network/toutiao/TTATBannerAdapter;->e:I

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget v2, v2, Lcom/anythink/network/toutiao/TTATBannerAdapter;->f:I

    div-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81
    :cond_9c
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ab} :catch_ad

    .line 88
    :cond_ab
    :goto_ab
    const/4 v0, 0x1

    return v0

    .line 85
    :catch_ad
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ab
.end method
