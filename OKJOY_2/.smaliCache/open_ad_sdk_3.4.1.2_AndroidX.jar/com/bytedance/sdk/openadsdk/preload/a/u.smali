.class public abstract enum Lcom/bytedance/sdk/openadsdk/preload/a/u;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/preload/a/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/openadsdk/preload/a/u;

.field public static final enum b:Lcom/bytedance/sdk/openadsdk/preload/a/u;

.field private static final synthetic c:[Lcom/bytedance/sdk/openadsdk/preload/a/u;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 34
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/u$1;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/u$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/u;->a:Lcom/bytedance/sdk/openadsdk/preload/a/u;

    .line 45
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/a/u$2;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/preload/a/u$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/u;->b:Lcom/bytedance/sdk/openadsdk/preload/a/u;

    .line 27
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/sdk/openadsdk/preload/a/u;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/u;->c:[Lcom/bytedance/sdk/openadsdk/preload/a/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/preload/a/u$1;)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/u;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/a/u;
    .registers 2

    .line 27
    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/a/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/preload/a/u;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/preload/a/u;
    .registers 1

    .line 27
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/u;->c:[Lcom/bytedance/sdk/openadsdk/preload/a/u;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/preload/a/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/preload/a/u;

    return-object v0
.end method
