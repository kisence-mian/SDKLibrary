.class Lcom/tapsdk/moment/view/MomentDialog$30;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog;->handleLayout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/MomentDialog;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 1083
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$30;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1086
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$30;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->setFullScreen()V
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$2100(Lcom/tapsdk/moment/view/MomentDialog;)V

    .line 1087
    return-void
.end method
