.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "DMLibManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:J

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)V
    .registers 2

    .line 1301
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->f:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    .line 1302
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    .line 1304
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1306
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->f:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    .line 1307
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->a:Ljava/lang/String;

    .line 1308
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->b:J

    .line 1309
    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->c:J

    .line 1310
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->d:Ljava/lang/String;

    .line 1311
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->e:Ljava/lang/String;

    .line 1312
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 3

    .line 1319
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->b:J

    .line 1320
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 1315
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->a:Ljava/lang/String;

    .line 1316
    return-void
.end method

.method public b(J)V
    .registers 3

    .line 1323
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->c:J

    .line 1324
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 1327
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->d:Ljava/lang/String;

    .line 1328
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 1331
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->e:Ljava/lang/String;

    .line 1332
    return-void
.end method

.method public run()V
    .registers 11

    .line 1337
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->f:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->l()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->f:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->b:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->c:J

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->d:Ljava/lang/String;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->e:Ljava/lang/String;

    invoke-interface/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->executeAppDownloadCallback(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    .line 1340
    goto :goto_22

    .line 1338
    :catchall_1a
    move-exception v0

    .line 1339
    const-string v1, "DMLibManager"

    const-string v2, "executeRewardVideoCallback execute throw Exception : "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1341
    :goto_22
    return-void
.end method
