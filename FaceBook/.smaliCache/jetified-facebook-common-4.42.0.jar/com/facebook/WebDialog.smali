.class public Lcom/facebook/WebDialog;
.super Ljava/lang/Object;
.source "WebDialog.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWebDialogTheme()I
    .registers 1

    .line 32
    invoke-static {}, Lcom/facebook/internal/WebDialog;->getWebDialogTheme()I

    move-result v0

    return v0
.end method

.method public static setWebDialogTheme(I)V
    .registers 1
    .param p0, "theme"    # I

    .line 40
    invoke-static {p0}, Lcom/facebook/internal/WebDialog;->setWebDialogTheme(I)V

    .line 41
    return-void
.end method
