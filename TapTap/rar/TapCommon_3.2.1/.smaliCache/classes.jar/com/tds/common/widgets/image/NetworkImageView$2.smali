.class Lcom/tds/common/widgets/image/NetworkImageView$2;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/widgets/image/NetworkImageView;->setImageBitmapInMain(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/widgets/image/NetworkImageView;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/image/NetworkImageView;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/widgets/image/NetworkImageView;

    .line 195
    iput-object p1, p0, Lcom/tds/common/widgets/image/NetworkImageView$2;->this$0:Lcom/tds/common/widgets/image/NetworkImageView;

    iput-object p2, p0, Lcom/tds/common/widgets/image/NetworkImageView$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/tds/common/widgets/image/NetworkImageView$2;->this$0:Lcom/tds/common/widgets/image/NetworkImageView;

    iget-object v1, p0, Lcom/tds/common/widgets/image/NetworkImageView$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/image/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    return-void
.end method
