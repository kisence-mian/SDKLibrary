.class public abstract Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.super Ljava/lang/Object;
.source "FacebookDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FacebookDialogBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/FacebookDialogBase;


# direct methods
.method protected constructor <init>(Lcom/facebook/internal/FacebookDialogBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/internal/FacebookDialogBase;

    .line 247
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase$ModeHandler;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>.ModeHandler;"
    iput-object p1, p0, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;->this$0:Lcom/facebook/internal/FacebookDialogBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canShow(Ljava/lang/Object;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;Z)Z"
        }
    .end annotation
.end method

.method public abstract createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTENT;)",
            "Lcom/facebook/internal/AppCall;"
        }
    .end annotation
.end method

.method public getMode()Ljava/lang/Object;
    .registers 2

    .line 252
    .local p0, "this":Lcom/facebook/internal/FacebookDialogBase$ModeHandler;, "Lcom/facebook/internal/FacebookDialogBase<TCONTENT;TRESULT;>.ModeHandler;"
    sget-object v0, Lcom/facebook/internal/FacebookDialogBase;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    return-object v0
.end method
