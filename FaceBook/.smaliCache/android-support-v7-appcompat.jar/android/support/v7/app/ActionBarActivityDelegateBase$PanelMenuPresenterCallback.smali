.class final Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarActivityDelegateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V
    .registers 2

    .line 1333
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/app/ActionBarActivityDelegateBase$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/app/ActionBarActivityDelegateBase;
    .param p2, "x1"    # Landroid/support/v7/app/ActionBarActivityDelegateBase$1;

    .line 1333
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .registers 9
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 1336
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 1337
    .local v0, "parentMenu":Landroid/view/Menu;
    const/4 v1, 0x1

    if-eq v0, p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    .line 1338
    .local v2, "isSubMenu":Z
    :goto_a
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    if-eqz v2, :cond_10

    move-object v4, v0

    goto :goto_11

    :cond_10
    move-object v4, p1

    :goto_11
    # invokes: Landroid/support/v7/app/ActionBarActivityDelegateBase;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;
    invoke-static {v3, v4}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->access$600(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/view/Menu;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v3

    .line 1339
    .local v3, "panel":Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;
    if-eqz v3, :cond_32

    .line 1340
    if-eqz v2, :cond_26

    .line 1341
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget v5, v3, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    # invokes: Landroid/support/v7/app/ActionBarActivityDelegateBase;->callOnPanelClosed(ILandroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V
    invoke-static {v4, v5, v3, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->access$700(Landroid/support/v7/app/ActionBarActivityDelegateBase;ILandroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V

    .line 1342
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    # invokes: Landroid/support/v7/app/ActionBarActivityDelegateBase;->closePanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V
    invoke-static {v4, v3, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->access$800(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    goto :goto_32

    .line 1346
    :cond_26
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v1, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->closeOptionsMenu()V

    .line 1347
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    # invokes: Landroid/support/v7/app/ActionBarActivityDelegateBase;->closePanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V
    invoke-static {v1, v3, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->access$800(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 1350
    :cond_32
    :goto_32
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z
    .registers 4
    .param p1, "subMenu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 1354
    if-nez p1, :cond_1d

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-boolean v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v0, :cond_1d

    .line 1355
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getWindowCallback()Landroid/support/v7/internal/app/WindowCallback;

    move-result-object v0

    .line 1356
    .local v0, "cb":Landroid/support/v7/internal/app/WindowCallback;
    if-eqz v0, :cond_1d

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1357
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/support/v7/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1360
    .end local v0    # "cb":Landroid/support/v7/internal/app/WindowCallback;
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method
