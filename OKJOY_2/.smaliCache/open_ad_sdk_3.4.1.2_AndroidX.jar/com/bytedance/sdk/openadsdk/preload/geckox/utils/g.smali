.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/g;
.super Ljava/lang/Object;
.source "LibLoader.java"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public static a(Landroid/content/Context;)V
    .registers 1

    .line 9
    if-eqz p0, :cond_4

    .line 10
    sput-object p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/g;->a:Landroid/content/Context;

    .line 12
    :cond_4
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    .line 15
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    return-void
.end method
