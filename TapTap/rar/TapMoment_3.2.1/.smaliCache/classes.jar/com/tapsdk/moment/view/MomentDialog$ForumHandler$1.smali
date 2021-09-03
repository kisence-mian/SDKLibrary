.class Lcom/tapsdk/moment/view/MomentDialog$ForumHandler$1;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    .line 1307
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$ForumHandler$1;->this$0:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 1310
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    .line 1307
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tapsdk/moment/view/MomentDialog$ForumHandler$1;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
