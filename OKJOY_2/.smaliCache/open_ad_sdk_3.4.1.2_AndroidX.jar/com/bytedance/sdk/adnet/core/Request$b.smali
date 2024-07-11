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
        "Ljava/lang/Enum<",
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
    .registers 9

    .line 683
    new-instance v0, Lcom/bytedance/sdk/adnet/core/Request$b;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/adnet/core/Request$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->a:Lcom/bytedance/sdk/adnet/core/Request$b;

    .line 684
    new-instance v1, Lcom/bytedance/sdk/adnet/core/Request$b;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/adnet/core/Request$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/adnet/core/Request$b;->b:Lcom/bytedance/sdk/adnet/core/Request$b;

    .line 685
    new-instance v3, Lcom/bytedance/sdk/adnet/core/Request$b;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/sdk/adnet/core/Request$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/sdk/adnet/core/Request$b;->c:Lcom/bytedance/sdk/adnet/core/Request$b;

    .line 686
    new-instance v5, Lcom/bytedance/sdk/adnet/core/Request$b;

    const-string v7, "IMMEDIATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/bytedance/sdk/adnet/core/Request$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/bytedance/sdk/adnet/core/Request$b;->d:Lcom/bytedance/sdk/adnet/core/Request$b;

    .line 682
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/bytedance/sdk/adnet/core/Request$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/bytedance/sdk/adnet/core/Request$b;->e:[Lcom/bytedance/sdk/adnet/core/Request$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 682
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request$b;
    .registers 2

    .line 682
    const-class v0, Lcom/bytedance/sdk/adnet/core/Request$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/adnet/core/Request$b;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/adnet/core/Request$b;
    .registers 1

    .line 682
    sget-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->e:[Lcom/bytedance/sdk/adnet/core/Request$b;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/adnet/core/Request$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/adnet/core/Request$b;

    return-object v0
.end method
