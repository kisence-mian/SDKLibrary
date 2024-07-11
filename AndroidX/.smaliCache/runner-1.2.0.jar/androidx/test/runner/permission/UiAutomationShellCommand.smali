.class Landroidx/test/runner/permission/UiAutomationShellCommand;
.super Landroidx/test/runner/permission/ShellCommand;
.source "UiAutomationShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UiAutomationShellCmd"


# instance fields
.field private final command:Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

.field private final permission:Ljava/lang/String;

.field private final targetPackage:Ljava/lang/String;

.field private final uiAutomation:Landroid/app/UiAutomation;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;)V
    .registers 5
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "pmCommand"    # Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetPackage",
            "permission",
            "pmCommand"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Landroidx/test/runner/permission/ShellCommand;-><init>()V

    .line 62
    invoke-static {p1}, Landroidx/test/runner/permission/UiAutomationShellCommand;->shellEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/runner/permission/UiAutomationShellCommand;->targetPackage:Ljava/lang/String;

    .line 63
    invoke-static {p2}, Landroidx/test/runner/permission/UiAutomationShellCommand;->shellEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/runner/permission/UiAutomationShellCommand;->permission:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Landroidx/test/runner/permission/UiAutomationShellCommand;->command:Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

    .line 65
    invoke-static {}, Landroidx/test/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiAutomation;

    iput-object v0, p0, Landroidx/test/runner/permission/UiAutomationShellCommand;->uiAutomation:Landroid/app/UiAutomation;

    .line 66
    return-void
.end method

.method private static awaitTermination(Landroid/os/ParcelFileDescriptor;JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .param p0, "pfDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pfDescriptor",
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 120
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 121
    .local v0, "timeoutInMillis":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 122
    .local v2, "endTimeInMillis":J
    :cond_f
    const/4 v4, 0x0

    .line 124
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_10
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v7, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v5

    .line 128
    :goto_20
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_3b

    .line 129
    const-string v5, "UiAutomationShellCmd"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v2, v7

    if-gtz v5, :cond_35

    goto :goto_20

    .line 131
    :cond_35
    new-instance v5, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v5}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .end local v0    # "timeoutInMillis":J
    .end local v2    # "endTimeInMillis":J
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local p0    # "pfDescriptor":Landroid/os/ParcelFileDescriptor;
    .end local p1    # "timeout":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v5
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_40

    .line 135
    .end local v6    # "line":Ljava/lang/String;
    .restart local v0    # "timeoutInMillis":J
    .restart local v2    # "endTimeInMillis":J
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local p0    # "pfDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "timeout":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_3b
    nop

    .line 136
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 139
    return-void

    .line 135
    :catchall_40
    move-exception v5

    if-eqz v4, :cond_46

    .line 136
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_46
    goto :goto_48

    :goto_47
    throw v5

    :goto_48
    goto :goto_47
.end method

.method private executePermissionCommand(Ljava/lang/String;)V
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Requesting permission: "

    if-eqz v1, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    const-string v1, "UiAutomationShellCmd"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_1b
    iget-object v0, p0, Landroidx/test/runner/permission/UiAutomationShellCommand;->uiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v0, p1}, Landroid/app/UiAutomation;->executeShellCommand(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v4}, Landroidx/test/runner/permission/UiAutomationShellCommand;->awaitTermination(Landroid/os/ParcelFileDescriptor;JLjava/util/concurrent/TimeUnit;)V
    :try_end_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1b .. :try_end_28} :catch_29

    .line 96
    goto :goto_44

    .line 94
    :catch_29
    move-exception v0

    .line 95
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "Timeout while executing cmd: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    :cond_3b
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_41
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_44
    return-void
.end method


# virtual methods
.method protected commandForPermission()Ljava/lang/String;
    .registers 4

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/test/runner/permission/UiAutomationShellCommand;->command:Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;

    invoke-virtual {v1}, Landroidx/test/runner/permission/UiAutomationShellCommand$PmCommand;->get()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/test/runner/permission/UiAutomationShellCommand;->targetPackage:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/runner/permission/UiAutomationShellCommand;->permission:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    return-object v0
.end method

.method public execute()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Landroidx/test/runner/permission/UiAutomationShellCommand;->commandForPermission()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/test/runner/permission/UiAutomationShellCommand;->executePermissionCommand(Ljava/lang/String;)V

    .line 71
    return-void
.end method
