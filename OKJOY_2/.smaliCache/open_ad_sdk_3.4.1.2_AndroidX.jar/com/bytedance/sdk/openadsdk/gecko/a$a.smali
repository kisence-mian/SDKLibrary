.class Lcom/bytedance/sdk/openadsdk/gecko/a$a;
.super Ljava/lang/Object;
.source "GeckoHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/gecko/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/gecko/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 64
    new-instance v0, Lcom/bytedance/sdk/openadsdk/gecko/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/gecko/a;-><init>(Lcom/bytedance/sdk/openadsdk/gecko/a$1;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/gecko/a$a;->a:Lcom/bytedance/sdk/openadsdk/gecko/a;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/openadsdk/gecko/a;
    .registers 1

    .line 63
    sget-object v0, Lcom/bytedance/sdk/openadsdk/gecko/a$a;->a:Lcom/bytedance/sdk/openadsdk/gecko/a;

    return-object v0
.end method
