.class public final Lokjoy/s/d;
.super Landroid/app/Fragment;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lokjoy/s/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lokjoy/s/d;->b:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    invoke-static {}, Lokjoy/s/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "permission_group"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "request_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_2b
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "permission_group"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_10

    return-void

    :cond_10
    const-string v0, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lokjoy/s/f;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_24
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lokjoy/s/f;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b7

    :cond_34
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "request_code"

    const-string v3, "package:"

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lokjoy/s/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_77

    new-instance v0, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v0, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_77
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ba

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lokjoy/s/f;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_ba

    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_ba

    :cond_b7
    invoke-virtual {p0}, Lokjoy/s/d;->a()V

    :cond_ba
    :goto_ba
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    iget-boolean p2, p0, Lokjoy/s/d;->a:Z

    if-nez p2, :cond_21

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "request_code"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-ne p1, p2, :cond_21

    const/4 p1, 0x1

    iput-boolean p1, p0, Lokjoy/s/d;->a:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_21
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 14

    const-string v0, "PermissionFragment"

    const-string v1, "onRequestPermissionsResult: call.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_16

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_16
    sget-object v0, Lokjoy/s/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokjoy/s/b;

    if-nez v0, :cond_21

    return-void

    :cond_21
    const/4 v1, 0x0

    move v2, v1

    :goto_23
    array-length v3, p2

    const/4 v4, -0x1

    const-string v5, "android.permission.SYSTEM_ALERT_WINDOW"

    const-string v6, "android.permission.REQUEST_INSTALL_PACKAGES"

    if-ge v2, v3, :cond_78

    aget-object v3, p2, v2

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lokjoy/s/f;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_40

    aput v1, p3, v2

    goto :goto_42

    :cond_40
    aput v4, p3, v2

    :cond_42
    :goto_42
    aget-object v3, p2, v2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lokjoy/s/f;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_57

    aput v1, p3, v2

    goto :goto_59

    :cond_57
    aput v4, p3, v2

    :cond_59
    :goto_59
    aget-object v3, p2, v2

    const-string v4, "android.permission.ANSWER_PHONE_CALLS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    aget-object v3, p2, v2

    const-string v4, "android.permission.READ_PHONE_NUMBERS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    :cond_6d
    invoke-static {}, Lokjoy/s/f;->b()Z

    move-result v3

    if-nez v3, :cond_75

    aput v1, p3, v2

    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 1
    :cond_78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_7e
    array-length v7, p3

    if-ge v3, v7, :cond_8d

    aget v7, p3, v3

    if-nez v7, :cond_8a

    aget-object v7, p2, v3

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    .line 2
    :cond_8d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    array-length v7, p2

    const/4 v8, 0x1

    if-ne v3, v7, :cond_9a

    invoke-interface {v0, v2, v8}, Lokjoy/s/b;->b(Ljava/util/List;Z)V

    goto/16 :goto_120

    .line 3
    :cond_9a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v7, v1

    :goto_a0
    array-length v9, p3

    if-ge v7, v9, :cond_af

    aget v9, p3, v7

    if-ne v9, v4, :cond_ac

    aget-object v9, p2, v7

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ac
    add-int/lit8 v7, v7, 0x1

    goto :goto_a0

    .line 4
    :cond_af
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "request_constant"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_eb

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_c3
    :goto_c3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dc

    goto :goto_c3

    :cond_dc
    invoke-static {p2, v4}, Lokjoy/s/f;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c3

    move p2, v8

    goto :goto_e5

    :cond_e4
    move p2, v1

    :goto_e5
    if-eqz p2, :cond_eb

    .line 6
    invoke-virtual {p0}, Lokjoy/s/d;->a()V

    return-void

    :cond_eb
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_f3
    :goto_f3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_113

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10c

    goto :goto_f3

    :cond_10c
    invoke-static {p2, v4}, Lokjoy/s/f;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f3

    goto :goto_114

    :cond_113
    move v8, v1

    .line 8
    :goto_114
    invoke-interface {v0, v3, v8}, Lokjoy/s/b;->a(Ljava/util/List;Z)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_120

    invoke-interface {v0, v2, v1}, Lokjoy/s/b;->b(Ljava/util/List;Z)V

    :cond_120
    :goto_120
    sget-object p2, Lokjoy/s/d;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public run()V
    .registers 1

    invoke-virtual {p0}, Lokjoy/s/d;->a()V

    return-void
.end method
