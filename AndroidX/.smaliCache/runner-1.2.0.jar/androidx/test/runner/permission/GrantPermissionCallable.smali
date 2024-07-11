.class Landroidx/test/runner/permission/GrantPermissionCallable;
.super Landroidx/test/runner/permission/RequestPermissionCallable;
.source "GrantPermissionCallable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GrantPermissionCallable"


# direct methods
.method constructor <init>(Landroidx/test/runner/permission/ShellCommand;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "shellCommand"    # Landroidx/test/runner/permission/ShellCommand;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shellCommand",
            "context",
            "permission"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/test/runner/permission/RequestPermissionCallable;-><init>(Landroidx/test/runner/permission/ShellCommand;Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public call()Landroidx/test/runner/permission/RequestPermissionCallable$Result;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    const-string v0, " cannot be granted!"

    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->isPermissionGranted()Z

    move-result v1

    const-string v2, "Permission: "

    const-string v3, "GrantPermissionCallable"

    if-eqz v1, :cond_37

    .line 36
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->getPermission()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is already granted!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v0, Landroidx/test/runner/permission/RequestPermissionCallable$Result;->SUCCESS:Landroidx/test/runner/permission/RequestPermissionCallable$Result;

    return-object v0

    .line 39
    :cond_37
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->getShellCommand()Landroidx/test/runner/permission/ShellCommand;

    move-result-object v1

    .line 41
    .local v1, "cmdForPermission":Landroidx/test/runner/permission/ShellCommand;
    const-wide/16 v4, 0x3e8

    :try_start_3d
    invoke-virtual {v1}, Landroidx/test/runner/permission/ShellCommand;->execute()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_7b

    .line 43
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->isPermissionGranted()Z

    move-result v6

    if-nez v6, :cond_78

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 46
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->isPermissionGranted()Z

    move-result v4

    if-nez v4, :cond_78

    .line 47
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->getPermission()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_62
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v0, Landroidx/test/runner/permission/RequestPermissionCallable$Result;->FAILURE:Landroidx/test/runner/permission/RequestPermissionCallable$Result;

    return-object v0

    .line 52
    :cond_78
    sget-object v0, Landroidx/test/runner/permission/RequestPermissionCallable$Result;->SUCCESS:Landroidx/test/runner/permission/RequestPermissionCallable$Result;

    return-object v0

    .line 43
    :catchall_7b
    move-exception v6

    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->isPermissionGranted()Z

    move-result v7

    if-nez v7, :cond_9f

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 46
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->isPermissionGranted()Z

    move-result v4

    if-nez v4, :cond_9f

    .line 47
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->getPermission()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_62

    .line 48
    :cond_9f
    goto :goto_a1

    :goto_a0
    throw v6

    :goto_a1
    goto :goto_a0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Landroidx/test/runner/permission/GrantPermissionCallable;->call()Landroidx/test/runner/permission/RequestPermissionCallable$Result;

    move-result-object v0

    return-object v0
.end method
