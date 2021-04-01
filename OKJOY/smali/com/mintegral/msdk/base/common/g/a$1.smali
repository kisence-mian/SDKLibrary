.class final Lcom/mintegral/msdk/base/common/g/a$1;
.super Lcom/mintegral/msdk/base/common/e/d/b;
.source "ReportTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/common/g/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/common/g/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/common/g/a;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/g/a$1;->a:Lcom/mintegral/msdk/base/common/g/a;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/e/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 53
    const-string v0, "ReportTask"

    invoke-static {v0, p1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 47
    const-string v0, "ReportTask"

    invoke-static {v0, p1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
