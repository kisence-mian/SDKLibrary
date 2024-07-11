.class Lcom/sigmob/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/toolbox/NetworkImageView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.method public a(Lcom/sigmob/volley/toolbox/k$c;Z)V
    .registers 4

    if-eqz p2, :cond_11

    iget-boolean p2, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->a:Z

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView;

    new-instance v0, Lcom/sigmob/volley/toolbox/NetworkImageView$1$1;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/volley/toolbox/NetworkImageView$1$1;-><init>(Lcom/sigmob/volley/toolbox/NetworkImageView$1;Lcom/sigmob/volley/toolbox/k$c;)V

    invoke-virtual {p2, v0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_11
    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_21

    iget-object p2, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sigmob/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_32

    :cond_21
    iget-object p1, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/sigmob/volley/toolbox/NetworkImageView;->b(Lcom/sigmob/volley/toolbox/NetworkImageView;)I

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/sigmob/volley/toolbox/NetworkImageView;->b(Lcom/sigmob/volley/toolbox/NetworkImageView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sigmob/volley/toolbox/NetworkImageView;->setImageResource(I)V

    :cond_32
    :goto_32
    return-void
.end method

.method public onErrorResponse(Lcom/sigmob/volley/t;)V
    .registers 3

    iget-object p1, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/sigmob/volley/toolbox/NetworkImageView;->a(Lcom/sigmob/volley/toolbox/NetworkImageView;)I

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/sigmob/volley/toolbox/NetworkImageView$1;->b:Lcom/sigmob/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/sigmob/volley/toolbox/NetworkImageView;->a(Lcom/sigmob/volley/toolbox/NetworkImageView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/volley/toolbox/NetworkImageView;->setImageResource(I)V

    :cond_11
    return-void
.end method
