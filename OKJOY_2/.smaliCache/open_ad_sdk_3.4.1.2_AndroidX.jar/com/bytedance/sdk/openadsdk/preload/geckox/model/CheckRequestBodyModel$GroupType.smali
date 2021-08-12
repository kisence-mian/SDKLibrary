.class public final enum Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;
.super Ljava/lang/Enum;
.source "CheckRequestBodyModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;

.field public static final enum HIGHPRIORITY:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;

.field public static final enum NORMAL:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 131
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const-string v3, "normal"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;->NORMAL:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;

    .line 132
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;

    const-string v3, "HIGHPRIORITY"

    const/4 v4, 0x1

    const-string v5, "high_priority"

    invoke-direct {v1, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;->HIGHPRIORITY:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;

    .line 129
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;->$VALUES:[Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 137
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;->value:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;
    .registers 2

    .line 129
    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;
    .registers 1

    .line 129
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;->$VALUES:[Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;->value:Ljava/lang/String;

    return-object v0
.end method
