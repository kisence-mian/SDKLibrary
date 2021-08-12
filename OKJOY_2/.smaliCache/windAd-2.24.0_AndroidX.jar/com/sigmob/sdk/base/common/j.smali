.class public final enum Lcom/sigmob/sdk/base/common/j;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/common/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/common/j;

.field public static final enum b:Lcom/sigmob/sdk/base/common/j;

.field public static final enum c:Lcom/sigmob/sdk/base/common/j;

.field public static final enum d:Lcom/sigmob/sdk/base/common/j;

.field public static final enum e:Lcom/sigmob/sdk/base/common/j;

.field public static final enum f:Lcom/sigmob/sdk/base/common/j;

.field public static final enum g:Lcom/sigmob/sdk/base/common/j;

.field public static final enum h:Lcom/sigmob/sdk/base/common/j;

.field private static final synthetic j:[Lcom/sigmob/sdk/base/common/j;


# instance fields
.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/sigmob/sdk/base/common/j;

    const-string v1, "CreativeTypeVideo_Tar"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/sdk/base/common/j;->a:Lcom/sigmob/sdk/base/common/j;

    new-instance v1, Lcom/sigmob/sdk/base/common/j;

    const-string v4, "CreativeTypeImage"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Lcom/sigmob/sdk/base/common/j;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/sdk/base/common/j;->b:Lcom/sigmob/sdk/base/common/j;

    new-instance v4, Lcom/sigmob/sdk/base/common/j;

    const-string v6, "CreativeTypeVideo_Html_Snippet"

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-direct {v4, v6, v7, v8}, Lcom/sigmob/sdk/base/common/j;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sigmob/sdk/base/common/j;->c:Lcom/sigmob/sdk/base/common/j;

    new-instance v6, Lcom/sigmob/sdk/base/common/j;

    const-string v9, "CreativeTypeVideo_Tar_Companion"

    const/4 v10, 0x5

    invoke-direct {v6, v9, v5, v10}, Lcom/sigmob/sdk/base/common/j;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/j;

    new-instance v9, Lcom/sigmob/sdk/base/common/j;

    const-string v11, "CreativeTypeVideo_transparent_html"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v8, v12}, Lcom/sigmob/sdk/base/common/j;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sigmob/sdk/base/common/j;->e:Lcom/sigmob/sdk/base/common/j;

    new-instance v11, Lcom/sigmob/sdk/base/common/j;

    const-string v13, "CreativeTypeVideo_EndCardURL"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14}, Lcom/sigmob/sdk/base/common/j;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sigmob/sdk/base/common/j;->f:Lcom/sigmob/sdk/base/common/j;

    new-instance v13, Lcom/sigmob/sdk/base/common/j;

    const-string v15, "CreativeTypeSplashVideo"

    const/16 v10, 0x8

    invoke-direct {v13, v15, v12, v10}, Lcom/sigmob/sdk/base/common/j;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sigmob/sdk/base/common/j;->g:Lcom/sigmob/sdk/base/common/j;

    new-instance v15, Lcom/sigmob/sdk/base/common/j;

    const-string v12, "CreativeTypeMRAID"

    const/16 v8, 0x9

    invoke-direct {v15, v12, v14, v8}, Lcom/sigmob/sdk/base/common/j;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/sigmob/sdk/base/common/j;->h:Lcom/sigmob/sdk/base/common/j;

    new-array v8, v10, [Lcom/sigmob/sdk/base/common/j;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v7

    aput-object v6, v8, v5

    const/4 v0, 0x4

    aput-object v9, v8, v0

    const/4 v0, 0x5

    aput-object v11, v8, v0

    const/4 v0, 0x6

    aput-object v13, v8, v0

    aput-object v15, v8, v14

    sput-object v8, Lcom/sigmob/sdk/base/common/j;->j:[Lcom/sigmob/sdk/base/common/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sigmob/sdk/base/common/j;->i:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/j;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/common/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/common/j;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/common/j;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/j;->j:[Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/common/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/common/j;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/common/j;->i:I

    return v0
.end method
