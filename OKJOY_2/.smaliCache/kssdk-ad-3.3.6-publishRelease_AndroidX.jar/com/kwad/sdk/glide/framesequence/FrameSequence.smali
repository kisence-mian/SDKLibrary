.class public Lcom/kwad/sdk/glide/framesequence/FrameSequence;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;
    }
.end annotation


# static fields
.field private static final ISLOADED:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mDefaultLoopCount:I

.field private mFrameCount:I

.field private mHeight:I

.field private mNativeFrameSequence:J

.field private mOpaque:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->ISLOADED:Ljava/util/concurrent/atomic/AtomicBoolean;

    :try_start_8
    const-string v2, "framesequencev2"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_12

    goto :goto_18

    :catchall_12
    move-exception v0

    sget-object v0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->ISLOADED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_18
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(JIIZII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->mNativeFrameSequence:J

    iput p3, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->mWidth:I

    iput p4, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->mHeight:I

    iput-boolean p5, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->mOpaque:Z

    iput p6, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->mFrameCount:I

    iput p7, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->mDefaultLoopCount:I

    return-void
.end method

.method static synthetic access$000(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->nativeDestroyState(J)V

    return-void
.end method

.method static synthetic access$100(JILandroid/graphics/Bitmap;I)J
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->nativeGetFrame(JILandroid/graphics/Bitmap;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static decodeByteArray([B)Lcom/kwad/sdk/glide/framesequence/FrameSequence;
    .registers 3

    sget-object v0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->ISLOADED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->decodeByteArray([BII)Lcom/kwad/sdk/glide/framesequence/FrameSequence;

    move-result-object p0

    return-object p0
.end method

.method public static decodeByteArray([BII)Lcom/kwad/sdk/glide/framesequence/FrameSequence;
    .registers 5

    sget-object v0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->ISLOADED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    if-eqz p0, :cond_22

    if-ltz p1, :cond_1a

    if-ltz p2, :cond_1a

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_1a

    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->nativeDecodeByteArray([BII)Lcom/kwad/sdk/glide/framesequence/FrameSequence;

    move-result-object p0

    return-object p0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid offset/length parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static decodeByteBuffer(Ljava/nio/ByteBuffer;)Lcom/kwad/sdk/glide/framesequence/FrameSequence;
    .registers 3

    sget-object v0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->ISLOADED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    if-eqz p0, :cond_3e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->decodeByteArray([BII)Lcom/kwad/sdk/glide/framesequence/FrameSequence;

    move-result-object p0

    return-object p0

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot have non-direct ByteBuffer with no byte array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->nativeDecodeByteBuffer(Ljava/nio/ByteBuffer;II)Lcom/kwad/sdk/glide/framesequence/FrameSequence;

    move-result-object p0

    return-object p0

    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Lcom/kwad/sdk/glide/framesequence/FrameSequence;
    .registers 2

    sget-object v0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->ISLOADED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    if-eqz p0, :cond_15

    const/16 v0, 0x4000

    new-array v0, v0, [B

    invoke-static {p0, v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->nativeDecodeStream(Ljava/io/InputStream;[B)Lcom/kwad/sdk/glide/framesequence/FrameSequence;

    move-result-object p0

    return-object p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static isEnable()Z
    .registers 1

    sget-object v0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->ISLOADED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static native nativeCreateState(J)J
.end method

.method private static native nativeDecodeByteArray([BII)Lcom/kwad/sdk/glide/framesequence/FrameSequence;
.end method

.method private static native nativeDecodeByteBuffer(Ljava/nio/ByteBuffer;II)Lcom/kwad/sdk/glide/framesequence/FrameSequence;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[B)Lcom/kwad/sdk/glide/framesequence/FrameSequence;
.end method

.method private static native nativeDestroyFrameSequence(J)V
.end method

.method private static native nativeDestroyState(J)V
.end method

.method private static native nativeGetFrame(JILandroid/graphics/Bitmap;I)J
.end method


# virtual methods
.method createState()Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;
    .registers 6

    iget-wide v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->mNativeFrameSequence:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    invoke-static {v0, v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->nativeCreateState(J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    return-object v0

    :cond_12
    new-instance v2, Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;

    invoke-direct {v2, v0, v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;-><init>(J)V

    return-object v2

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempted to use incorrectly built FrameSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroy()V
    .registers 5

    iget-wide v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->mNativeFrameSequence:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    invoke-static {v0, v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->nativeDestroyFrameSequence(J)V

    :cond_b
    return-void
.end method

.method public getDefaultLoopCount()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->mDefaultLoopCount:I

    return v0
.end method

.method public getFrameCount()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->mFrameCount:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequence;->mOpaque:Z

    return v0
.end method
