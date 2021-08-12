.class Lcom/bun/miitmdid/c/g/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/c/g/a;-><init>(Landroid/content/Context;Lcom/bun/miitmdid/c/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bun/miitmdid/c/g/a;


# direct methods
.method constructor <init>(Lcom/bun/miitmdid/c/g/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bun/miitmdid/c/g/a$a;->a:Lcom/bun/miitmdid/c/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synchronized native onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public native onServiceDisconnected(Landroid/content/ComponentName;)V
.end method
