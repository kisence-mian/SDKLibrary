.class final Lcom/mintegral/msdk/base/common/e/b$13;
.super Lcom/mintegral/msdk/base/common/e/d/b;
.source "ReportController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/common/e/b;->a(Lcom/mintegral/msdk/base/entity/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/entity/o;

.field final synthetic b:Lcom/mintegral/msdk/base/common/e/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/common/e/b;Lcom/mintegral/msdk/base/entity/o;)V
    .registers 3

    .prologue
    .line 263
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/e/b$13;->b:Lcom/mintegral/msdk/base/common/e/b;

    iput-object p2, p0, Lcom/mintegral/msdk/base/common/e/b$13;->a:Lcom/mintegral/msdk/base/entity/o;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/e/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 282
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 267
    sget-object v0, Lcom/mintegral/msdk/base/common/e/b;->a:Ljava/lang/String;

    const-string v1, "report success"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :try_start_7
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/b$13;->a:Lcom/mintegral/msdk/base/entity/o;

    if-eqz v0, :cond_26

    .line 271
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/b$13;->a:Lcom/mintegral/msdk/base/entity/o;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/o;->e()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/e/b$13;->b:Lcom/mintegral/msdk/base/common/e/b;

    invoke-static {v1}, Lcom/mintegral/msdk/base/common/e/b;->a(Lcom/mintegral/msdk/base/common/e/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/t;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/t;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/b/t;->a(Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_27

    .line 277
    :cond_26
    :goto_26
    return-void

    :catch_27
    move-exception v0

    goto :goto_26
.end method
