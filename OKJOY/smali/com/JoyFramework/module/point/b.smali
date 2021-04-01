.class Lcom/JoyFramework/module/point/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/point/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/point/a;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/JoyFramework/module/point/b;->a:Lcom/JoyFramework/module/point/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 89
    iget-object v0, p0, Lcom/JoyFramework/module/point/b;->a:Lcom/JoyFramework/module/point/a;

    check-cast p2, Lcom/JoyFramework/module/point/FloatViewService$a;

    invoke-virtual {p2}, Lcom/JoyFramework/module/point/FloatViewService$a;->a()Lcom/JoyFramework/module/point/FloatViewService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/JoyFramework/module/point/a;->a(Lcom/JoyFramework/module/point/a;Lcom/JoyFramework/module/point/FloatViewService;)Lcom/JoyFramework/module/point/FloatViewService;

    .line 90
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/JoyFramework/module/point/b;->a:Lcom/JoyFramework/module/point/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/module/point/a;->a(Lcom/JoyFramework/module/point/a;Lcom/JoyFramework/module/point/FloatViewService;)Lcom/JoyFramework/module/point/FloatViewService;

    .line 95
    return-void
.end method
