.class final enum Lcom/bytedance/sdk/openadsdk/core/f/c;
.super Ljava/lang/Enum;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/core/f/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/openadsdk/core/f/c;

.field public static final enum b:Lcom/bytedance/sdk/openadsdk/core/f/c;

.field public static final enum c:Lcom/bytedance/sdk/openadsdk/core/f/c;

.field private static final synthetic d:[Lcom/bytedance/sdk/openadsdk/core/f/c;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/c;

    const-string v1, "GRANTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/c;->a:Lcom/bytedance/sdk/openadsdk/core/f/c;

    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f/c;

    const-string v3, "DENIED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/f/c;->b:Lcom/bytedance/sdk/openadsdk/core/f/c;

    .line 6
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/f/c;

    const-string v5, "NOT_FOUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/core/f/c;->c:Lcom/bytedance/sdk/openadsdk/core/f/c;

    .line 3
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bytedance/sdk/openadsdk/core/f/c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/bytedance/sdk/openadsdk/core/f/c;->d:[Lcom/bytedance/sdk/openadsdk/core/f/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/f/c;
    .registers 2

    .line 3
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/f/c;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/core/f/c;
    .registers 1

    .line 3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/c;->d:[Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/core/f/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/core/f/c;

    return-object v0
.end method
