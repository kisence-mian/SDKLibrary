.class public final enum Lcom/tds/tapdb/b/e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/tapdb/b/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/tds/tapdb/b/e;

.field public static final enum d:Lcom/tds/tapdb/b/e;

.field public static final enum e:Lcom/tds/tapdb/b/e;

.field public static final enum f:Lcom/tds/tapdb/b/e;

.field public static final enum g:Lcom/tds/tapdb/b/e;

.field public static final enum h:Lcom/tds/tapdb/b/e;

.field public static final enum i:Lcom/tds/tapdb/b/e;

.field private static final synthetic j:[Lcom/tds/tapdb/b/e;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/tds/tapdb/b/e;

    const-string v1, "TRACK"

    const/4 v2, 0x0

    const-string v3, "track"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tds/tapdb/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/tds/tapdb/b/e;->c:Lcom/tds/tapdb/b/e;

    new-instance v1, Lcom/tds/tapdb/b/e;

    const-string v3, "DEVICE_INITIALIZE"

    const-string v5, "initialise"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/tds/tapdb/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/tds/tapdb/b/e;->d:Lcom/tds/tapdb/b/e;

    new-instance v3, Lcom/tds/tapdb/b/e;

    const-string v6, "DEVICE_UPDATE"

    const/4 v7, 0x2

    const-string v8, "update"

    invoke-direct {v3, v6, v7, v8, v2}, Lcom/tds/tapdb/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lcom/tds/tapdb/b/e;->e:Lcom/tds/tapdb/b/e;

    new-instance v6, Lcom/tds/tapdb/b/e;

    const-string v9, "DEVICE_ADD"

    const/4 v10, 0x3

    const-string v11, "add"

    invoke-direct {v6, v9, v10, v11, v2}, Lcom/tds/tapdb/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lcom/tds/tapdb/b/e;->f:Lcom/tds/tapdb/b/e;

    new-instance v9, Lcom/tds/tapdb/b/e;

    const-string v12, "USER_INITIALIZE"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v5, v2}, Lcom/tds/tapdb/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v9, Lcom/tds/tapdb/b/e;->g:Lcom/tds/tapdb/b/e;

    new-instance v5, Lcom/tds/tapdb/b/e;

    const-string v12, "USER_UPDATE"

    const/4 v14, 0x5

    invoke-direct {v5, v12, v14, v8, v2}, Lcom/tds/tapdb/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v5, Lcom/tds/tapdb/b/e;->h:Lcom/tds/tapdb/b/e;

    new-instance v8, Lcom/tds/tapdb/b/e;

    const-string v12, "USER_ADD"

    const/4 v15, 0x6

    invoke-direct {v8, v12, v15, v11, v2}, Lcom/tds/tapdb/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v8, Lcom/tds/tapdb/b/e;->i:Lcom/tds/tapdb/b/e;

    const/4 v11, 0x7

    new-array v11, v11, [Lcom/tds/tapdb/b/e;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v7

    aput-object v6, v11, v10

    aput-object v9, v11, v13

    aput-object v5, v11, v14

    aput-object v8, v11, v15

    sput-object v11, Lcom/tds/tapdb/b/e;->j:[Lcom/tds/tapdb/b/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tds/tapdb/b/e;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/tds/tapdb/b/e;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/tapdb/b/e;
    .registers 2

    const-class v0, Lcom/tds/tapdb/b/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tds/tapdb/b/e;

    return-object p0
.end method

.method public static values()[Lcom/tds/tapdb/b/e;
    .registers 1

    sget-object v0, Lcom/tds/tapdb/b/e;->j:[Lcom/tds/tapdb/b/e;

    invoke-virtual {v0}, [Lcom/tds/tapdb/b/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/tapdb/b/e;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tds/tapdb/b/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tds/tapdb/b/e;->b:Z

    return v0
.end method
