.class Lcom/tds/common/widgets/image/NetworkImageView$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Lcom/tds/common/widgets/image/ImageTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/widgets/image/NetworkImageView;->initImageTarget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/widgets/image/NetworkImageView;


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/image/NetworkImageView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/common/widgets/image/NetworkImageView;

    .line 140
    iput-object p1, p0, Lcom/tds/common/widgets/image/NetworkImageView$1;->this$0:Lcom/tds/common/widgets/image/NetworkImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 153
    iget-object v0, p0, Lcom/tds/common/widgets/image/NetworkImageView$1;->this$0:Lcom/tds/common/widgets/image/NetworkImageView;

    # getter for: Lcom/tds/common/widgets/image/NetworkImageView;->mErrorImageId:I
    invoke-static {v0}, Lcom/tds/common/widgets/image/NetworkImageView;->access$100(Lcom/tds/common/widgets/image/NetworkImageView;)I

    move-result v0

    if-lez v0, :cond_11

    .line 154
    iget-object v0, p0, Lcom/tds/common/widgets/image/NetworkImageView$1;->this$0:Lcom/tds/common/widgets/image/NetworkImageView;

    # getter for: Lcom/tds/common/widgets/image/NetworkImageView;->mErrorImageId:I
    invoke-static {v0}, Lcom/tds/common/widgets/image/NetworkImageView;->access$100(Lcom/tds/common/widgets/image/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/image/NetworkImageView;->setImageResource(I)V

    .line 156
    :cond_11
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 143
    if-eqz p1, :cond_8

    .line 145
    iget-object v0, p0, Lcom/tds/common/widgets/image/NetworkImageView$1;->this$0:Lcom/tds/common/widgets/image/NetworkImageView;

    # invokes: Lcom/tds/common/widgets/image/NetworkImageView;->setImageBitmapInMain(Landroid/graphics/Bitmap;)V
    invoke-static {v0, p1}, Lcom/tds/common/widgets/image/NetworkImageView;->access$000(Lcom/tds/common/widgets/image/NetworkImageView;Landroid/graphics/Bitmap;)V

    goto :goto_12

    .line 147
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "get bitmap from net error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tds/common/widgets/image/NetworkImageView$1;->onFailure(Ljava/lang/Throwable;)V

    .line 149
    :goto_12
    return-void
.end method
