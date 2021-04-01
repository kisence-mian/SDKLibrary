.class Lmobi/oneway/export/g/f$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/oneway/export/g/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field private c:Lmobi/oneway/export/g/f$b;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/g/f$b;)V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lmobi/oneway/export/g/f$c;->c:Lmobi/oneway/export/g/f$b;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_e

    iget-object v1, p0, Lmobi/oneway/export/g/f$c;->c:Lmobi/oneway/export/g/f$b;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmobi/oneway/export/g/b;

    invoke-interface {v1, v0}, Lmobi/oneway/export/g/f$b;->a(Lmobi/oneway/export/g/b;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmobi/oneway/export/g/b;

    iget-object v1, p0, Lmobi/oneway/export/g/f$c;->c:Lmobi/oneway/export/g/f$b;

    invoke-virtual {v0}, Lmobi/oneway/export/g/b;->m()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lmobi/oneway/export/g/f$b;->a(Ljava/lang/Throwable;Lmobi/oneway/export/g/b;)V

    goto :goto_d
.end method
