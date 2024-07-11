.class public abstract Lcom/anythink/china/a/a/h$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/anythink/china/a/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/a/a/h$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/anythink/china/a/a/h;
    .registers 4

    .line 18
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 19
    return-object v0

    .line 22
    :cond_4
    :try_start_4
    const-string v1, "com.heytap.openid.IOpenID"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 23
    if-eqz v1, :cond_13

    instance-of v2, v1, Lcom/anythink/china/a/a/h;

    if-eqz v2, :cond_13

    check-cast v1, Lcom/anythink/china/a/a/h;

    return-object v1

    :cond_13
    new-instance v1, Lcom/anythink/china/a/a/h$a$a;

    invoke-direct {v1, p0}, Lcom/anythink/china/a/a/h$a$a;-><init>(Landroid/os/IBinder;)V
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_19

    return-object v1

    .line 24
    :catchall_19
    move-exception p0

    .line 25
    return-object v0
.end method
