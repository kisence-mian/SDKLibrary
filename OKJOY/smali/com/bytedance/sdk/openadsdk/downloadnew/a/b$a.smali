.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;
.super Ljava/lang/Object;
.source "DMLibManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;
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

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V
    .registers 2

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->f:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->f:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->a:Ljava/lang/String;

    .line 1059
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->b:J

    .line 1060
    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->c:J

    .line 1061
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->d:Ljava/lang/String;

    .line 1062
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->e:Ljava/lang/String;

    .line 1063
    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 4

    .prologue
    .line 1070
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->b:J

    .line 1071
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->a:Ljava/lang/String;

    .line 1067
    return-void
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 1074
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->c:J

    .line 1075
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->d:Ljava/lang/String;

    .line 1079
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->e:Ljava/lang/String;

    .line 1083
    return-void
.end method

.method public run()V
    .registers 11

    .prologue
    .line 1088
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->f:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->l()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->f:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->b:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->c:J

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->d:Ljava/lang/String;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->e:Ljava/lang/String;

    invoke-interface/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/IListenerManager;->executeAppDownloadCallback(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1a

    .line 1092
    :goto_19
    return-void

    .line 1089
    :catch_1a
    move-exception v0

    .line 1090
    const-string v1, "DMLibManager"

    const-string v2, "executeRewardVideoCallback execute throw Exception : "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method
