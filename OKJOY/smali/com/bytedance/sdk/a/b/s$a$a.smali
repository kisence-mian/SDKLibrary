.class final enum Lcom/bytedance/sdk/a/b/s$a$a;
.super Ljava/lang/Enum;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/s$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bytedance/sdk/a/b/s$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/a/b/s$a$a;

.field public static final enum b:Lcom/bytedance/sdk/a/b/s$a$a;

.field public static final enum c:Lcom/bytedance/sdk/a/b/s$a$a;

.field public static final enum d:Lcom/bytedance/sdk/a/b/s$a$a;

.field public static final enum e:Lcom/bytedance/sdk/a/b/s$a$a;

.field private static final synthetic f:[Lcom/bytedance/sdk/a/b/s$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1335
    new-instance v0, Lcom/bytedance/sdk/a/b/s$a$a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/a/b/s$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/a/b/s$a$a;->a:Lcom/bytedance/sdk/a/b/s$a$a;

    .line 1336
    new-instance v0, Lcom/bytedance/sdk/a/b/s$a$a;

    const-string v1, "MISSING_SCHEME"

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/a/b/s$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/a/b/s$a$a;->b:Lcom/bytedance/sdk/a/b/s$a$a;

    .line 1337
    new-instance v0, Lcom/bytedance/sdk/a/b/s$a$a;

    const-string v1, "UNSUPPORTED_SCHEME"

    invoke-direct {v0, v1, v4}, Lcom/bytedance/sdk/a/b/s$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/a/b/s$a$a;->c:Lcom/bytedance/sdk/a/b/s$a$a;

    .line 1338
    new-instance v0, Lcom/bytedance/sdk/a/b/s$a$a;

    const-string v1, "INVALID_PORT"

    invoke-direct {v0, v1, v5}, Lcom/bytedance/sdk/a/b/s$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/a/b/s$a$a;->d:Lcom/bytedance/sdk/a/b/s$a$a;

    .line 1339
    new-instance v0, Lcom/bytedance/sdk/a/b/s$a$a;

    const-string v1, "INVALID_HOST"

    invoke-direct {v0, v1, v6}, Lcom/bytedance/sdk/a/b/s$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/a/b/s$a$a;->e:Lcom/bytedance/sdk/a/b/s$a$a;

    .line 1334
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bytedance/sdk/a/b/s$a$a;

    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->a:Lcom/bytedance/sdk/a/b/s$a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->b:Lcom/bytedance/sdk/a/b/s$a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->c:Lcom/bytedance/sdk/a/b/s$a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->d:Lcom/bytedance/sdk/a/b/s$a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/sdk/a/b/s$a$a;->e:Lcom/bytedance/sdk/a/b/s$a$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/bytedance/sdk/a/b/s$a$a;->f:[Lcom/bytedance/sdk/a/b/s$a$a;

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
    .line 1334
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/s$a$a;
    .registers 2

    .prologue
    .line 1334
    const-class v0, Lcom/bytedance/sdk/a/b/s$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/a/b/s$a$a;

    return-object v0
.end method

.method public static values()[Lcom/bytedance/sdk/a/b/s$a$a;
    .registers 1

    .prologue
    .line 1334
    sget-object v0, Lcom/bytedance/sdk/a/b/s$a$a;->f:[Lcom/bytedance/sdk/a/b/s$a$a;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/a/b/s$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/a/b/s$a$a;

    return-object v0
.end method
