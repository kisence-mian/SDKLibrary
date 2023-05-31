.class public final Lcom/huawei/android/hms/pps/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field public a:Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/hms/pps/a/a;->a:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/android/hms/pps/a/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public final native onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public final native onServiceDisconnected(Landroid/content/ComponentName;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
