.class public Lcom/tencent/smtt/sdk/TbsVideoUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/smtt/sdk/bf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a:Lcom/tencent/smtt/sdk/bf;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 5

    const-class v1, Lcom/tencent/smtt/sdk/TbsVideoUtils;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a:Lcom/tencent/smtt/sdk/bf;

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/smtt/sdk/o;->a(Z)Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;ZZ)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/smtt/sdk/o;->a(Z)Lcom/tencent/smtt/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/bh;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/bh;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    :cond_21
    if-eqz v0, :cond_2a

    new-instance v2, Lcom/tencent/smtt/sdk/bf;

    invoke-direct {v2, v0}, Lcom/tencent/smtt/sdk/bf;-><init>(Lcom/tencent/smtt/export/external/DexLoader;)V

    sput-object v2, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a:Lcom/tencent/smtt/sdk/bf;

    :cond_2a
    monitor-exit v1

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public static deleteVideoCache(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a:Lcom/tencent/smtt/sdk/bf;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a:Lcom/tencent/smtt/sdk/bf;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/smtt/sdk/bf;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public static getCurWDPDecodeType(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a:Lcom/tencent/smtt/sdk/bf;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/tencent/smtt/sdk/TbsVideoUtils;->a:Lcom/tencent/smtt/sdk/bf;

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bf;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    const-string v0, ""

    goto :goto_d
.end method
