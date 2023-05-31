.class Lcom/JoyFramework/wight/i$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JoyFramework/wight/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/i;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/JoyFramework/wight/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/JoyFramework/wight/i;Lcom/JoyFramework/wight/i;)V
    .registers 4

    .prologue
    .line 280
    iput-object p1, p0, Lcom/JoyFramework/wight/i$a;->a:Lcom/JoyFramework/wight/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 281
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/JoyFramework/wight/i$a;->b:Ljava/lang/ref/WeakReference;

    .line 282
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 287
    iget-object v0, p0, Lcom/JoyFramework/wight/i$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 288
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    .line 289
    iget-object v0, p0, Lcom/JoyFramework/wight/i$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/wight/i;

    invoke-virtual {v0, p1}, Lcom/JoyFramework/wight/i;->a(Landroid/os/Message;)V

    .line 292
    :cond_1a
    return-void
.end method
