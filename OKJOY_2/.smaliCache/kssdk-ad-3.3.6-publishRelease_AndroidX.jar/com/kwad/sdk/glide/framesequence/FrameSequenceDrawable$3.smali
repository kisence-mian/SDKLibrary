.class Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$3;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$3;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$000(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$3;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    const/4 v2, -0x1

    # setter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mNextFrameToDecode:I
    invoke-static {v1, v2}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$202(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;I)I

    iget-object v1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$3;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    const/4 v2, 0x0

    # setter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mState:I
    invoke-static {v1, v2}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$402(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;I)I

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_28

    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$3;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mOnFinishedListener:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$b;
    invoke-static {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$900(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$b;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$3;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mOnFinishedListener:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$b;
    invoke-static {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$900(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$b;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$3;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$b;->a(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)V

    :cond_27
    return-void

    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method
