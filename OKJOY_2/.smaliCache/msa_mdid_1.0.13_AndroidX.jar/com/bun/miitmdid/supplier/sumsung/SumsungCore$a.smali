.class Lcom/bun/miitmdid/supplier/sumsung/SumsungCore$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;-><init>(Landroid/content/Context;Lcom/bun/miitmdid/c/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;


# direct methods
.method constructor <init>(Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;)V
    .registers 2

    iput-object p1, p0, Lcom/bun/miitmdid/supplier/sumsung/SumsungCore$a;->a:Lcom/bun/miitmdid/supplier/sumsung/SumsungCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synchronized native onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public native onServiceDisconnected(Landroid/content/ComponentName;)V
.end method
