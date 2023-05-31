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
        "Ljava/lang/Enum",
        "<",
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
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    const-string v1, "hideCloseBtn"

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    .line 100
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    const-string v1, "alwayShowBackBtn"

    invoke-direct {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    .line 101
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    const-string v1, "alwayShowMediaView"

    invoke-direct {v0, v1, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    .line 102
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    const-string v1, "fixedSize"

    invoke-direct {v0, v1, v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    .line 103
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    const-string v1, "hideBackBtn"

    invoke-direct {v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->e:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    .line 104
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    const-string v1, "hideTopMoreBtn"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->f:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    .line 98
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->e:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->f:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->g:[Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;
    .registers 2

    .prologue
    .line 98
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    return-object v0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;
    .registers 1

    .prologue
    .line 98
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->g:[Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    return-object v0
.end method
