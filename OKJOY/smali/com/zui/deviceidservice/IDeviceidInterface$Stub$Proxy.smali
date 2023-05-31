.class Lcom/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zui/deviceidservice/IDeviceidInterface;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/deviceidservice/IDeviceidInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
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

    iput-object p1, p0, Lcom/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public native a()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native asBinder()Landroid/os/IBinder;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getAAID(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getOAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getUDID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getVAID(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
