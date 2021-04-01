.class final Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .registers 2

    .prologue
    .line 2207
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2208
    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 9
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2212
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    .line 2213
    .local v2, "parentMenu":Landroid/view/Menu;
    if-eq v2, p1, :cond_22

    move v0, v3

    .line 2214
    .local v0, "isSubMenu":Z
    :goto_8
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    if-eqz v0, :cond_d

    move-object p1, v2

    .end local p1    # "menu":Landroid/support/v7/view/menu/MenuBuilder;
    :cond_d
    invoke-virtual {v4, p1}, Landroid/support/v7/app/AppCompatDelegateImpl;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v1

    .line 2215
    .local v1, "panel":Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;
    if-eqz v1, :cond_21

    .line 2216
    if-eqz v0, :cond_24

    .line 2217
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget v5, v1, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/support/v7/app/AppCompatDelegateImpl;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/Menu;)V

    .line 2218
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v4, v1, v3}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    .line 2225
    :cond_21
    :goto_21
    return-void

    .line 2213
    .end local v0    # "isSubMenu":Z
    .end local v1    # "panel":Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;
    .restart local p1    # "menu":Landroid/support/v7/view/menu/MenuBuilder;
    :cond_22
    const/4 v0, 0x0

    goto :goto_8

    .line 2222
    .end local p1    # "menu":Landroid/support/v7/view/menu/MenuBuilder;
    .restart local v0    # "isSubMenu":Z
    .restart local v1    # "panel":Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;
    :cond_24
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v3, v1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl;->closePanel(Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    goto :goto_21
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .registers 4
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 2229
    if-nez p1, :cond_1b

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-boolean v1, v1, Landroid/support/v7/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v1, :cond_1b

    .line 2230
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImpl;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2231
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1b

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    iget-boolean v1, v1, Landroid/support/v7/app/AppCompatDelegateImpl;->mIsDestroyed:Z

    if-nez v1, :cond_1b

    .line 2232
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2235
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method
