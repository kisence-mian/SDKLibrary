.class public Lcom/bun/miitmdid/c/g/a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static e:Ljava/lang/String; = "OpenDeviceId library"
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private static f:Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private b:Lcom/zui/deviceidservice/IDeviceidInterface;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private c:Landroid/content/ServiceConnection;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private d:Lcom/bun/miitmdid/c/e/a;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bun/miitmdid/c/e/a;)V
    .registers 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bun/miitmdid/c/g/a;->a:Landroid/content/Context;

    if-eqz p1, :cond_3d

    iput-object p1, p0, Lcom/bun/miitmdid/c/g/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bun/miitmdid/c/g/a;->d:Lcom/bun/miitmdid/c/e/a;

    new-instance v0, Lcom/bun/miitmdid/c/g/a$a;

    invoke-direct {v0, p0}, Lcom/bun/miitmdid/c/g/a$a;-><init>(Lcom/bun/miitmdid/c/g/a;)V

    iput-object v0, p0, Lcom/bun/miitmdid/c/g/a;->c:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zui.deviceidservice"

    const-string v2, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bun/miitmdid/c/g/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bun/miitmdid/c/g/a;->c:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "bindService Successful!"

    invoke-direct {p0, v0}, Lcom/bun/miitmdid/c/g/a;->b(Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    const-string v0, "bindService Failed!"

    invoke-direct {p0, v0}, Lcom/bun/miitmdid/c/g/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bun/miitmdid/c/g/a;->d:Lcom/bun/miitmdid/c/e/a;

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Lcom/bun/miitmdid/c/e/a;->b()V

    goto :goto_2f

    :cond_3d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static native synthetic a(Lcom/bun/miitmdid/c/g/a;)Lcom/bun/miitmdid/c/e/a;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method static native synthetic a(Lcom/bun/miitmdid/c/g/a;Lcom/zui/deviceidservice/IDeviceidInterface;)Lcom/zui/deviceidservice/IDeviceidInterface;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method static native synthetic a(Lcom/bun/miitmdid/c/g/a;Ljava/lang/String;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method private native a(Ljava/lang/String;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method private native b(Ljava/lang/String;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public native a()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native b()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native c()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native d()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native e()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native f()V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
