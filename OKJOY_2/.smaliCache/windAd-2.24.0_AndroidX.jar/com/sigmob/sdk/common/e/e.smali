.class Lcom/sigmob/sdk/common/e/e;
.super Lcom/sigmob/volley/toolbox/k;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(Lcom/sigmob/volley/n;Landroid/content/Context;Lcom/sigmob/volley/toolbox/k$b;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Lcom/sigmob/volley/toolbox/k;-><init>(Lcom/sigmob/volley/n;Lcom/sigmob/volley/toolbox/k$b;)V

    const-string p1, "window"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-nez p1, :cond_12

    const/16 p1, 0x140

    :goto_f
    iput p1, p0, Lcom/sigmob/sdk/common/e/e;->a:I

    return-void

    :cond_12
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_f
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$d;)Lcom/sigmob/volley/toolbox/k$c;
    .registers 5

    iget v0, p0, Lcom/sigmob/sdk/common/e/e;->a:I

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v0, v1}, Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$d;II)Lcom/sigmob/volley/toolbox/k$c;

    move-result-object p1

    return-object p1
.end method
