.class final Lcom/sigmob/volley/toolbox/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/toolbox/p;->a(Landroid/widget/ImageView;II)Lcom/sigmob/volley/toolbox/t;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:I


# direct methods
.method constructor <init>(ILandroid/widget/ImageView;I)V
    .registers 4

    iput p1, p0, Lcom/sigmob/volley/toolbox/p$1;->a:I

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/p$1;->b:Landroid/widget/ImageView;

    iput p3, p0, Lcom/sigmob/volley/toolbox/p$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/ae;)V
    .registers 4

    iget v0, p0, Lcom/sigmob/volley/toolbox/p$1;->a:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/p$1;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sigmob/volley/toolbox/p$1;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    return-void
.end method

.method public a(Lcom/sigmob/volley/toolbox/s;Z)V
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/s;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/p$1;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/s;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget v0, p0, Lcom/sigmob/volley/toolbox/p$1;->c:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/p$1;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sigmob/volley/toolbox/p$1;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f
.end method
