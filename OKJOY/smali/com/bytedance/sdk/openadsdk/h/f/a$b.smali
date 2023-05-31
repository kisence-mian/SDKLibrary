.class Lcom/bytedance/sdk/openadsdk/h/f/a$b;
.super Ljava/lang/Object;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/bytedance/sdk/openadsdk/h/f/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/f/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/f/a;-><init>(Lcom/bytedance/sdk/openadsdk/h/f/a$1;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/f/a$b;->a:Lcom/bytedance/sdk/openadsdk/h/f/a;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/openadsdk/h/f/a;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/f/a$b;->a:Lcom/bytedance/sdk/openadsdk/h/f/a;

    return-object v0
.end method
