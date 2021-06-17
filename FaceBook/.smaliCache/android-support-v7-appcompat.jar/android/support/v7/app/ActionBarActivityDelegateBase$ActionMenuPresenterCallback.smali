.class final Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;
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
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V
    .registers 2

    .line 1364
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/app/ActionBarActivityDelegateBase$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/app/ActionBarActivityDelegateBase;
    .param p2, "x1"    # Landroid/support/v7/app/ActionBarActivityDelegateBase$1;

    .line 1364
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 1376
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    # invokes: Landroid/support/v7/app/ActionBarActivityDelegateBase;->checkCloseActionMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    invoke-static {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->access$900(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 1377
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z
    .registers 4
    .param p1, "subMenu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 1367
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getWindowCallback()Landroid/support/v7/internal/app/WindowCallback;

    move-result-object v0

    .line 1368
    .local v0, "cb":Landroid/support/v7/internal/app/WindowCallback;
    if-eqz v0, :cond_d

    .line 1369
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/support/v7/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1371
    :cond_d
    const/4 v1, 0x1

    return v1
.end method
