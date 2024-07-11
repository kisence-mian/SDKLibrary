.class Ltool/Clipboard$1$1;
.super Landroid/os/Handler;
.source "Clipboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltool/Clipboard$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltool/Clipboard$1;


# direct methods
.method constructor <init>(Ltool/Clipboard$1;)V
    .registers 2
    .param p1, "this$1"    # Ltool/Clipboard$1;

    .line 57
    iput-object p1, p0, Ltool/Clipboard$1$1;->this$1:Ltool/Clipboard$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 59
    iget-object v0, p0, Ltool/Clipboard$1$1;->this$1:Ltool/Clipboard$1;

    iget-object v0, v0, Ltool/Clipboard$1;->val$activity:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    sput-object v0, Ltool/Clipboard;->clipboard:Landroid/content/ClipboardManager;

    .line 60
    iget-object v0, p0, Ltool/Clipboard$1$1;->this$1:Ltool/Clipboard$1;

    iget-object v0, v0, Ltool/Clipboard$1;->val$content:Ljava/lang/String;

    const-string v1, "data"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 61
    .local v0, "textCd":Landroid/content/ClipData;
    sget-object v1, Ltool/Clipboard;->clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 62
    return-void
.end method
