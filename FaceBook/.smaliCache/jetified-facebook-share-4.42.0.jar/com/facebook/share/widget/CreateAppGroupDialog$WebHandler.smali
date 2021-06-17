.class Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "CreateAppGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/CreateAppGroupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/AppGroupCreationContent;",
        "Lcom/facebook/share/widget/CreateAppGroupDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/CreateAppGroupDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/CreateAppGroupDialog;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;->this$0:Lcom/facebook/share/widget/CreateAppGroupDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/CreateAppGroupDialog;Lcom/facebook/share/widget/CreateAppGroupDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/widget/CreateAppGroupDialog;
    .param p2, "x1"    # Lcom/facebook/share/widget/CreateAppGroupDialog$1;

    .line 204
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;-><init>(Lcom/facebook/share/widget/CreateAppGroupDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/AppGroupCreationContent;Z)Z
    .registers 4
    .param p1, "content"    # Lcom/facebook/share/model/AppGroupCreationContent;
    .param p2, "isBestEffort"    # Z

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .registers 3

    .line 204
    check-cast p1, Lcom/facebook/share/model/AppGroupCreationContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;->canShow(Lcom/facebook/share/model/AppGroupCreationContent;Z)Z

    move-result p1

    return p1
.end method

.method public createAppCall(Lcom/facebook/share/model/AppGroupCreationContent;)Lcom/facebook/internal/AppCall;
    .registers 5
    .param p1, "content"    # Lcom/facebook/share/model/AppGroupCreationContent;

    .line 212
    iget-object v0, p0, Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;->this$0:Lcom/facebook/share/widget/CreateAppGroupDialog;

    invoke-virtual {v0}, Lcom/facebook/share/widget/CreateAppGroupDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 213
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    nop

    .line 216
    invoke-static {p1}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/AppGroupCreationContent;)Landroid/os/Bundle;

    move-result-object v1

    .line 213
    const-string v2, "game_group_create"

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 218
    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 2

    .line 204
    check-cast p1, Lcom/facebook/share/model/AppGroupCreationContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;->createAppCall(Lcom/facebook/share/model/AppGroupCreationContent;)Lcom/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method
