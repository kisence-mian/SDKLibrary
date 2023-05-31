.class Lpl/droidsonroids/gif/GifDrawable$1;
.super Lpl/droidsonroids/gif/SafeRunnable;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/droidsonroids/gif/GifDrawable;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/droidsonroids/gif/GifDrawable;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifDrawable;Lpl/droidsonroids/gif/GifDrawable;)V
    .registers 3
    .param p1, "this$0"    # Lpl/droidsonroids/gif/GifDrawable;
    .param p2, "gifDrawable"    # Lpl/droidsonroids/gif/GifDrawable;

    .prologue
    .line 355
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable$1;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/SafeRunnable;-><init>(Lpl/droidsonroids/gif/GifDrawable;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$1;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->mNativeInfoHandle:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->reset()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 359
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable$1;->this$0:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->start()V

    .line 361
    :cond_f
    return-void
.end method
