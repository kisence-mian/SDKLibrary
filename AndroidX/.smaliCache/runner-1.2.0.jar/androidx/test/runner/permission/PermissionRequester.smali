.class public Landroidx/test/runner/permission/PermissionRequester;
.super Ljava/lang/Object;
.source "PermissionRequester.java"

# interfaces
.implements Landroidx/test/internal/platform/content/PermissionGranter;


# static fields
.field private static final TAG:Ljava/lang/String; = "PermissionRequester"


# instance fields
.field private androidRuntimeVersion:I

.field final requestedPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/test/runner/permission/RequestPermissionCallable;",
            ">;"
        }
    .end annotation
.end field

.field private final targetContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/test/runner/permission/PermissionRequester;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "targetContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetContext"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Landroidx/test/runner/permission/PermissionRequester;->androidRuntimeVersion:I

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/permission/PermissionRequester;->requestedPermissions:Ljava/util/HashSet;

    .line 72
    const-string v0, "targetContext cannot be null!"

    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroidx/test/runner/permission/PermissionRequester;->targetContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method private deviceSupportsRuntimePermissions()Z
    .registers 4

    .line 129
    invoke-direct {p0}, Landroidx/test/runner/permission/PermissionRequester;->getAndroidRuntimeVersion()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 130
    .local v0, "supportsRuntimePermissions":Z
    :goto_b
    if-nez v0, :cond_14

    .line 132
    const-string v1, "PermissionRequester"

    const-string v2, "Permissions can only be granted on devices running Android M (API 23) orhigher. This rule is ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_14
    return v0
.end method

.method private getAndroidRuntimeVersion()I
    .registers 2

    .line 141
    iget v0, p0, Landroidx/test/runner/permission/PermissionRequester;->androidRuntimeVersion:I

    return v0
.end method


# virtual methods
.method public varargs addPermissions([Ljava/lang/String;)V
    .registers 9
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissions"
        }
    .end annotation

    .line 85
    const-string v0, "permissions cannot be null!"

    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-direct {p0}, Landroidx/test/runner/permission/PermissionRequester;->deviceSupportsRuntimePermissions()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 87
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_3a

    aget-object v2, p1, v1

    .line 88
    .local v2, "permission":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "Permission String is empty or null!"

    invoke-static {v4, v3}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    .line 89
    new-instance v3, Landroidx/test/runner/permission/GrantPermissionCallable;

    new-instance v4, Landroidx/test/runner/permission/UiAutomationShellCommand;

    iget-object v5, p0, Landroidx/test/runner/permission/PermissionRequester;->targetContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;->GRANT_PERMISSION:Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

    invoke-direct {v4, v5, v2, v6}, Landroidx/test/runner/permission/UiAutomationShellCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;)V

    iget-object v5, p0, Landroidx/test/runner/permission/PermissionRequester;->targetContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5, v2}, Landroidx/test/runner/permission/GrantPermissionCallable;-><init>(Landroidx/test/runner/permission/ShellCommand;Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    .local v3, "requestPermissionCallable":Landroidx/test/runner/permission/GrantPermissionCallable;
    iget-object v4, p0, Landroidx/test/runner/permission/PermissionRequester;->requestedPermissions:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Landroidx/test/internal/util/Checks;->checkState(Z)V

    .line 87
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "requestPermissionCallable":Landroidx/test/runner/permission/GrantPermissionCallable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 98
    :cond_3a
    return-void
.end method

.method public requestPermissions()V
    .registers 6

    .line 107
    const-string v0, "Failed to grant permissions, see logcat for details"

    invoke-direct {p0}, Landroidx/test/runner/permission/PermissionRequester;->deviceSupportsRuntimePermissions()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 108
    iget-object v1, p0, Landroidx/test/runner/permission/PermissionRequester;->requestedPermissions:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/runner/permission/RequestPermissionCallable;

    .line 110
    .local v2, "requestPermissionCallable":Landroidx/test/runner/permission/RequestPermissionCallable;
    :try_start_1a
    sget-object v3, Landroidx/test/runner/permission/RequestPermissionCallable$Result;->FAILURE:Landroidx/test/runner/permission/RequestPermissionCallable$Result;

    invoke-virtual {v2}, Landroidx/test/runner/permission/RequestPermissionCallable;->call()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_26

    .line 111
    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_28

    .line 112
    return-void

    .line 118
    :cond_26
    nop

    .line 119
    .end local v2    # "requestPermissionCallable":Landroidx/test/runner/permission/RequestPermissionCallable;
    goto :goto_e

    .line 114
    .restart local v2    # "requestPermissionCallable":Landroidx/test/runner/permission/RequestPermissionCallable;
    :catch_28
    move-exception v1

    .line 115
    .local v1, "exception":Ljava/lang/Exception;
    const-string v3, "PermissionRequester"

    const-string v4, "An Exception was thrown while granting permission"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 117
    return-void

    .line 121
    .end local v1    # "exception":Ljava/lang/Exception;
    .end local v2    # "requestPermissionCallable":Landroidx/test/runner/permission/RequestPermissionCallable;
    :cond_34
    return-void
.end method

.method protected setAndroidRuntimeVersion(I)V
    .registers 2
    .param p1, "sdkInt"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkInt"
        }
    .end annotation

    .line 125
    iput p1, p0, Landroidx/test/runner/permission/PermissionRequester;->androidRuntimeVersion:I

    .line 126
    return-void
.end method
