.class public final enum Lcom/bytedance/sdk/adnet/core/Request$b;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/core/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bytedance/sdk/adnet/core/Request$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/adnet/core/Request$b;

.field public static final enum b:Lcom/bytedance/sdk/adnet/core/Request$b;

.field public static final enum c:Lcom/bytedance/sdk/adnet/core/Request$b;

.field public static final enum d:Lcom/bytedance/sdk/adnet/core/Request$b;

.field private static final synthetic e:[Lcom/bytedance/sdk/adnet/core/Request$b;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 683
    new-instance v0, Lcom/bytedance/sdk/adnet/core/Request$b;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/adnet/core/Request$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->a:Lcom/bytedance/sdk/adnet/core/Request$b;

    .line 684
    new-instance v0, Lcom/bytedance/sdk/adnet/core/Request$b;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/adnet/core/Request$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->b:Lcom/bytedance/sdk/adnet/core/Request$b;

    .line 685
    new-instance v0, Lcom/bytedance/sdk/adnet/core/Request$b;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/bytedance/sdk/adnet/core/Request$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->c:Lcom/bytedance/sdk/adnet/core/Request$b;

    .line 686
    new-instance v0, Lcom/bytedance/sdk/adnet/core/Request$b;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/bytedance/sdk/adnet/core/Request$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->d:Lcom/bytedance/sdk/adnet/core/Request$b;

    .line 682
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bytedance/sdk/adnet/core/Request$b;

    sget-object v1, Lcom/bytedance/sdk/adnet/core/Request$b;->a:Lcom/bytedance/sdk/adnet/core/Request$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/sdk/adnet/core/Request$b;->b:Lcom/bytedance/sdk/adnet/core/Request$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/sdk/adnet/core/Request$b;->c:Lcom/bytedance/sdk/adnet/core/Request$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/sdk/adnet/core/Request$b;->d:Lcom/bytedance/sdk/adnet/core/Request$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->e:[Lcom/bytedance/sdk/adnet/core/Request$b;

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
    .line 682
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request$b;
    .registers 2

    .prologue
    .line 682
    const-class v0, Lcom/bytedance/sdk/adnet/core/Request$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Request$b;

    return-object v0
.end method

.method public static values()[Lcom/bytedance/sdk/adnet/core/Request$b;
    .registers 1

    .prologue
    .line 682
    sget-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->e:[Lcom/bytedance/sdk/adnet/core/Request$b;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/adnet/core/Request$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/adnet/core/Request$b;

    return-object v0
.end method
