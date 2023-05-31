.class Lcom/sigmob/sdk/base/c/h;
.super Lcom/sigmob/volley/toolbox/p;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(Lcom/sigmob/volley/u;Landroid/content/Context;Lcom/sigmob/volley/toolbox/r;)V
    .registers 6

    invoke-direct {p0, p1, p3}, Lcom/sigmob/volley/toolbox/p;-><init>(Lcom/sigmob/volley/u;Lcom/sigmob/volley/toolbox/r;)V

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_12

    const/16 v0, 0x140

    iput v0, p0, Lcom/sigmob/sdk/base/c/h;->a:I

    :goto_11
    return-void

    :cond_12
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/c/h;->a:I

    goto :goto_11
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/t;)Lcom/sigmob/volley/toolbox/s;
    .registers 5

    iget v0, p0, Lcom/sigmob/sdk/base/c/h;->a:I

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v0, v1}, Lcom/sigmob/volley/toolbox/p;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/t;II)Lcom/sigmob/volley/toolbox/s;

    move-result-object v0

    return-object v0
.end method
