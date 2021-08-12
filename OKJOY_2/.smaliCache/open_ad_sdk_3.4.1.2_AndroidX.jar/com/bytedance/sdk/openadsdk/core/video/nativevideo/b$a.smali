.class public final enum Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;
.super Ljava/lang/Enum;
.source "IMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

.field public static final enum b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

.field public static final enum c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

.field public static final enum d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

.field public static final enum e:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

.field public static final enum f:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

.field private static final synthetic g:[Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 99
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    const-string v1, "hideCloseBtn"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    .line 100
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    const-string v3, "alwayShowBackBtn"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    .line 101
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    const-string v5, "alwayShowMediaView"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    .line 102
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    const-string v7, "fixedSize"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    .line 103
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    const-string v9, "hideBackBtn"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->e:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    .line 104
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    const-string v11, "hideTopMoreBtn"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->f:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    .line 98
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->g:[Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;
    .registers 2

    .line 98
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;
    .registers 1

    .line 98
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->g:[Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    return-object v0
.end method
