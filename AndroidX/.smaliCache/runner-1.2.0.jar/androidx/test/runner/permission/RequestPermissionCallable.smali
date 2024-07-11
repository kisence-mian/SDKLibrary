.class public abstract Landroidx/test/runner/permission/RequestPermissionCallable;
.super Ljava/lang/Object;
.source "RequestPermissionCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/runner/permission/RequestPermissionCallable$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/test/runner/permission/RequestPermissionCallable$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final permission:Ljava/lang/String;

.field private final shellCommand:Landroidx/test/runner/permission/ShellCommand;

.field private final targetContext:Landroid/content/Context;

.field private final targetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/test/runner/permission/ShellCommand;Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "shellCommand"    # Landroidx/test/runner/permission/ShellCommand;
    .param p2, "targetContext"    # Landroid/content/Context;
    .param p3, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shellCommand",
            "targetContext",
            "permission"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "shellCommand cannot be null!"

    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/runner/permission/ShellCommand;

    iput-object v0, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->shellCommand:Landroidx/test/runner/permission/ShellCommand;

    .line 53
    const-string v0, "targetContext cannot be null!"

    invoke-static {p2, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->targetContext:Landroid/content/Context;

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "targetPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "targetPackage cannot be empty or null!"

    invoke-static {v1, v2}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 56
    iput-object v0, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->targetPackage:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->permission:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 75
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 76
    return v0

    .line 78
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 81
    :cond_12
    move-object v2, p1

    check-cast v2, Landroidx/test/runner/permission/RequestPermissionCallable;

    .line 82
    .local v2, "that":Landroidx/test/runner/permission/RequestPermissionCallable;
    iget-object v3, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->targetPackage:Ljava/lang/String;

    iget-object v4, v2, Landroidx/test/runner/permission/RequestPermissionCallable;->targetPackage:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->permission:Ljava/lang/String;

    iget-object v4, v2, Landroidx/test/runner/permission/RequestPermissionCallable;->permission:Ljava/lang/String;

    .line 83
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 82
    :goto_2b
    return v0

    .line 79
    .end local v2    # "that":Landroidx/test/runner/permission/RequestPermissionCallable;
    :cond_2c
    :goto_2c
    return v1
.end method

.method protected getPermission()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->permission:Ljava/lang/String;

    return-object v0
.end method

.method protected getShellCommand()Landroidx/test/runner/permission/ShellCommand;
    .registers 2

    .line 70
    iget-object v0, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->shellCommand:Landroidx/test/runner/permission/ShellCommand;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->targetPackage:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->permission:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected isPermissionGranted()Z
    .registers 3

    .line 65
    iget-object v0, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->targetContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/test/runner/permission/RequestPermissionCallable;->permission:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 65
    :goto_d
    return v0
.end method
