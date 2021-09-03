.class Lcom/tds/common/widgets/image/LoadBuilder$2;
.super Lcom/tds/common/reactor/Subscriber;
.source "LoadBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/widgets/image/LoadBuilder;->loadImageInto(Lcom/tds/common/widgets/image/ImageTarget;)Lcom/tds/common/reactor/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/common/reactor/Subscriber<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/widgets/image/LoadBuilder;

.field final synthetic val$target:Lcom/tds/common/widgets/image/ImageTarget;


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/image/LoadBuilder;Lcom/tds/common/widgets/image/ImageTarget;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/widgets/image/LoadBuilder;

    .line 384
    iput-object p1, p0, Lcom/tds/common/widgets/image/LoadBuilder$2;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iput-object p2, p0, Lcom/tds/common/widgets/image/LoadBuilder$2;->val$target:Lcom/tds/common/widgets/image/ImageTarget;

    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .line 387
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 391
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder$2;->val$target:Lcom/tds/common/widgets/image/ImageTarget;

    invoke-interface {v0, p1}, Lcom/tds/common/widgets/image/ImageTarget;->onFailure(Ljava/lang/Throwable;)V

    .line 392
    return-void
.end method

.method public onNext(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 396
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder$2;->val$target:Lcom/tds/common/widgets/image/ImageTarget;

    invoke-interface {v0, p1}, Lcom/tds/common/widgets/image/ImageTarget;->onSuccess(Landroid/graphics/Bitmap;)V

    .line 397
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 384
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/tds/common/widgets/image/LoadBuilder$2;->onNext(Landroid/graphics/Bitmap;)V

    return-void
.end method
