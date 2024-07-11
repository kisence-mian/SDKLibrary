.class Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;
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

    iput-object p1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$000(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mDestroyed:Z
    invoke-static {v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$100(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Z

    move-result v1

    if-eqz v1, :cond_11

    monitor-exit v0

    return-void

    :cond_11
    iget-object v1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mNextFrameToDecode:I
    invoke-static {v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$200(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)I

    move-result v1

    if-gez v1, :cond_1b

    monitor-exit v0

    return-void

    :cond_1b
    iget-object v2, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$300(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    const/4 v4, 0x2

    # setter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mState:I
    invoke-static {v3, v4}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$402(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;I)I

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_bf

    add-int/lit8 v0, v1, -0x2

    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    :try_start_2e
    iget-object v8, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mFrameSequenceState:Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;
    invoke-static {v8}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$500(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;

    move-result-object v8

    invoke-virtual {v8, v1, v2, v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;->getFrame(ILandroid/graphics/Bitmap;I)J

    move-result-wide v5
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_38} :catch_3a

    move v0, v7

    goto :goto_54

    :catch_3a
    move-exception v0

    const-string v1, "FrameSequenceDrawable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception during decode: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_54
    const-wide/16 v1, 0x14

    cmp-long v1, v5, v1

    if-gez v1, :cond_5c

    const-wide/16 v5, 0x64

    :cond_5c
    iget-object v1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$000(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_63
    iget-object v2, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mDestroyed:Z
    invoke-static {v2}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$100(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_79

    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$300(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # setter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v8}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$302(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-object v8, v0

    goto :goto_a3

    :cond_79
    iget-object v2, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mNextFrameToDecode:I
    invoke-static {v2}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$200(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)I

    move-result v2

    if-ltz v2, :cond_a3

    iget-object v2, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mState:I
    invoke-static {v2}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$400(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)I

    move-result v2

    if-ne v2, v4, :cond_a3

    iget-object v2, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    if-eqz v0, :cond_93

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_99

    :cond_93
    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mLastSwap:J
    invoke-static {v2}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$700(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)J

    move-result-wide v9

    add-long v4, v5, v9

    :goto_99
    # setter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mNextSwap:J
    invoke-static {v2, v4, v5}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$602(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;J)J

    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    const/4 v2, 0x3

    # setter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mState:I
    invoke-static {v0, v2}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$402(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;I)I

    goto :goto_a4

    :cond_a3
    :goto_a3
    move v3, v7

    :goto_a4
    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_63 .. :try_end_a5} :catchall_bc

    if-eqz v3, :cond_b0

    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mNextSwap:J
    invoke-static {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$600(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)J

    move-result-wide v1

    invoke-virtual {v0, v0, v1, v2}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_b0
    if-eqz v8, :cond_bb

    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->a:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    # getter for: Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->mBitmapProvider:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$a;
    invoke-static {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$800(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$a;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$a;->a(Landroid/graphics/Bitmap;)V

    :cond_bb
    return-void

    :catchall_bc
    move-exception v0

    :try_start_bd
    monitor-exit v1
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw v0

    :catchall_bf
    move-exception v1

    :try_start_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw v1
.end method
