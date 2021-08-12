.class final Lcom/bytedance/sdk/openadsdk/i/e/c$a;
.super Ljava/lang/Object;
.source "NetworkSourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/i/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/bytedance/sdk/openadsdk/i/e/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/e/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/i/e/c;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/e/c$a;->a:Lcom/bytedance/sdk/openadsdk/i/e/c;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/openadsdk/i/e/c;
    .registers 1

    .line 8
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/e/c$a;->a:Lcom/bytedance/sdk/openadsdk/i/e/c;

    return-object v0
.end method
