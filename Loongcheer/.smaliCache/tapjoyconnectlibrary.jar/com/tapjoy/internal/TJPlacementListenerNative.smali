.class public Lcom/tapjoy/internal/TJPlacementListenerNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;


# instance fields
.field private final a:J


# direct methods
.method private constructor <init>(J)V
    .registers 6
    .param p1, "nativeHandle"    # J

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_c

    .line 17
    iput-wide p1, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    .line 18
    return-void

    .line 15
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static create(J)Ljava/lang/Object;
    .registers 3
    .param p0, "nativeHandle"    # J

    .line 63
    new-instance v0, Lcom/tapjoy/internal/TJPlacementListenerNative;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/TJPlacementListenerNative;-><init>(J)V

    return-object v0
.end method

.method private static native onClickNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V
.end method

.method private static native onContentDismissNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V
.end method

.method private static native onContentReadyNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V
.end method

.method private static native onContentShowNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V
.end method

.method private static native onPurchaseRequestNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native onRequestFailureNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native onRequestSuccessNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V
.end method

.method private static native onRewardRequestNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method


# virtual methods
.method public onClick(Lcom/tapjoy/TJPlacement;)V
    .registers 5
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .line 57
    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onClickNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .registers 5
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .line 42
    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onContentDismissNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onContentReady(Lcom/tapjoy/TJPlacement;)V
    .registers 5
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .line 32
    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onContentReadyNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public onContentShow(Lcom/tapjoy/TJPlacement;)V
    .registers 5
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .line 37
    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onContentShowNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .registers 12
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "request"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "productId"    # Ljava/lang/String;

    .line 47
    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/tapjoy/TJActionRequest;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/tapjoy/TJActionRequest;->getToken()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object v4, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onPurchaseRequestNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .registers 9
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "error"    # Lcom/tapjoy/TJError;

    .line 27
    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, p2, Lcom/tapjoy/TJError;->code:I

    iget-object v5, p2, Lcom/tapjoy/TJError;->message:Ljava/lang/String;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onRequestFailureNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    return-void
.end method

.method public onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .registers 5
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .line 22
    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onRequestSuccessNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .registers 14
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "request"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "itemId"    # Ljava/lang/String;
    .param p4, "quantity"    # I

    .line 52
    iget-wide v0, p0, Lcom/tapjoy/internal/TJPlacementListenerNative;->a:J

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/tapjoy/TJActionRequest;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/tapjoy/TJActionRequest;->getToken()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object v4, p2

    move-object v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/tapjoy/internal/TJPlacementListenerNative;->onRewardRequestNative(JLcom/tapjoy/TJPlacement;Ljava/lang/String;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    return-void
.end method
