.class Lcom/sigmob/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/toolbox/NetworkImageView;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/sigmob/volley/toolbox/NetworkImageView;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/toolbox/NetworkImageView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/ae;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->a(Lcom/sigmob/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView;

    invoke-static {v1}, Lcom/sigmob/volley/toolbox/NetworkImageView;->a(Lcom/sigmob/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/toolbox/NetworkImageView;->setImageResource(I)V

    :cond_13
    return-void
.end method

.method public a(Lcom/sigmob/volley/toolbox/s;Z)V
    .registers 5

    if-eqz p2, :cond_11

    iget-boolean v0, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->a:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView;

    new-instance v1, Lcom/sigmob/volley/toolbox/NetworkImageView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/volley/toolbox/NetworkImageView$1$1;-><init>(Lcom/sigmob/volley/toolbox/NetworkImageView$1;Lcom/sigmob/volley/toolbox/s;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/s;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/s;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_10

    :cond_21
    iget-object v0, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->b(Lcom/sigmob/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView;

    invoke-static {v1}, Lcom/sigmob/volley/toolbox/NetworkImageView;->b(Lcom/sigmob/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/volley/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_10
.end method
