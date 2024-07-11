.class final Lcom/anythink/basead/ui/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/a/a;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;ILandroid/view/View;)V
    .registers 4

    .line 28
    iput-object p1, p0, Lcom/anythink/basead/ui/a/a$1;->a:Landroid/view/View;

    iput p2, p0, Lcom/anythink/basead/ui/a/a$1;->b:I

    iput-object p3, p0, Lcom/anythink/basead/ui/a/a$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/anythink/basead/ui/a/a$1;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 34
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/anythink/basead/ui/a/a$1;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 35
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/anythink/basead/ui/a/a$1;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 36
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/anythink/basead/ui/a/a$1;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 37
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/anythink/basead/ui/a/a$1;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 39
    iget-object v1, p0, Lcom/anythink/basead/ui/a/a$1;->c:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/anythink/basead/ui/a/a$1;->a:Landroid/view/View;

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 40
    return-void
.end method
