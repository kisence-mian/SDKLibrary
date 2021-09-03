.class public interface abstract Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;
.super Ljava/lang/Object;
.source "TapTapMomentModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/TapTapMomentModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetTapTokenListener"
.end annotation


# virtual methods
.method public abstract onFail(Lcom/tds/common/reactor/exceptions/FlowException;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
