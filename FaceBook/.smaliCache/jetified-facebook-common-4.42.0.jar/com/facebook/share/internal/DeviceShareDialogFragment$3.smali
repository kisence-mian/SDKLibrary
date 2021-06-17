.class Lcom/facebook/share/internal/DeviceShareDialogFragment$3;
.super Ljava/lang/Object;
.source "DeviceShareDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/DeviceShareDialogFragment;->setCurrentRequestState(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/share/internal/DeviceShareDialogFragment;

    .line 245
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$3;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment$3;->this$0:Lcom/facebook/share/internal/DeviceShareDialogFragment;

    # getter for: Lcom/facebook/share/internal/DeviceShareDialogFragment;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->access$000(Lcom/facebook/share/internal/DeviceShareDialogFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 249
    return-void
.end method
