.class public final enum Lcom/bytedance/sdk/openadsdk/e/a/w;
.super Ljava/lang/Enum;
.source "PermissionGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/openadsdk/e/a/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/openadsdk/e/a/w;

.field public static final enum b:Lcom/bytedance/sdk/openadsdk/e/a/w;

.field public static final enum c:Lcom/bytedance/sdk/openadsdk/e/a/w;

.field private static final synthetic d:[Lcom/bytedance/sdk/openadsdk/e/a/w;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 11
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/a/w;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/e/a/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/e/a/w;->a:Lcom/bytedance/sdk/openadsdk/e/a/w;

    .line 12
    new-instance v1, Lcom/bytedance/sdk/openadsdk/e/a/w;

    const-string v3, "PROTECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/e/a/w;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/e/a/w;->b:Lcom/bytedance/sdk/openadsdk/e/a/w;

    .line 13
    new-instance v3, Lcom/bytedance/sdk/openadsdk/e/a/w;

    const-string v5, "PRIVATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/sdk/openadsdk/e/a/w;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/sdk/openadsdk/e/a/w;->c:Lcom/bytedance/sdk/openadsdk/e/a/w;

    .line 10
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bytedance/sdk/openadsdk/e/a/w;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/bytedance/sdk/openadsdk/e/a/w;->d:[Lcom/bytedance/sdk/openadsdk/e/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/w;
    .registers 2

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/e/a/w;->a:Lcom/bytedance/sdk/openadsdk/e/a/w;

    return-object p0

    .line 19
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 20
    const-string v0, "protected"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 21
    sget-object p0, Lcom/bytedance/sdk/openadsdk/e/a/w;->b:Lcom/bytedance/sdk/openadsdk/e/a/w;

    return-object p0

    .line 22
    :cond_18
    const-string v0, "private"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 23
    sget-object p0, Lcom/bytedance/sdk/openadsdk/e/a/w;->c:Lcom/bytedance/sdk/openadsdk/e/a/w;

    return-object p0

    .line 25
    :cond_23
    sget-object p0, Lcom/bytedance/sdk/openadsdk/e/a/w;->a:Lcom/bytedance/sdk/openadsdk/e/a/w;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/w;
    .registers 2

    .line 10
    const-class v0, Lcom/bytedance/sdk/openadsdk/e/a/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/e/a/w;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/e/a/w;
    .registers 1

    .line 10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/e/a/w;->d:[Lcom/bytedance/sdk/openadsdk/e/a/w;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/e/a/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/e/a/w;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 43
    sget-object v0, Lcom/bytedance/sdk/openadsdk/e/a/w;->c:Lcom/bytedance/sdk/openadsdk/e/a/w;

    if-ne p0, v0, :cond_7

    .line 44
    const-string v0, "private"

    return-object v0

    .line 45
    :cond_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/e/a/w;->b:Lcom/bytedance/sdk/openadsdk/e/a/w;

    if-ne p0, v0, :cond_e

    .line 46
    const-string v0, "protected"

    return-object v0

    .line 48
    :cond_e
    const-string v0, "public"

    return-object v0
.end method
