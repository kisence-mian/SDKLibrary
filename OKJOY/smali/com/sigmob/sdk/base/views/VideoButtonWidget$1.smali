.class Lcom/sigmob/sdk/base/views/VideoButtonWidget$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/VideoButtonWidget;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/sdk/base/views/VideoButtonWidget;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/VideoButtonWidget;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget$1;->b:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/ae;)V
    .registers 3

    const-string v0, "Failed to load image."

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/sigmob/volley/toolbox/s;Z)V
    .registers 7

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/s;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget$1;->b:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-static {v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Lcom/sigmob/sdk/base/views/VideoButtonWidget;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_f
    return-void

    :cond_10
    const-string v0, "%s returned null bitmap"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget$1;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    goto :goto_f
.end method
