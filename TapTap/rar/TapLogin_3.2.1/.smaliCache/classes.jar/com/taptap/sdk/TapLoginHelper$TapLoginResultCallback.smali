.class public interface abstract Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;
.super Ljava/lang/Object;
.source "TapLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/TapLoginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TapLoginResultCallback"
.end annotation


# virtual methods
.method public abstract onLoginCancel()V
.end method

.method public abstract onLoginError(Lcom/taptap/sdk/AccountGlobalError;)V
.end method

.method public abstract onLoginSuccess(Lcom/taptap/sdk/AccessToken;)V
.end method
