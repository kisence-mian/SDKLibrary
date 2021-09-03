.class Lcom/taptap/sdk/ui/l$b;
.super Landroid/view/ViewOutlineProvider;
.source "WebBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/ui/l;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taptap/sdk/ui/l;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/ui/l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/ui/l$b;->a:Lcom/taptap/sdk/ui/l;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/ui/l$b;->a:Lcom/taptap/sdk/ui/l;

    invoke-virtual {v0}, Lcom/taptap/sdk/ui/l;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 3
    sget-boolean v0, Lcom/taptap/sdk/e;->c:Z

    if-eqz v0, :cond_2b

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object p1, p0, Lcom/taptap/sdk/ui/l$b;->a:Lcom/taptap/sdk/ui/l;

    iget p1, p1, Lcom/taptap/sdk/ui/l;->n:I

    int-to-float v6, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_4d

    .line 6
    :cond_2b
    invoke-virtual {p2}, Landroid/graphics/Outline;->setEmpty()V

    goto :goto_4d

    :cond_2f
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4d

    .line 9
    sget-boolean v0, Lcom/taptap/sdk/e;->c:Z

    if-eqz v0, :cond_4a

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object p1, p0, Lcom/taptap/sdk/ui/l$b;->a:Lcom/taptap/sdk/ui/l;

    iget p1, p1, Lcom/taptap/sdk/ui/l;->n:I

    int-to-float v6, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_4d

    .line 12
    :cond_4a
    invoke-virtual {p2}, Landroid/graphics/Outline;->setEmpty()V

    :cond_4d
    :goto_4d
    return-void
.end method
