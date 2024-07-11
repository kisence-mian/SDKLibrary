.class Lcom/bytedance/sdk/openadsdk/i/f/a$b;
.super Ljava/lang/Object;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/i/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/bytedance/sdk/openadsdk/i/f/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/f/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/f/a;-><init>(Lcom/bytedance/sdk/openadsdk/i/f/a$1;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/f/a$b;->a:Lcom/bytedance/sdk/openadsdk/i/f/a;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/openadsdk/i/f/a;
    .registers 1

    .line 53
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/f/a$b;->a:Lcom/bytedance/sdk/openadsdk/i/f/a;

    return-object v0
.end method
