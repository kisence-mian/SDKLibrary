.class Lcom/sigmob/sdk/mraid/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/m;
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/m;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/m;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/m$1;->a:Lcom/sigmob/sdk/mraid/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/m$1;->a:Lcom/sigmob/sdk/mraid/m;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/m;->a(Lcom/sigmob/sdk/mraid/m;)[Landroid/view/View;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_2d

    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    if-gtz v4, :cond_18

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_20

    :cond_18
    iget-object v3, p0, Lcom/sigmob/sdk/mraid/m$1;->a:Lcom/sigmob/sdk/mraid/m;

    invoke-static {v3}, Lcom/sigmob/sdk/mraid/m;->b(Lcom/sigmob/sdk/mraid/m;)V

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_20
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/sigmob/sdk/mraid/m$1$1;

    invoke-direct {v5, p0, v3}, Lcom/sigmob/sdk/mraid/m$1$1;-><init>(Lcom/sigmob/sdk/mraid/m$1;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1d

    :cond_2d
    return-void
.end method
