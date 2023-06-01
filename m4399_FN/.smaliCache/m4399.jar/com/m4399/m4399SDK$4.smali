.class Lcom/m4399/m4399SDK$4;
.super Ljava/lang/Object;
.source "m4399SDK.java"

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m4399/m4399SDK;->OnAppplicationQuit()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m4399/m4399SDK;


# direct methods
.method constructor <init>(Lcom/m4399/m4399SDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/m4399/m4399SDK;

    .line 746
    iput-object p1, p0, Lcom/m4399/m4399SDK$4;->this$0:Lcom/m4399/m4399SDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    .line 756
    return-void
.end method

.method public onExit()V
    .registers 2

    .line 751
    iget-object v0, p0, Lcom/m4399/m4399SDK$4;->this$0:Lcom/m4399/m4399SDK;

    invoke-virtual {v0}, Lcom/m4399/m4399SDK;->ExitGame()V

    .line 752
    return-void
.end method
