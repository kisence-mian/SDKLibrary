.class public final Lcom/kwad/sdk/crash/utils/AbiUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;
    }
.end annotation


# static fields
.field private static a:Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;


# direct methods
.method public static a()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/crash/utils/AbiUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "arm64-v8a"

    goto :goto_b

    :cond_9
    const-string v0, "armeabi-v7a"

    :goto_b
    return-object v0
.end method

.method public static b()Z
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/crash/utils/AbiUtil;->c()Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;

    move-result-object v0

    sget-object v1, Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;->ARM64_V8A:Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static c()Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_9

    sget-object v0, Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;->ARMEABI_V7A:Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;

    return-object v0

    :cond_9
    sget-object v0, Lcom/kwad/sdk/crash/utils/AbiUtil;->a:Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;

    if-eqz v0, :cond_e

    return-object v0

    :cond_e
    const/4 v0, 0x0

    :try_start_f
    const-string v1, "dalvik.system.VMRuntime"

    const-string v2, "getRuntime"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kwad/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "is64Bit"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kwad/sdk/utils/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;->ARM64_V8A:Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;

    goto :goto_2e

    :cond_2c
    sget-object v1, Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;->ARMEABI_V7A:Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;

    :goto_2e
    sput-object v1, Lcom/kwad/sdk/crash/utils/AbiUtil;->a:Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_31

    return-object v1

    :catchall_31
    move-exception v1

    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :try_start_35
    const-string v1, "sun.misc.Unsafe"

    const-string v2, "getUnsafe"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/kwad/sdk/utils/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "addressSize"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/kwad/sdk/utils/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_54

    sget-object v0, Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;->ARM64_V8A:Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;

    goto :goto_56

    :cond_54
    sget-object v0, Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;->ARMEABI_V7A:Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;

    :goto_56
    sput-object v0, Lcom/kwad/sdk/crash/utils/AbiUtil;->a:Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;
    :try_end_58
    .catchall {:try_start_35 .. :try_end_58} :catchall_59

    return-object v0

    :catchall_59
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :try_start_5d
    invoke-static {}, Lcom/kwad/sdk/crash/d;->a()Lcom/kwad/sdk/crash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/d;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v1, "arm64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    sget-object v0, Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;->ARM64_V8A:Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;

    sput-object v0, Lcom/kwad/sdk/crash/utils/AbiUtil;->a:Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_78

    return-object v0

    :catchall_78
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_7c
    sget-object v0, Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;->UNKNOWN:Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;

    sput-object v0, Lcom/kwad/sdk/crash/utils/AbiUtil;->a:Lcom/kwad/sdk/crash/utils/AbiUtil$Abi;

    return-object v0
.end method
