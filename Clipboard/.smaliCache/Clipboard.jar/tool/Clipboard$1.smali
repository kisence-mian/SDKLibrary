.class Ltool/Clipboard$1;
.super Ljava/lang/Object;
.source "Clipboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltool/Clipboard;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltool/Clipboard;

.field final synthetic val$activity:Landroid/content/Context;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltool/Clipboard;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Ltool/Clipboard;

    .line 53
    iput-object p1, p0, Ltool/Clipboard$1;->this$0:Ltool/Clipboard;

    iput-object p2, p0, Ltool/Clipboard$1;->val$activity:Landroid/content/Context;

    iput-object p3, p0, Ltool/Clipboard$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 56
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 57
    new-instance v0, Ltool/Clipboard$1$1;

    invoke-direct {v0, p0}, Ltool/Clipboard$1$1;-><init>(Ltool/Clipboard$1;)V

    .line 64
    .local v0, "m_handler":Landroid/os/Handler;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 65
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 67
    return-void
.end method
