.class public final enum Lcom/sigmob/sdk/base/views/b$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/views/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/views/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/views/b$b;

.field public static final enum b:Lcom/sigmob/sdk/base/views/b$b;

.field public static final enum c:Lcom/sigmob/sdk/base/views/b$b;

.field public static final enum d:Lcom/sigmob/sdk/base/views/b$b;

.field public static final enum e:Lcom/sigmob/sdk/base/views/b$b;

.field private static final synthetic f:[Lcom/sigmob/sdk/base/views/b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/sigmob/sdk/base/views/b$b;

    const-string v1, "STATIC_RESOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/views/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/views/b$b;->a:Lcom/sigmob/sdk/base/views/b$b;

    new-instance v1, Lcom/sigmob/sdk/base/views/b$b;

    const-string v3, "HTML_RESOURCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sigmob/sdk/base/views/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/sdk/base/views/b$b;->b:Lcom/sigmob/sdk/base/views/b$b;

    new-instance v3, Lcom/sigmob/sdk/base/views/b$b;

    const-string v5, "IFRAME_RESOURCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sigmob/sdk/base/views/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sigmob/sdk/base/views/b$b;->c:Lcom/sigmob/sdk/base/views/b$b;

    new-instance v5, Lcom/sigmob/sdk/base/views/b$b;

    const-string v7, "NATIVE_RESOURCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sigmob/sdk/base/views/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sigmob/sdk/base/views/b$b;->d:Lcom/sigmob/sdk/base/views/b$b;

    new-instance v7, Lcom/sigmob/sdk/base/views/b$b;

    const-string v9, "URL_RESOURCE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sigmob/sdk/base/views/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sigmob/sdk/base/views/b$b;->e:Lcom/sigmob/sdk/base/views/b$b;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sigmob/sdk/base/views/b$b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/sigmob/sdk/base/views/b$b;->f:[Lcom/sigmob/sdk/base/views/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/views/b$b;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/views/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/views/b$b;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/views/b$b;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/views/b$b;->f:[Lcom/sigmob/sdk/base/views/b$b;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/views/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/views/b$b;

    return-object v0
.end method
