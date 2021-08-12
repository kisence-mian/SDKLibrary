.class public final enum Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;
.super Ljava/lang/Enum;
.source "UrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

.field public static final enum b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

.field public static final enum c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

.field public static final enum d:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

.field private static final synthetic f:[Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    const-string v1, "HTML"

    const/4 v2, 0x0

    const-string v3, "text/html"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    const-string v3, "CSS"

    const/4 v4, 0x1

    const-string v5, "text/css"

    invoke-direct {v1, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->b:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    const-string v5, "JS"

    const/4 v6, 0x2

    const-string v7, "application/x-javascript"

    invoke-direct {v3, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    const-string v7, "IMAGE"

    const/4 v8, 0x3

    const-string v9, "image/*"

    invoke-direct {v5, v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->d:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    .line 46
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->f:[Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

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

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->e:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;
    .registers 2

    .line 46
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;
    .registers 1

    .line 46
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->f:[Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->e:Ljava/lang/String;

    return-object v0
.end method
