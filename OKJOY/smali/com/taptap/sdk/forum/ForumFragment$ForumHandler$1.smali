.class Lcom/taptap/sdk/forum/ForumFragment$ForumHandler$1;
.super Ljava/lang/Object;
.source "ForumFragment.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler$1;->this$0:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 806
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 802
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler$1;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
