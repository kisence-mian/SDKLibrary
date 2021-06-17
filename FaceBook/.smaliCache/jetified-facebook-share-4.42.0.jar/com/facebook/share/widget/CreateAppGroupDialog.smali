.class public Lcom/facebook/share/widget/CreateAppGroupDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "CreateAppGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;,
        Lcom/facebook/share/widget/CreateAppGroupDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/AppGroupCreationContent;",
        "Lcom/facebook/share/widget/CreateAppGroupDialog$Result;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I

.field private static final GAME_GROUP_CREATION_DIALOG:Ljava/lang/String; = "game_group_create"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupCreate:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 54
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/CreateAppGroupDialog;->DEFAULT_REQUEST_CODE:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    sget v0, Lcom/facebook/share/widget/CreateAppGroupDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/CreateAppGroupDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/CreateAppGroupDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 148
    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .registers 3
    .param p1, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;

    .line 161
    sget v0, Lcom/facebook/share/widget/CreateAppGroupDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 162
    return-void
.end method

.method public static canShow()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public static show(Landroid/app/Activity;Lcom/facebook/share/model/AppGroupCreationContent;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appGroupCreationContent"    # Lcom/facebook/share/model/AppGroupCreationContent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    new-instance v0, Lcom/facebook/share/widget/CreateAppGroupDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/CreateAppGroupDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/CreateAppGroupDialog;->show(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public static show(Landroid/app/Fragment;Lcom/facebook/share/model/AppGroupCreationContent;)V
    .registers 3
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "appGroupCreationContent"    # Lcom/facebook/share/model/AppGroupCreationContent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/CreateAppGroupDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/AppGroupCreationContent;)V

    .line 122
    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;Lcom/facebook/share/model/AppGroupCreationContent;)V
    .registers 3
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "appGroupCreationContent"    # Lcom/facebook/share/model/AppGroupCreationContent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/CreateAppGroupDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/AppGroupCreationContent;)V

    .line 110
    return-void
.end method

.method private static show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/AppGroupCreationContent;)V
    .registers 3
    .param p0, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;
    .param p1, "appGroupCreationContent"    # Lcom/facebook/share/model/AppGroupCreationContent;

    .line 127
    new-instance v0, Lcom/facebook/share/widget/CreateAppGroupDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/CreateAppGroupDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/CreateAppGroupDialog;->show(Ljava/lang/Object;)V

    .line 128
    return-void
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .registers 3

    .line 193
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/share/widget/CreateAppGroupDialog;->getRequestCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/AppCall;-><init>(I)V

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "Lcom/facebook/share/model/AppGroupCreationContent;",
            "Lcom/facebook/share/widget/CreateAppGroupDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/FacebookDialogBase<Lcom/facebook/share/model/AppGroupCreationContent;Lcom/facebook/share/widget/CreateAppGroupDialog$Result;>.ModeHandler;>;"
    new-instance v1, Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;-><init>(Lcom/facebook/share/widget/CreateAppGroupDialog;Lcom/facebook/share/widget/CreateAppGroupDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    return-object v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .registers 6
    .param p1, "callbackManager"    # Lcom/facebook/internal/CallbackManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/widget/CreateAppGroupDialog$Result;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/widget/CreateAppGroupDialog$Result;>;"
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Lcom/facebook/share/widget/CreateAppGroupDialog$1;

    invoke-direct {v0, p0, p2, p2}, Lcom/facebook/share/widget/CreateAppGroupDialog$1;-><init>(Lcom/facebook/share/widget/CreateAppGroupDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V

    .line 177
    .local v0, "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :goto_9
    new-instance v1, Lcom/facebook/share/widget/CreateAppGroupDialog$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/share/widget/CreateAppGroupDialog$2;-><init>(Lcom/facebook/share/widget/CreateAppGroupDialog;Lcom/facebook/share/internal/ResultProcessor;)V

    .line 188
    .local v1, "callbackManagerCallback":Lcom/facebook/internal/CallbackManagerImpl$Callback;
    invoke-virtual {p0}, Lcom/facebook/share/widget/CreateAppGroupDialog;->getRequestCode()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 189
    return-void
.end method
