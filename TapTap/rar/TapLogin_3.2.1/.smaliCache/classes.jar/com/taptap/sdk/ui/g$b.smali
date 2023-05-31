.class Lcom/taptap/sdk/ui/g$b;
.super Ljava/lang/Object;
.source "CloudGameHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/ui/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/taptap/sdk/ui/g;


# direct methods
.method private constructor <init>(Lcom/taptap/sdk/ui/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/ui/g$b;->a:Lcom/taptap/sdk/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taptap/sdk/ui/g;Lcom/taptap/sdk/ui/g$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/taptap/sdk/ui/g$b;-><init>(Lcom/taptap/sdk/ui/g;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/taptap/sdk/ui/g$b;->a:Lcom/taptap/sdk/ui/g;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/taptap/sdk/ui/g;->a(Lcom/taptap/sdk/ui/g;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 2
    iget-object p1, p0, Lcom/taptap/sdk/ui/g$b;->a:Lcom/taptap/sdk/ui/g;

    invoke-static {p1}, Lcom/taptap/sdk/ui/g;->b(Lcom/taptap/sdk/ui/g;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/taptap/sdk/ui/g$b;->a:Lcom/taptap/sdk/ui/g;

    invoke-static {p1}, Lcom/taptap/sdk/ui/g;->e(Lcom/taptap/sdk/ui/g;)V

    return-void
.end method
