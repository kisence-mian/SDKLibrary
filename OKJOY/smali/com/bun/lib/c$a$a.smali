.class Lcom/bun/lib/c$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/lib/c;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/lib/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bun/lib/c$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public native asBinder()Landroid/os/IBinder;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native c()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getAAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getOAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getVAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native isSupported()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native shutDown()V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
