.class Lcom/kwad/sdk/b/f/b$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)I
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/b/f/b$e;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/b/f/b$e;

    iget-boolean v2, v0, Lcom/kwad/sdk/b/f/b$e;->a:Z

    iget-boolean v3, v1, Lcom/kwad/sdk/b/f/b$e;->a:Z

    if-eq v2, v3, :cond_18

    if-eqz v2, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, -0x1

    goto :goto_15

    :cond_18
    iget v0, v0, Lcom/kwad/sdk/b/f/b$e;->e:I

    iget v1, v1, Lcom/kwad/sdk/b/f/b$e;->e:I

    sub-int/2addr v0, v1

    goto :goto_15
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/b/f/b$k;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
