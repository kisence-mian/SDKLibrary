.class public interface abstract Lcom/qq/e/ads/nativ/express2/AdEventListener;
.super Ljava/lang/Object;


# static fields
.field public static final EVENT_CLICK:I = 0x65

.field public static final EVENT_CLOSE:I = 0x69

.field public static final EVENT_IMPRESSION:I = 0x66

.field public static final EVENT_RENDER_FAIL:I = 0x68

.field public static final EVENT_RENDER_SUCCESS:I = 0x67


# virtual methods
.method public abstract onAdClosed()V
.end method

.method public abstract onClick()V
.end method

.method public abstract onExposed()V
.end method

.method public abstract onRenderFail()V
.end method

.method public abstract onRenderSuccess()V
.end method
