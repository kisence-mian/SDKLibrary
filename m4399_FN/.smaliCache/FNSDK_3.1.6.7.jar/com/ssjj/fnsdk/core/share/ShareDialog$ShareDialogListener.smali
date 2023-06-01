.class public interface abstract Lcom/ssjj/fnsdk/core/share/ShareDialog$ShareDialogListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/share/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShareDialogListener"
.end annotation


# virtual methods
.method public abstract checkShare(Ljava/lang/String;)Z
.end method

.method public abstract onCancel()V
.end method

.method public abstract onClick(Ljava/lang/String;)V
.end method

.method public abstract onGetIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract onGetName(Ljava/lang/String;)Ljava/lang/String;
.end method
