.class public Lcom/tapjoy/internal/TJVideoListenerNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJVideoListener;


# instance fields
.field private final a:J


# direct methods
.method private constructor <init>(J)V
    .registers 6
    .param p1, "nativeHandle"    # J

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_c

    .line 14
    iput-wide p1, p0, Lcom/tapjoy/internal/TJVideoListenerNative;->a:J

    .line 15
    return-void

    .line 12
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static create(J)Ljava/lang/Object;
    .registers 3
    .param p0, "nativeHandle"    # J

    .line 35
    new-instance v0, Lcom/tapjoy/internal/TJVideoListenerNative;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/TJVideoListenerNative;-><init>(J)V

    return-object v0
.end method

.method private static native onVideoCompleteNative(J)V
.end method

.method private static native onVideoErrorNative(JI)V
.end method

.method private static native onVideoStartNative(J)V
.end method


# virtual methods
.method public onVideoComplete()V
    .registers 3

    .line 29
    iget-wide v0, p0, Lcom/tapjoy/internal/TJVideoListenerNative;->a:J

    invoke-static {v0, v1}, Lcom/tapjoy/internal/TJVideoListenerNative;->onVideoCompleteNative(J)V

    .line 30
    return-void
.end method

.method public onVideoError(I)V
    .registers 4
    .param p1, "statusCode"    # I

    .line 24
    iget-wide v0, p0, Lcom/tapjoy/internal/TJVideoListenerNative;->a:J

    invoke-static {v0, v1, p1}, Lcom/tapjoy/internal/TJVideoListenerNative;->onVideoErrorNative(JI)V

    .line 25
    return-void
.end method

.method public onVideoStart()V
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/tapjoy/internal/TJVideoListenerNative;->a:J

    invoke-static {v0, v1}, Lcom/tapjoy/internal/TJVideoListenerNative;->onVideoStartNative(J)V

    .line 20
    return-void
.end method
