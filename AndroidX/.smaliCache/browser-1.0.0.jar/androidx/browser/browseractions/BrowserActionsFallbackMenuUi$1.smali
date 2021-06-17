.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;
.super Ljava/lang/Object;
.source "BrowserActionsFallbackMenuUi.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->displayMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

    .line 91
    iput-object p1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;->this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

    iput-object p2, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 94
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;->this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

    iget-object v0, v0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mMenuUiListener:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;

    iget-object v1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;->onMenuShown(Landroid/view/View;)V

    .line 95
    return-void
.end method
