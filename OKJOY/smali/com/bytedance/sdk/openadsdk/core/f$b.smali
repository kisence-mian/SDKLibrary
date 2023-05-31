.class Lcom/bytedance/sdk/openadsdk/core/f$b;
.super Landroid/database/AbstractCursor;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f;)V
    .registers 2

    .prologue
    .line 350
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f$b;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f;Lcom/bytedance/sdk/openadsdk/core/f$1;)V
    .registers 3

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f$b;-><init>(Lcom/bytedance/sdk/openadsdk/core/f;)V

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 358
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public getDouble(I)D
    .registers 4

    .prologue
    .line 388
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .registers 3

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .registers 4

    .prologue
    .line 378
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 3

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull(I)Z
    .registers 3

    .prologue
    .line 393
    const/4 v0, 0x1

    return v0
.end method
