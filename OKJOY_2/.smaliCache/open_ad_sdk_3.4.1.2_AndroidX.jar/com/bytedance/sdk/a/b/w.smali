.class public final enum Lcom/bytedance/sdk/a/b/w;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/a/b/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/a/b/w;

.field public static final enum b:Lcom/bytedance/sdk/a/b/w;

.field public static final enum c:Lcom/bytedance/sdk/a/b/w;

.field public static final enum d:Lcom/bytedance/sdk/a/b/w;

.field private static final synthetic f:[Lcom/bytedance/sdk/a/b/w;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 33
    new-instance v0, Lcom/bytedance/sdk/a/b/w;

    const-string v1, "HTTP_1_0"

    const/4 v2, 0x0

    const-string v3, "http/1.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/a/b/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/a/b/w;->a:Lcom/bytedance/sdk/a/b/w;

    .line 41
    new-instance v1, Lcom/bytedance/sdk/a/b/w;

    const-string v3, "HTTP_1_1"

    const/4 v4, 0x1

    const-string v5, "http/1.1"

    invoke-direct {v1, v3, v4, v5}, Lcom/bytedance/sdk/a/b/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/bytedance/sdk/a/b/w;->b:Lcom/bytedance/sdk/a/b/w;

    .line 51
    new-instance v3, Lcom/bytedance/sdk/a/b/w;

    const-string v5, "SPDY_3"

    const/4 v6, 0x2

    const-string v7, "spdy/3.1"

    invoke-direct {v3, v5, v6, v7}, Lcom/bytedance/sdk/a/b/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/bytedance/sdk/a/b/w;->c:Lcom/bytedance/sdk/a/b/w;

    .line 62
    new-instance v5, Lcom/bytedance/sdk/a/b/w;

    const-string v7, "HTTP_2"

    const/4 v8, 0x3

    const-string v9, "h2"

    invoke-direct {v5, v7, v8, v9}, Lcom/bytedance/sdk/a/b/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/bytedance/sdk/a/b/w;->d:Lcom/bytedance/sdk/a/b/w;

    .line 29
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/bytedance/sdk/a/b/w;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/bytedance/sdk/a/b/w;->f:[Lcom/bytedance/sdk/a/b/w;

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

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/w;->e:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/w;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/bytedance/sdk/a/b/w;->a:Lcom/bytedance/sdk/a/b/w;

    iget-object v1, v0, Lcom/bytedance/sdk/a/b/w;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 78
    :cond_b
    sget-object v0, Lcom/bytedance/sdk/a/b/w;->b:Lcom/bytedance/sdk/a/b/w;

    iget-object v1, v0, Lcom/bytedance/sdk/a/b/w;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-object v0

    .line 79
    :cond_16
    sget-object v0, Lcom/bytedance/sdk/a/b/w;->d:Lcom/bytedance/sdk/a/b/w;

    iget-object v1, v0, Lcom/bytedance/sdk/a/b/w;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-object v0

    .line 80
    :cond_21
    sget-object v0, Lcom/bytedance/sdk/a/b/w;->c:Lcom/bytedance/sdk/a/b/w;

    iget-object v1, v0, Lcom/bytedance/sdk/a/b/w;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    return-object v0

    .line 81
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/w;
    .registers 2

    .line 29
    const-class v0, Lcom/bytedance/sdk/a/b/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/a/b/w;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/a/b/w;
    .registers 1

    .line 29
    sget-object v0, Lcom/bytedance/sdk/a/b/w;->f:[Lcom/bytedance/sdk/a/b/w;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/a/b/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/a/b/w;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/w;->e:Ljava/lang/String;

    return-object v0
.end method
