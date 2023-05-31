.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$12;
.super Ljava/lang/Object;
.source "MTGMediaView.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 2

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$12;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1071
    const-string v0, "MTGMediaView"

    const-string v1, "load image fail in mtgmediaview"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    return-void
.end method

.method public final onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1075
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fillBigimage onSuccessLoad mCurDisplayMode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$12;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->m(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$12;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->n(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/videocommon/view/MyImageView;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$12;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->m(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    move-result-object v0

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v0, v1, :cond_67

    .line 1078
    if-eqz p1, :cond_59

    .line 1079
    const-string v0, "MTGMediaView"

    const-string v1, "setimgeBitmap======="

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$12;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Lcom/mintegral/msdk/nativex/view/MTGMediaView;I)I

    .line 1081
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$12;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->b(Lcom/mintegral/msdk/nativex/view/MTGMediaView;I)I

    .line 1082
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$12;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->n(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/videocommon/view/MyImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setImageUrl(Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$12;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->n(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/videocommon/view/MyImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1086
    :cond_59
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$12;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->n(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/videocommon/view/MyImageView;

    move-result-object v0

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$12$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$12$1;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView$12;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    :cond_67
    return-void
.end method
