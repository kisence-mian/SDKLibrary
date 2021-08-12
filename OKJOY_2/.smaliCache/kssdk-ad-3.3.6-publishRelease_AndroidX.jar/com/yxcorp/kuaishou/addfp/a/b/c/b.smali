.class public abstract Lcom/yxcorp/kuaishou/addfp/a/b/c/b;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/yxcorp/kuaishou/addfp/a/b/c/a;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/yxcorp/kuaishou/addfp/a/b/c/a;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.zui.deviceidservice.IDeviceidInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/yxcorp/kuaishou/addfp/a/b/c/a;

    if-nez v1, :cond_11

    goto :goto_14

    :cond_11
    check-cast v0, Lcom/yxcorp/kuaishou/addfp/a/b/c/a;

    return-object v0

    :cond_14
    :goto_14
    new-instance v0, Lcom/yxcorp/kuaishou/addfp/a/b/c/c;

    invoke-direct {v0, p0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/c;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
