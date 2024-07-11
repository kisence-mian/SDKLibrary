.class final Lcom/anythink/nativead/api/ATNativeImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/api/ATNativeImageView;->setImage(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/nativead/api/ATNativeImageView;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/api/ATNativeImageView;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/anythink/nativead/api/ATNativeImageView$1;->this$0:Lcom/anythink/nativead/api/ATNativeImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 57
    sget-object p1, Lcom/anythink/nativead/api/ATNativeImageView;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "load: image load fail:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/anythink/nativead/api/ATNativeImageView$1;->this$0:Lcom/anythink/nativead/api/ATNativeImageView;

    iget-object v0, v0, Lcom/anythink/nativead/api/ATNativeImageView;->mImageUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 51
    iget-object p1, p0, Lcom/anythink/nativead/api/ATNativeImageView$1;->this$0:Lcom/anythink/nativead/api/ATNativeImageView;

    invoke-virtual {p1, p2}, Lcom/anythink/nativead/api/ATNativeImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    :cond_f
    return-void
.end method
