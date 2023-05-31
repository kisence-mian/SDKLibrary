.class public interface abstract Lcom/tapsdk/bootstrap/ITapBootstrap;
.super Ljava/lang/Object;
.source "ITapBootstrap.java"


# virtual methods
.method public abstract init(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;)V
.end method

.method public abstract isInitialized()Z
.end method

.method public varargs abstract loginWithTapTap(Landroid/app/Activity;Lcom/tapsdk/bootstrap/Callback;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/tapsdk/bootstrap/Callback<",
            "Lcom/tapsdk/bootstrap/account/TDSUser;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setPreferLang(I)V
.end method
