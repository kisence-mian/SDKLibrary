.class Lcom/bytedance/sdk/openadsdk/core/g$b;
.super Landroid/database/AbstractCursor;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/g;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g$b;->a:Lcom/bytedance/sdk/openadsdk/core/g;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g;Lcom/bytedance/sdk/openadsdk/core/g$1;)V
    .registers 3

    .line 350
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/g$b;-><init>(Lcom/bytedance/sdk/openadsdk/core/g;)V

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .line 358
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public getDouble(I)D
    .registers 4

    .line 388
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 2

    .line 383
    const/4 p1, 0x0

    return p1
.end method

.method public getInt(I)I
    .registers 2

    .line 373
    const/4 p1, 0x0

    return p1
.end method

.method public getLong(I)J
    .registers 4

    .line 378
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 2

    .line 368
    const/4 p1, 0x0

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 2

    .line 363
    const/4 p1, 0x0

    return-object p1
.end method

.method public isNull(I)Z
    .registers 2

    .line 393
    const/4 p1, 0x1

    return p1
.end method
