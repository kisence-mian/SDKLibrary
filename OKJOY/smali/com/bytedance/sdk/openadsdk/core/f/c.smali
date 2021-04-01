.class final enum Lcom/bytedance/sdk/openadsdk/core/f/c;
.super Ljava/lang/Enum;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/c;

    const-string v1, "GRANTED"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/c;->a:Lcom/bytedance/sdk/openadsdk/core/f/c;

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/c;

    const-string v1, "DENIED"

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/c;->b:Lcom/bytedance/sdk/openadsdk/core/f/c;

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/f/c;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/c;->c:Lcom/bytedance/sdk/openadsdk/core/f/c;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bytedance/sdk/openadsdk/core/f/c;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/f/c;->a:Lcom/bytedance/sdk/openadsdk/core/f/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/f/c;->b:Lcom/bytedance/sdk/openadsdk/core/f/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/f/c;->c:Lcom/bytedance/sdk/openadsdk/core/f/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f/c;->d:[Lcom/bytedance/sdk/openadsdk/core/f/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/f/c;
    .registers 2

    .prologue
    .line 3
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/f/c;

    return-object v0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/core/f/c;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f/c;->d:[Lcom/bytedance/sdk/openadsdk/core/f/c;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/core/f/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/core/f/c;

    return-object v0
.end method
