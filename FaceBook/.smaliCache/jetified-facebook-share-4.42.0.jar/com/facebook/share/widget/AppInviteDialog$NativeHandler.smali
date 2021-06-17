.class Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "AppInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/AppInviteDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/AppInviteContent;",
        "Lcom/facebook/share/widget/AppInviteDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/AppInviteDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/AppInviteDialog;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/AppInviteDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/AppInviteDialog;Lcom/facebook/share/widget/AppInviteDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/widget/AppInviteDialog;
    .param p2, "x1"    # Lcom/facebook/share/widget/AppInviteDialog$1;

    .line 233
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;-><init>(Lcom/facebook/share/widget/AppInviteDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/AppInviteContent;Z)Z
    .registers 4
    .param p1, "content"    # Lcom/facebook/share/model/AppInviteContent;
    .param p2, "isBestEffort"    # Z

    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .registers 3

    .line 233
    check-cast p1, Lcom/facebook/share/model/AppInviteContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;->canShow(Lcom/facebook/share/model/AppInviteContent;Z)Z

    move-result p1

    return p1
.end method

.method public createAppCall(Lcom/facebook/share/model/AppInviteContent;)Lcom/facebook/internal/AppCall;
    .registers 5
    .param p1, "content"    # Lcom/facebook/share/model/AppInviteContent;

    .line 241
    iget-object v0, p0, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/AppInviteDialog;

    invoke-virtual {v0}, Lcom/facebook/share/widget/AppInviteDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 243
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    new-instance v1, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler$1;-><init>(Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;Lcom/facebook/share/model/AppInviteContent;)V

    .line 260
    # invokes: Lcom/facebook/share/widget/AppInviteDialog;->getFeature()Lcom/facebook/internal/DialogFeature;
    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->access$300()Lcom/facebook/internal/DialogFeature;

    move-result-object v2

    .line 243
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForNativeDialog(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/DialogPresenter$ParameterProvider;Lcom/facebook/internal/DialogFeature;)V

    .line 262
    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 2

    .line 233
    check-cast p1, Lcom/facebook/share/model/AppInviteContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;->createAppCall(Lcom/facebook/share/model/AppInviteContent;)Lcom/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method
