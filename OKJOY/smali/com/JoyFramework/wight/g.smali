.class Lcom/JoyFramework/wight/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/f;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/f;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/JoyFramework/wight/g;->a:Lcom/JoyFramework/wight/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/JoyFramework/wight/g;->a:Lcom/JoyFramework/wight/f;

    invoke-static {v0}, Lcom/JoyFramework/wight/f;->a(Lcom/JoyFramework/wight/f;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 92
    iget-object v0, p0, Lcom/JoyFramework/wight/g;->a:Lcom/JoyFramework/wight/f;

    invoke-static {v0}, Lcom/JoyFramework/wight/f;->b(Lcom/JoyFramework/wight/f;)Lcom/JoyFramework/wight/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/JoyFramework/wight/f$a;->b()V

    .line 94
    :cond_11
    const/4 v0, 0x0

    return v0
.end method
