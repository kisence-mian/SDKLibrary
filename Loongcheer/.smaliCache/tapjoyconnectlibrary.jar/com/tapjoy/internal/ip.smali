.class public final Lcom/tapjoy/internal/ip;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:Z

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/internal/ip;->a:Z

    .line 11
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/ip;->b:Landroid/graphics/Bitmap;

    .line 12
    iput-object p1, p0, Lcom/tapjoy/internal/ip;->c:Landroid/graphics/Rect;

    .line 13
    iput-object p1, p0, Lcom/tapjoy/internal/ip;->d:Landroid/graphics/Rect;

    .line 14
    iput-object p1, p0, Lcom/tapjoy/internal/ip;->e:Landroid/graphics/Rect;

    .line 15
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/ip;->f:Landroid/graphics/Rect;

    .line 19
    return-void
.end method


# virtual methods
.method final a()V
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/tapjoy/internal/ip;->a:Z

    if-eqz v0, :cond_9

    .line 44
    iget-object v0, p0, Lcom/tapjoy/internal/ip;->c:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/tapjoy/internal/ip;->e:Landroid/graphics/Rect;

    return-void

    .line 46
    :cond_9
    iget-object v0, p0, Lcom/tapjoy/internal/ip;->d:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/tapjoy/internal/ip;->e:Landroid/graphics/Rect;

    .line 48
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 52
    iget-object v0, p0, Lcom/tapjoy/internal/ip;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    .line 53
    return-void

    .line 54
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/ip;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    .line 55
    return-void

    .line 57
    :cond_a
    iget-object v0, p0, Lcom/tapjoy/internal/ip;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ip;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 58
    iget-object v0, p0, Lcom/tapjoy/internal/ip;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tapjoy/internal/ip;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tapjoy/internal/ip;->f:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 59
    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 32
    iput-object p1, p0, Lcom/tapjoy/internal/ip;->b:Landroid/graphics/Bitmap;

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/tapjoy/internal/ip;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 36
    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/tapjoy/internal/ip;->d:Landroid/graphics/Rect;

    .line 37
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/tapjoy/internal/ip;->c:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {p0}, Lcom/tapjoy/internal/ip;->a()V

    .line 40
    return-void
.end method
