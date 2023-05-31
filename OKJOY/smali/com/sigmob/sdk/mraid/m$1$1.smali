.class Lcom/sigmob/sdk/mraid/m$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/m$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/sigmob/sdk/mraid/m$1;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/m$1;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/m$1$1;->b:Lcom/sigmob/sdk/mraid/m$1;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/m$1$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/m$1$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/m$1$1;->b:Lcom/sigmob/sdk/mraid/m$1;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/m$1;->a:Lcom/sigmob/sdk/mraid/m;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/m;->b(Lcom/sigmob/sdk/mraid/m;)V

    const/4 v0, 0x1

    return v0
.end method
