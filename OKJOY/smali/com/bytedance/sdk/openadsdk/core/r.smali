.class public final Lcom/bytedance/sdk/openadsdk/core/r;
.super Ljava/lang/Object;
.source "Sdk.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/r;->a:Ljava/lang/String;

    return-void
.end method
