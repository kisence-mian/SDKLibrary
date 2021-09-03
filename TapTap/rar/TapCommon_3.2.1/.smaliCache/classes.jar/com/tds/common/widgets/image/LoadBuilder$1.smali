.class Lcom/tds/common/widgets/image/LoadBuilder$1;
.super Ljava/lang/Object;
.source "LoadBuilder.java"

# interfaces
.implements Lcom/tds/common/widgets/image/ImageTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/widgets/image/LoadBuilder;->loadImageInto(Landroid/widget/ImageView;)Lcom/tds/common/reactor/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/widgets/image/LoadBuilder;

.field final synthetic val$view:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/image/LoadBuilder;Ljava/lang/ref/WeakReference;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/widgets/image/LoadBuilder;

    .line 173
    iput-object p1, p0, Lcom/tds/common/widgets/image/LoadBuilder$1;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iput-object p2, p0, Lcom/tds/common/widgets/image/LoadBuilder$1;->val$view:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 184
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder$1;->val$view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 185
    .local v0, "iv":Landroid/widget/ImageView;
    if-eqz v0, :cond_25

    .line 186
    iget-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder$1;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget v1, v1, Lcom/tds/common/widgets/image/LoadBuilder;->errorRedId:I

    if-eqz v1, :cond_18

    .line 187
    iget-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder$1;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget v1, v1, Lcom/tds/common/widgets/image/LoadBuilder;->errorRedId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_25

    .line 188
    :cond_18
    iget-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder$1;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-object v1, v1, Lcom/tds/common/widgets/image/LoadBuilder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_25

    .line 189
    iget-object v1, p0, Lcom/tds/common/widgets/image/LoadBuilder$1;->this$0:Lcom/tds/common/widgets/image/LoadBuilder;

    iget-object v1, v1, Lcom/tds/common/widgets/image/LoadBuilder;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :cond_25
    :goto_25
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 176
    iget-object v0, p0, Lcom/tds/common/widgets/image/LoadBuilder$1;->val$view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 177
    .local v0, "iv":Landroid/widget/ImageView;
    if-eqz v0, :cond_d

    .line 178
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    :cond_d
    return-void
.end method
