.class Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/glide/framesequence/FrameSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field private mNativeState:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;->mNativeState:J

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 6

    iget-wide v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;->mNativeState:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    # invokes: Lcom/kwad/sdk/glide/framesequence/FrameSequence;->nativeDestroyState(J)V
    invoke-static {v0, v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->access$000(J)V

    iput-wide v2, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;->mNativeState:J

    :cond_d
    return-void
.end method

.method public getFrame(ILandroid/graphics/Bitmap;I)J
    .registers 8

    if-eqz p2, :cond_1f

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1f

    iget-wide v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;->mNativeState:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_17

    # invokes: Lcom/kwad/sdk/glide/framesequence/FrameSequence;->nativeGetFrame(JILandroid/graphics/Bitmap;I)J
    invoke-static {v0, v1, p1, p2, p3}, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->access$100(JILandroid/graphics/Bitmap;I)J

    move-result-wide p1

    return-wide p1

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempted to draw destroyed FrameSequenceState"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bitmap passed must be non-null and ARGB_8888"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
