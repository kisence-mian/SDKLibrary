.class public Lcom/bun/miitmdid/c/g/a;
.super Ljava/lang/Object;


# static fields
.field private static e:Ljava/lang/String; = "OpenDeviceId library"

.field private static f:Z


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/zui/deviceidservice/IDeviceidInterface;

.field private c:Landroid/content/ServiceConnection;

.field private d:Lcom/bun/miitmdid/c/e/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bun/miitmdid/c/e/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bun/miitmdid/c/g/a;->a:Landroid/content/Context;

    if-eqz p1, :cond_3d

    iput-object p1, p0, Lcom/bun/miitmdid/c/g/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bun/miitmdid/c/g/a;->d:Lcom/bun/miitmdid/c/e/a;

    new-instance p1, Lcom/bun/miitmdid/c/g/a$a;

    invoke-direct {p1, p0}, Lcom/bun/miitmdid/c/g/a$a;-><init>(Lcom/bun/miitmdid/c/g/a;)V

    iput-object p1, p0, Lcom/bun/miitmdid/c/g/a;->c:Landroid/content/ServiceConnection;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.zui.deviceidservice"

    const-string v0, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/bun/miitmdid/c/g/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/bun/miitmdid/c/g/a;->c:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_30

    const-string p1, "bindService Successful!"

    invoke-direct {p0, p1}, Lcom/bun/miitmdid/c/g/a;->b(Ljava/lang/String;)V

    goto :goto_3c

    :cond_30
    const-string p1, "bindService Failed!"

    invoke-direct {p0, p1}, Lcom/bun/miitmdid/c/g/a;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bun/miitmdid/c/g/a;->d:Lcom/bun/miitmdid/c/e/a;

    if-eqz p1, :cond_3c

    invoke-interface {p1}, Lcom/bun/miitmdid/c/e/a;->b()V

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context can not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static native synthetic a(Lcom/bun/miitmdid/c/g/a;)Lcom/bun/miitmdid/c/e/a;
.end method

.method static native synthetic a(Lcom/bun/miitmdid/c/g/a;Lcom/zui/deviceidservice/IDeviceidInterface;)Lcom/zui/deviceidservice/IDeviceidInterface;
.end method

.method static native synthetic a(Lcom/bun/miitmdid/c/g/a;Ljava/lang/String;)V
.end method

.method private native a(Ljava/lang/String;)V
.end method

.method private native b(Ljava/lang/String;)V
.end method


# virtual methods
.method public native a()Ljava/lang/String;
.end method

.method public native b()Ljava/lang/String;
.end method

.method public native c()Ljava/lang/String;
.end method

.method public native d()Ljava/lang/String;
.end method

.method public native e()Z
.end method

.method public native f()V
.end method
