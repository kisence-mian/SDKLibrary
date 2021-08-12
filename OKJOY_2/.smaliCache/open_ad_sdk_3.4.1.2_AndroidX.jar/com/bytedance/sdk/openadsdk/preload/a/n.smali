.class public final Lcom/bytedance/sdk/openadsdk/preload/a/n;
.super Lcom/bytedance/sdk/openadsdk/preload/a/l;
.source "JsonNull.java"


# static fields
.field public static final a:Lcom/bytedance/sdk/openadsdk/preload/a/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/n;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/n;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/n;->a:Lcom/bytedance/sdk/openadsdk/preload/a/n;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 65
    if-eq p0, p1, :cond_9

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/n;

    if-eqz p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p1, 0x1

    :goto_a
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 57
    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/a/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
