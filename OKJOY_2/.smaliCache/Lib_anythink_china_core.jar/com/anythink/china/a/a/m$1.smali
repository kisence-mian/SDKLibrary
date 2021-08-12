.class final Lcom/anythink/china/a/a/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/a/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/a/a/m;


# direct methods
.method constructor <init>(Lcom/anythink/china/a/a/m;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/anythink/china/a/a/m$1;->a:Lcom/anythink/china/a/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 23
    iget-object p1, p0, Lcom/anythink/china/a/a/m$1;->a:Lcom/anythink/china/a/a/m;

    new-instance v0, Lcom/anythink/china/a/a/l$a;

    invoke-direct {v0, p2}, Lcom/anythink/china/a/a/l$a;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/anythink/china/a/a/m;->a:Lcom/anythink/china/a/a/l;

    .line 24
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 27
    return-void
.end method
