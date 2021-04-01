.class Lpl/droidsonroids/gif/GifDrawable$3;
.super Lpl/droidsonroids/gif/SafeRunnable;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/droidsonroids/gif/GifDrawable;->seekToFrame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/droidsonroids/gif/GifDrawable;

.field final synthetic val$frameIndex:I


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifDrawable;Lpl/droidsonroids/gif/GifDrawable;I)V
    .registers 4
    .param p1, "this$0"    # Lpl/droidsonroids/gif/GifDrawable;
    .param p2, "gifDrawable"    # Lpl/droidsonroids/gif/GifDrawable;

    .prologue
    .line 548
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable$3;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    iput p3, p0, Lpl/droidsonroids/gif/GifDrawable$3;->val$frameIndex:I

    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/SafeRunnable;-><init>(Lpl/droidsonroids/gif/GifDrawable;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .registers 5

    .prologue
    .line 551
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$3;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    iget v1, p0, Lpl/droidsonroids/gif/GifDrawable$3;->val$frameIndex:I

    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable$3;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v2, v2, Lpl/droidsonroids/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->seekToFrame(ILandroid/graphics/Bitmap;)V

    .line 552
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$3;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->mInvalidationHandler:Lpl/droidsonroids/gif/InvalidationHandler;

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lpl/droidsonroids/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 553
    return-void
.end method
