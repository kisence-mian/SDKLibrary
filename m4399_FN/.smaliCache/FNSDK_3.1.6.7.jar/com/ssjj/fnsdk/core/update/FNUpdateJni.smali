.class public Lcom/ssjj/fnsdk/core/update/FNUpdateJni;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "fnupdate"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native init()Z
.end method

.method public static native patchApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method
