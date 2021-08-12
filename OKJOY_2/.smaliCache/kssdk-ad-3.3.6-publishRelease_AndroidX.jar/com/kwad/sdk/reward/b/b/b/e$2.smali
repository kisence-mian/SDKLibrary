.class Lcom/kwad/sdk/reward/b/b/b/e$2;
.super Lcom/kwad/sdk/core/imageloader/core/listener/SimpleImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/reward/b/b/b/e;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/kwad/sdk/reward/b/b/b/e;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/reward/b/b/b/e;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/e$2;->b:Lcom/kwad/sdk/reward/b/b/b/e;

    iput-object p2, p0, Lcom/kwad/sdk/reward/b/b/b/e$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDecode(Ljava/lang/String;Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z
    .registers 5

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p2}, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->decodeStream(Ljava/io/InputStream;)Lcom/kwad/sdk/glide/framesequence/FrameSequence;

    move-result-object v0

    invoke-static {p2}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    iput-object v0, p3, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mFrameSequence:Lcom/kwad/sdk/glide/framesequence/FrameSequence;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    if-eqz v0, :cond_d

    const/4 p1, 0x1

    :cond_d
    return p1

    :catchall_e
    move-exception p2

    invoke-static {p2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    return p1
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)V
    .registers 4

    iget-object p2, p0, Lcom/kwad/sdk/reward/b/b/b/e$2;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p1, p3, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mFrameSequence:Lcom/kwad/sdk/glide/framesequence/FrameSequence;

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/e$2;->b:Lcom/kwad/sdk/reward/b/b/b/e;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/b/b/e;->b(Lcom/kwad/sdk/reward/b/b/b/e;)Lcom/kwad/sdk/widget/AnimatedImageView;

    move-result-object p1

    iget-object p2, p3, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mFrameSequence:Lcom/kwad/sdk/glide/framesequence/FrameSequence;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/widget/AnimatedImageView;->setWebpStream(Lcom/kwad/sdk/glide/framesequence/FrameSequence;)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/e$2;->b:Lcom/kwad/sdk/reward/b/b/b/e;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/b/b/e;->b(Lcom/kwad/sdk/reward/b/b/b/e;)Lcom/kwad/sdk/widget/AnimatedImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/widget/AnimatedImageView;->a()V

    goto :goto_38

    :cond_21
    iget-object p1, p3, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_38

    iget-object p1, p3, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/b/b/e$2;->b:Lcom/kwad/sdk/reward/b/b/b/e;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/b/b/e;->b(Lcom/kwad/sdk/reward/b/b/b/e;)Lcom/kwad/sdk/widget/AnimatedImageView;

    move-result-object p1

    iget-object p2, p3, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/widget/AnimatedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_38
    :goto_38
    return-void
.end method
