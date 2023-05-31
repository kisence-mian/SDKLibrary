.class Lcom/tencent/smtt/sdk/bf;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/smtt/export/external/DexLoader;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/export/external/DexLoader;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/bf;->a:Lcom/tencent/smtt/export/external/DexLoader;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/bf;->a:Lcom/tencent/smtt/export/external/DexLoader;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bf;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bf;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.utils.TbsVideoUtilsProxy"

    new-array v2, v6, [Ljava/lang/Class;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/smtt/export/external/DexLoader;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bf;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.utils.TbsVideoUtilsProxy"

    const-string v3, "getCurWDPDecodeType"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v6

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    const-string v0, ""

    goto :goto_2e
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bf;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bf;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.utils.TbsVideoUtilsProxy"

    new-array v2, v6, [Ljava/lang/Class;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/smtt/export/external/DexLoader;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bf;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.utils.TbsVideoUtilsProxy"

    const-string v3, "deleteVideoCache"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-void
.end method
