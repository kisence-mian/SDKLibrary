.class Lcom/sigmob/sdk/base/views/VideoButtonWidget$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/VideoButtonWidget;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.method public a(Lcom/sigmob/volley/toolbox/k$c;Z)V
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/volley/toolbox/k$c;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget$1;->b:Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    invoke-static {p2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Lcom/sigmob/sdk/base/views/VideoButtonWidget;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_21

    :cond_10
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/VideoButtonWidget$1;->a:Ljava/lang/String;

    aput-object v0, p1, p2

    const-string p2, "%s returned null bitmap"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method public onErrorResponse(Lcom/sigmob/volley/t;)V
    .registers 3

    const-string v0, "Failed to load image."

    invoke-static {v0, p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
